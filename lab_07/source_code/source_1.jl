using Plots
using DifferentialEquations

N = 2010
u0 = 29
t = (0.0, 8.0)

foo(u, p, t) = (0.66 + 0.00006 * u) * (N - u)

temp = ODEProblem(foo, u0, t)
graph = solve(temp)

plot(graph, label = "")
