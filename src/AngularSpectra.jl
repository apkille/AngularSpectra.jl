module AngularSpectra

include("bases.jl")

export AbstractBasis, HelicityBasis, PSBasis


include("spectrum.jl")

export AngularSpectrum


include("predefined.jl")

export edipole


include("fields.jl")

export IncidentField


end
