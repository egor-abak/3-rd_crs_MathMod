using Plots
using DifferentialEquations

M_01 = 6.4
M_02 = 4.1
p_cr = 20
N = 40
q = 1
t1 = 20
t2 = 15
p1 = 7
p2 = 9.5

a1 = p_cr / (t1^2 * p1^2 * N * q)
a2 = p_cr / (t2^2 * p2^2 * N * q)
b = p_cr / (t1^2 * p1^2 * t2^2 * p2^2 * N * q)
c1 = (p_cr - p1) / (t1 * p1)
c2 = (p_cr - p2) / (t2 * p2)

function foo(du, u, p, t)
    du[1] = u[1] - b/c1 * u[1] * u[2] - a1/c1 * u[1]^2
    du[2] = c1/c2 * u[2] - (b/c1 + 0.00031) * u[1] * u[2] - a2/c1 * u[2]^2
end

syst = ODEProblem(foo, [M_01, M_02], (0.0, 30.0))
res = solve(syst)

plot(res, xlabel = "θ", label = ["Фирма 1" "Фирма 2"])
