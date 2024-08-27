# AngularSpectra.jl

```@meta
DocTestSetup = quote
    using AngularSpectra
end
```

A [Julia](https://julialang.org) package based in the scalar and vectorial angular spectrum method, a numerical approach to simulating waves in optics, acoustics, quantum mechanics, and gravitational physics.

## Installation

To install AngularSpectra.jl, start Julia and run the following command:

```
using Pkg; Pkg.add("https://github.com/apkille/AngularSpectra.jl")
```

## The Angular Spectrum Method

Any monochromatic vector wave field $\mathbf{F}$ at position $\mathbf{r}$ can be written as a continuous distribution of plane waves, that is,

$$\mathbf{F}(\mathbf{r}) = \int \mathbf{A}(\mathbf{k}) e^{i\mathbf{k}\cdot \mathbf{r}} \,d\Omega,$$

where $\mathbf{A}$ is the angular spectrum of the field that is dependent on the wave vector $\mathbf{k}$, and $\Omega$ is the solid-angle accessed by all possible plane wave orientations. In other words, upon knowing how an arbitrary wave field can be decomposed into a linear combination of plane waves, one can effectively compute the field at any point in real space with a Fourier transform. This is a powerful formalism known as the angular spectrum method.

AngularSpectra.jl is an interface for computing the angular spectrum $\mathbf{A}(\mathbf{k})$ of a wave field, hence providing a straightforward means of simulating various wave phenomena.