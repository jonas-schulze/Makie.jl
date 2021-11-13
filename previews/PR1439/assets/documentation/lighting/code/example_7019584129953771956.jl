# This file was generated, do not modify it. # hide
__result = begin # hide
  
using GLMakie
GLMakie.activate!() # hide
GLMakie.enable_SSAO[] = true
close(GLMakie.global_gl_screen()) # close any open screen

fig = Figure()
ssao = Makie.SSAO(radius = 5.0, blur = 3)
ax = LScene(fig[1, 1], scenekw = (ssao=ssao,))
# SSAO attributes are per scene
ax.scene.ssao.bias[] = 0.025

box = Rect3(Point3f(-0.5), Vec3f(1))
positions = [Point3f(x, y, rand()) for x in -5:5 for y in -5:5]
meshscatter!(ax, positions, marker=box, markersize=1, color=:lightblue, ssao=true)
fig

  end # hide
  save(joinpath(@OUTPUT, "example_7019584129953771956.png"), __result) # hide
  
  nothing # hide