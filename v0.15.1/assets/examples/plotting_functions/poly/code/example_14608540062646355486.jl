# This file was generated, do not modify it. # hide
__result = begin # hide
  
using CairoMakie
CairoMakie.activate!() # hide
using Makie.GeometryBasics
Makie.inline!(true) # hide

f = Figure()
Axis(f[1, 1])

poly!(Point2f0[(0, 0), (2, 0), (3, 1), (1, 1)], color = :red, strokecolor = :black, strokewidth = 1)

f

  end # hide
  save(joinpath(@OUTPUT, "example_14608540062646355486.png"), __result) # hide
  
  nothing # hide