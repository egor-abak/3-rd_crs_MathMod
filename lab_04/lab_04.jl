using DifferentialEquations
using Plots

u0 = [0, -1.2]
t = (0, 51)
dt = 0.05

function f1(du, u, p, t)
	du[1] = u[2]
	du[2] = -3.5*u[1]
end
function f2(du, u, p, t)
	du[1] = u[2]
	du[2] = -11*du[1] - 11*u[1]
end
function f3(du, u, p, t)
	du[1] = u[2]
	du[2] = -12*du[1] - u[1] + 2*cos(0.5t)
end

res1 = solve(ODEProblem(f1, u0, t) saveat = dt)
res2 = solve(ODEProblem(f2, u0, t) saveat = dt)
res3 = solve(ODEProblem(f3, u0, t) saveat = dt)

gr1 = plot(plotX.(res1.u)), plotY.(res1.u))
gr2 = plot(plotX.(res2.u)), plotY.(res2.u))
gr3 = plot(plotX.(res3.u)), plotY.(res3.u))

plot(gr1, gr2, gr3)
