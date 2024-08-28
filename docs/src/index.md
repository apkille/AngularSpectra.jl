# AngularSpectra.jl

```@meta
DocTestSetup = quote
    using AngularSpectra
end
```

A [Julia](https://julialang.org) package based in the angular spectrum method, a numerical approach to simulating waves in optics, acoustics, quantum mechanics, and gravitational physics.

## Installation

To install AngularSpectra.jl, start Julia and run the following command:

```julia
using Pkg
Pkg.add("https://github.com/apkille/AngularSpectra.jl")
```

## The Angular Spectrum Method

Any vector wave field $\mathbf{F}$ that is a solution of the wave equation can be written as a continuous distribution of plane waves, that is,

$$\mathbf{F}(\mathbf{r}) = \int \mathbf{A}(\mathbf{k}) e^{i\mathbf{k}\cdot \mathbf{r}} \,d\Omega_{\mathbf{k}},$$

where $\mathbf{A}$ is the *angular spectrum*, which is dependent on the wave vector $\mathbf{k}$, and $\Omega_{\mathbf{k}}$ is the solid-angle accessed by all possible plane wave orientations in $\mathbf{k}$-space. In other words, upon knowing how an arbitrary wave field can be decomposed into a linear combination of plane waves in momentum space, one can effectively compute the field at any point in real space with an inverse Fourier transform. This is a powerful formalism known as the angular spectrum method.

!!! info "Scalar Angular Spectrum Method"
    The above formalism applies to scalar wave fields as well. Simply put, one can replace the vector wave field with a scalar wave field, and likewise for the corresponding angular spectrum. Transforms are performed in the same manner.

AngularSpectra.jl is an interface for computing the angular spectrum of a wave field, hence providing a straightforward means of simulating various wave phenomena.