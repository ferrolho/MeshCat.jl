using Test
using LinearAlgebra: UniformScaling
using MeshCat
using GeometryBasics
using CoordinateTransformations
using Colors
using MeshIO, FileIO
using Rotations

include("util.jl")

@testset "MeshCat" begin
    include("video_rendering.jl")
    include("paths.jl")
    include("visualizer.jl")
    include("notebook.jl")
    include("scenes.jl")
    include("wait.jl")
end

module ModuleTest
    # Test for any https://github.com/JuliaLang/julia/issues/21653
    # related issues when MeshCat is included in another module
    using MeshCat
end
