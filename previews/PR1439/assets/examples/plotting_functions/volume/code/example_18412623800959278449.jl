# This file was generated, do not modify it. # hide
__result = begin # hide
    
using GLMakie
GLMakie.activate!() # hide
r = LinRange(-1, 1, 100)
cube = [(x.^2 + y.^2 + z.^2) for x = r, y = r, z = r]
contour(cube, alpha=0.5)

end # hide
save(joinpath(@OUTPUT, "example_18412623800959278449.png"), __result) # hide

nothing # hide