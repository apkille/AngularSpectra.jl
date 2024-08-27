function edipole end

function edipole(basis::PSBasis, moment::M, dist::D, p::P; 
                epsilon = 1.0, lda = 1.0) where {M,D,P}

    if length(moment) != 3
        throw(ArgumentError("You inputted a dipole moment vector that is not of dimension three."))
    end

    Ap = im*(2*pi/lda)/(8*pi^2 * epsilon)
    As = Ap*(2*pi/lda)

    function f(u, p)
        
        if dist > 0
            pfield = (u, p) -> Ap * ((1/sqrt(u[1]^2 + u[2]^2)) * (u[1]*moment[1] + u[2]*moment[2])
                        - (1/u[3]) * sqrt(u[1]^2 + u[2]^2)*moment[3])
        elseif dist < 0
            pfield = (u, p) -> Ap * ((-1/sqrt(u[1]^2 + u[2]^2)) * (u[1]*moment[1] + u[2]*moment[2])
                        - (1/u[3]) * sqrt(u[1]^2 + u[2]^2)*moment[3])
        else
            throw(ArgumentError("You evaluated the angular spectrum at the position of the dipole, hence attaining an undefined value."))
        end

        sfield = (u, p) -> As/(u[3]*sqrt(u[1]^2 + u[2]^2)) * (-u[2]*moment[1] + u[1]*moment[2])

        return [pfield(u,p), sfield(u,p)]
    end

    return AngularSpectrum(f, basis, dist)
end

