# This file was generated, do not modify it. # hide
__result = begin # hide
    
using GLMakie # hide
r = LinRange(-1, 1, 100) # hide
cube = [(x.^2 + y.^2 + z.^2) for x = r, y = r, z = r] # hide
cube_with_holes = cube .* (cube .> 1.4)
volume(cube_with_holes, algorithm = :iso, isorange = 0.05, isovalue = 1.7)

end # hide
save(joinpath(@OUTPUT, "example_15881660400419937974.png"), __result) # hide

nothing # hide