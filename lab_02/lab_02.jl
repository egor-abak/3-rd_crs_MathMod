using Plots

k = 16.9
dv = 4.7

x1 = k / (dv - 1)
x2 = k / (dv + 1)
theta1 = 0
theta2 = -pi

dir = 7pi/4
t0 = 0:0.15:45
f(arg) = dir

integral(x) = log(x)*sqrt(dv^2 - 1)
c1 = theta1 - integral(x1)
c2 = theta2 - integral(x2)

f1(arg) = theta1
g1(arg) = integral(arg) + c1
f2(arg) = theta2
g2(arg) = integral(arg) + c2

str_mov_1 = x1:0.15:k
rnd_mov_1 = x1:0.15:45

str_mov_2 = x2:0.15:k
rnd_mov_2 = x2:0.15:45

plot(f1.(str_mov_1), str_mov_1, color = :red)
plot!(g1.(rnd_mov_1), rnd_mov_1, color = :red)
plot1 = plot!(f.(t0), t0, color = :blue, proj = :polar)

plot(f2.(str_mov_2), str_mov_2, color = :brown)
plot!(g2.(rnd_mov_2), rnd_mov_2, color = :brown)
plot2 = plot!(f.(t0), t0, color = :blue, proj = :polar)

r1 = exp((dir - c1)/sqrt(dv^2 - 1))
r2 = exp((dir - c2)/sqrt(dv^2 - 1))

plot(plot1, plot2)
