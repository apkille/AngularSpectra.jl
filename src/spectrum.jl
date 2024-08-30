"""
    AngularSpectrum(basis, f)

Angular spectrum of wave field.
"""
struct AngularSpectrum{B,F}
    basis::B
    f::F
end