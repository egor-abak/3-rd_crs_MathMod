using Plots
using DifferentialEquations

forces = [61100, 45400]
t = (0, 1.5)

function regular(du, u, p, t)
    du[1] = -0.41 * u[1] - 0.89 * u[2] + sin(t + 7) + 1
    du[2] = -0.52 * u[1] - 0.61 * u[2] + cos(t + 6) + 1
end
function mixed(du, u, p, t)
    du[1] = -0.37 * u[1] - 0.675 * u[2] + abs(2 * sin(t))
    du[2] = -0.432 * u[1] * u[2] - 0.42 * u[2] + cos(t) + 2
end

graph1 = plot(solve(ODEProblem(regular, forces, t)))
graph2 = plot(solve(ODEProblem(mixed, forces, t), saveat = 0.15))

plot(graph2)
