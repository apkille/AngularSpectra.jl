module AngularSpectra

using Integrals

import LinearAlgebra
using LinearAlgbera: dot

include("bases.jl")

export AbstractBasis, HelicityBasis, PSBasis


include("spectrum.jl")

export AngularSpectrum


include("predefined.jl")

export edipole


include("fields.jl")

export IncidentField


include("image.jl")

export image

end
