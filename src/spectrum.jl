mutable struct AngularSpectrum{F,B,A}
    f::F
    basis::B
    axis::A
end
"""
    AngularSpectrum(incfield, basis, axis = [0.0, 0.0, 1.0])

Angular spectrum of wave field.
"""
AngularSpectrum(f::F, basis::B) where {F,B} = AngularSpectrum(f, basis, [0.0, 0.0, 1.0])

"""
    rotate!(as::AngularSpectrum, rotaxis, angle)

In-place rotation of angular spectrum.
"""
function rotate!(as::AngularSpectrum, rotaxis::S, angle::T) where {S,T}
    dirv = as.axis
    newaxis = dirv*cos(angle) + cross(rotaxis, dirv)*sin(angle) + axis*(dot(rotaxis, dirv))*(1-cos(angle))
    as.axis = newaxis
end