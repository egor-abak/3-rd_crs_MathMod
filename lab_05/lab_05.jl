using Plots
using DifferentialEquations

u0 = [4, 12]
t = (0, 20)

function foo(du, u, p, t)
    du[1] = -0.71u[1] + 0.046u[1]*u[2]
    du[2] = 0.64u[2] - 0.017u[1]*u[2]
end

tmp = solve(ODEProblem(foo, u0, t), saveat = 0.1)

getX(u) = u[1]
getY(u) = u[2]

plot(getX.(tmp.u), getY.(tmp.u))
