#import "@preview/zero:0.5.0" as zero: num, zi

#set page(paper: "us-letter", margin: 0.5in)
#set text(size: 12pt)
#set par(leading: 0.90em)

#let Ns-m2 = zi.declare("N s/m^2")
#let Ns-m4 = zi.declare("N s/m^4")

= Classical Mechanics Equation Sheet 1

#v(0.25in)

#show: rest => columns(2, rest)

== Chapter 1 Newton's Laws of Motion

- Position
  - $arrow(r) = x hat(x) + y hat(y) + z hat(z)$ (Cartesian)
  - $arrow(r) = rho hat(rho) + z hat(z)$ (Cylindrical)
  - $arrow(r) = r hat(r)$ (Spherical)
- Velocity
  - $arrow(v) = dot(arrow(r))$
- Acceleration
  - $arrow(a) = dot.double(arrow(r))$
- Rotating Basis Vectors
  - $dot(hat(rho)) = dot(phi.alt) hat(phi.alt)$
  - $dot(hat(phi.alt)) = -dot(phi.alt) hat(rho)$
  - $dot(hat(theta)) = -dot(theta) hat(r) + cos(theta) dot(phi.alt) hat(phi.alt)$
  - $dot(hat(r)) = dot(theta) hat(theta) + sin(theta) dot(phi.alt) hat(phi.alt)$
- Newton's First Law
  - In the absence of forces, a particle moves with constant velocity $arrow(v)$
  - Newton's laws only hold in inertial frames
- Newton's Second Law
  - $arrow(F) = m arrow(a)$
  - $arrow(F) = dot(arrow(p))$
- Newton's Third Law
  - $arrow(F)_(12) = -arrow(F)_(21)$
- System of $N$ Particles
  - $arrow(P) = sum arrow(p)_alpha$
  - $arrow(F)^"ext" = dot(arrow(P))$
  - $arrow(F)^"ext" = M dot.double(arrow(R))$
- Relative Velocity
  - $arrow(v)_"AC" = arrow(v)_"AB" + arrow(v)_"BC"$

== Chapter 2 Projectiles and Charged Particles

- Drag
  - $f = -f(v) hat(v)$
  - $f(v) = f_"lin" + f_"quad"$
  - $f_"lin" = b v$
  - $f_"quad" = c v^2$
- Spherical projectile with diameter $D$
  - $b = beta D$
  - $c = gamma D^2$
  - $beta = #Ns-m2[1.6e-4]$ (air at STP)
  - $gamma = #Ns-m4[0.25]$ (air at STP)
- Magnetic force
  - $arrow(F) = q arrow(v) times arrow(B)$

== Chapter 3 Momentum and Angular Momentum

- Conservation of Momentum
  - If $arrow(F)^"ext" = 0$, then $arrow(P) = "const."$
- Rockets
  - $"thrust" = - dot(m) v_"ex"$
  - $m dot(v) = -dot(m) v_"ex" + F^"ext"$
- Center of Mass
  - $arrow(R) = 1/M sum m_alpha arrow(r)_alpha $
  - $M = sum m_alpha$
- Angular Momentum
  - $arrow(l) = arrow(r) times arrow(p)$
  - $dot(arrow(l)) = arrow(r) times arrow(F) = arrow(Gamma)$
  - $L = sum arrow(l)_alpha$
  - $dot(arrow(L)) = arrow(Gamma)^"ext"$
  - $dot(arrow(L)) = arrow(Gamma)^"ext"$ (about CM)
- Conservation of Angular Momentum
  - If $arrow(Gamma)^"ext" = 0$, then $arrow(L) = "const."$
- Moment of Inertia
  - $I = sum m_alpha rho_alpha^2$
  - $L_z = I omega$ (rigid body rotating about fixed axis, taken to be the $z$ axis)

== Chapter 4 Energy

- Kinetic Energy
  - $T = 1/2 m v^2$
  - $T = 1/2 M v^2 + 1/2 I omega^2$ (rigid body)
- Work-KE Theorem
  - $Delta T = T_2 - T_1 = integral_1^2 arrow(F) dot d arrow(r) = W(1 arrow 2)$
- Potential Energy
  - $U(arrow(r)) = -W(arrow(r)_0 arrow arrow(r)) = -integral_(arrow(r)_0)^(arrow(r)) arrow(F)(arrow(r)') dot d arrow(r)'$
  - $arrow(F) = -arrow(gradient) U$
  - $arrow(gradient) times arrow(F) = 0$
- Mechanical Energy
  - $E = T + U$
  - $Delta E = W_"nc"$
  - If $W_"nc" = 0$, then $E = "const."$
  - $-arrow(gradient)_alpha U = ("net force on particle" alpha)$
- Elastic Collision
  - $T_"in" = T_"fin"$
- 1D Conservative System
  - $T = 1/2 m dot(s)^2$
  - $dot(s)(s) = plus.minus sqrt(2/m) sqrt(E - U(s))$
  - $d t = (d s)/dot(s)$
  - $m dot.double(s) = -(d U)/(d s)$
- Central Forces
  - $arrow(F)(arrow(r)) = f(arrow(r)) hat(r)$
  - $f(arrow(r)) = f(r)$ #sym.arrow.l.r Conservative Central Force

== Chapter 5 Oscillations

- Damped Oscillation
  - $m dot.double(x) + b dot(x) + k x = 0$
  - $dot.double(x) + 2 beta dot(x) + omega_0^2 x = 0$
  - $omega_0^2 = k/m$
  - $beta = b/(2 m)$
- No Damping ($beta = 0$)
  - $x(t) = B_1 cos(omega_0 t) + B_2 sin(omega_0 t)$
- Underdamping ($beta < omega_0$)
  - $x(t) = A e^(-beta t) cos(omega_1 t - delta)$
  - $omega_1 = sqrt(omega_0^2 - beta^2)$
- Overdamping ($beta > omega_0$)
  - $x(t) = C_1 e^(r_1 t) + C_2 e^(r_2 t)$
  - $r_1 = -beta + sqrt(beta^2 - omega_0^2)$
  - $r_2 = -beta - sqrt(beta^2 - omega_0^2)$
- Critical Damping ($beta = omega_0$)
  - $x(t) = (C_1 + C_2 t) e^(-beta t)$
- Driven Damped Oscillation
  - $m dot.double(x) + b dot(x) + k x = F(t)$
  - $dot.double(x) + 2 beta dot(x) + omega_0^2 x = f(t)$
  - $f(t) = F(t) / m$
  - $x(t) = x_"p" + x_"h"$
- Sinusoidal Driving Force
  - $f(t) = f_0 cos(omega t)$
  - $x_"p" = A cos(omega t - delta)$
  - $A^2 = f_0^2 / ((omega_0^2 - omega^2)^2 + 4 beta^2 omega^2$
  - $delta = arctan((2 beta omega)/(omega_0^2 - omega^2))$
  - $omega_2 = sqrt(omega_0^2 - 2 beta^2)$ (value for $omega$ to maximize $A$)
  - $"FWHM" approx 2 beta$ (full width at half maximum)
  - $Q = omega_0 / (2 beta)$ (quality factor)

== Chapter 6 Calculus of Variations

- General Integral (Two Variables)
  - $S = integral_(u_1)^(u_2) f[x(u), x'(u), y(u), y'(u), u] d u$
- Euler-Lagrange Equations (Two Variables)
  - $(partial f)/(partial x) = d/(d u) (partial f)/(partial x')$
  - $(partial f)/(partial y) = d/(d u) (partial f)/(partial y')$

== Chapter 7 Lagrange's Equations

- Hamilton's Principle
  - Particle follows the path between two points that makes the action integral stationary
  - $S = integral_(t_1)^(t_2) cal(L) d t$
- $cal(L) = T - U$
- $(partial cal(L))/(partial q_i) = d/(d t) (partial cal(L))/(partial dot(q)_i)$
- Generalized Momentum
  - $p_i = (partial cal(L))/(partial dot(q)_i)$
- Hamiltonian
  - $cal(H) = sum p_i dot(q)_i - cal(L)$
  - If $(partial cal(L))/(partial t) = 0$, then $cal(H) = "const."$
  - If the generalized coordinates are natural, then $cal(H) = T + U$
