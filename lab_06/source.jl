using Plots
using DifferentialEquations

alpha = 0.01
beta = 0.02

function foo(du, u, p, t)
    du[1] = -alpha * u[1]
    du[2] = alpha * u[1] - beta * u[2]
    du[3] = beta * u[2]
end

u0 = [4192, 82, 15]
t = (0.0, 800.0)

diff = ODEProblem(foo, u0, t)
tmp = solve(diff)

plot(tmp, label="")
