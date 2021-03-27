using Plots
using DifferentialEquations

N = 2010
u0 = 29
t = (0.0, 0.006)

foo(u, p, t) = (0.000066 + 0.6 * u) * (N - u)

temp = ODEProblem(foo, u0, t)
graph = solve(temp)

plot(graph, label = "")
