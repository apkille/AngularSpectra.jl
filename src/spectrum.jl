"""
    AngularSpectrum(incfield, basis, dist)

Angular spectrum of wave field.
"""
struct AngularSpectrum{F,B,D}
    f::F
    basis::B
    dist::D
end