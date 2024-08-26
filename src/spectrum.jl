mutable struct AngularSpectrum{F,T}
    incfield::F
    pol::T
    focus::T
    dir::T
end

"""
    AngularSpectrum(incfield, pol, focus, dir = (0.0, 0.0, 1.0))

Angular spectrum of wave field.
"""
AngularSpectrum(incfield::F, pol::T, focus::T) where {F,T} = AngularSpectrum(incfield, pol, focus, (0.0, 0.0, 1.0))

"""
    rotate!(as::AngularSpectrum, axis, angle)

In-place rotation of angular spectrum.
"""
function rotate!(as::AngularSpectrum, axis::S, angle::T) where {S,T}
    dirv = as.dir
    rot = dirv*cos(angle) + cross(axis, dirv)*sin(angle) + axis*(dot(axis, dirv))*(1-cos(angle))
    as.dir = rot
end