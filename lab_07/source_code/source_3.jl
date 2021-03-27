using Plots
using DifferentialEquations

N = 2010
u0 = 29
t = (0.0, 0.2)

foo(u, p, t) = (0.66 * t + 0.6 * t * u) * (N - u)

temp = ODEProblem(foo, u0, t)
graph = solve(temp)

plot(graph, label = "")
