#import "@preview/zero:0.5.0" as zero: num, zi

#set page(paper: "us-letter", margin: 0.5in)
#set text(size: 12pt)
#set par(leading: 0.90em)

= Classical Mechanics Equation Sheet 2

#v(0.25in)

#show: rest => columns(2, rest)

== Chapter 8 Two-Body Central-Force Problems

- CM and Relative Coordinates
  - $M = m_1 + m_2$
  - $mu = (m_1 m_2)/M$
  - $arrow(R) = (m_1 arrow(r)_1 + m_2 arrow(r)_2) / M$
  - $arrow(r) = arrow(r)_1 - arrow(r)_2$
  - $arrow(r)_1 = arrow(R) + m_2/M arrow(r)$
  - $arrow(r)_2 = arrow(R) - m_1/M arrow(r)$
  - $T = 1/2 M dot(arrow(R))^2 + 1/2 mu dot(arrow(r))^2$
- Kepler Orbits
  - $r(phi.alt) = c / (1 + epsilon.alt cos(phi.alt))$
  - $c = l^2 / (gamma mu)$
  - $E = (gamma^2 mu)/(2 l^2) (epsilon.alt^2 - 1)$
  - $a = c/(1 - epsilon.alt^2)$
  - $b = c / sqrt(1 - epsilon.alt^2)$
  - $gamma = G M m$
  - $F(r) = -gamma / r^2$
  - $U(r) = -gamma / r$
  - $tau^2 = (4 pi^2 mu)/gamma a^3$

== Chapter 9 Mechanics in Noninertial Frames

- Inertial Force
  - $arrow(F)_"inertial" = -m arrow(A)$
- Tides
  - $arrow(F)_"tid" = -G M_m m (hat(d)/d^2 - hat(d)_0/d_0^2)$ #v(0.05in)
  - $U_"tid" = -G M_m m (1/d + x/d_0^2)$
- Angular Velocity Vector
  - $arrow(omega) = omega hat(u)$
  - $arrow(v) = arrow(omega) times arrow(r)$
  - $(d hat(e))/(d t) = arrow(omega) times hat(e)$
  - $arrow(omega)_31 = arrow(omega)_32 + arrow(omega)_21$
- Time Derivatives in a Rotating Frame
  - $((d arrow(Q))/(d t))_(cal(S)_0) = ((d arrow(Q))/(d t))_cal(S) + arrow(Omega) times arrow(Q)$
- Newton's Second Law in a Rotating Frame
  - $m dot.double(arrow(r)) = arrow(F) + arrow(F)_"cor" + arrow(F)_"cf"$
  - $arrow(F)_"cor" = 2 m dot(arrow(r)) times arrow(Omega)$
  - $arrow(F)_"cf" = m (arrow(Omega) times arrow(r)) times arrow(Omega) = m Omega^2 rho hat(rho)$
- Free-Fall Acceleration
  - $arrow(g) = arrow(g)_0 + Omega^2 R sin(theta) hat(rho)$

== Chapter 10 Rotational Motion of Rigid Bodies

#let components = ($x$, $y$, $z$)
#let inertia_tensor_rows = for i in components {
  (for j in components {
    ($I_(#i #j)$,)
  },)
}

- Properties of Center of Mass
  - $arrow(F)^"ext" = M dot.double(arrow(R))$
  - $arrow(r)'_alpha = arrow(r)_alpha - arrow(R)$
  - $arrow(L) = arrow(R) times arrow(P) + sum arrow(r)'_alpha times m_alpha dot(arrow(r))'_alpha$
  - $arrow(L) = arrow(L)_"orb" + arrow(L)_"spin"$
  - $dot(arrow(L))_"orb" = arrow(R) times arrow(F)^"ext"$
  - $dot(arrow(L))_"spin" = arrow(Gamma)^"ext" ("about CM")$
  - $T = 1/2 M dot(arrow(R))^2 + 1/2 sum m_alpha dot(arrow(r))'_alpha^2$
- Rotation About Any Axis
  - $arrow(L) = II arrow(omega)$
  - $II = #math.mat(..inertia_tensor_rows)$
  - $II = tilde(II)$
  - $I_(x x) = sum m_alpha (y_alpha^2 + z_alpha^2)$
  - $I_(x y) = -sum m_alpha x_alpha y_alpha$
  - $T = 1/2 arrow(omega) dot arrow(L)$
- Principal Axes of Inertia
  - $arrow(L) = lambda arrow(omega)$
  - $(II - lambda bb(1)) arrow(omega) = 0$
  - $det(II - lambda bb(1)) = 0$
  - $II' = mat(lambda_1, 0, 0; 0, lambda_2, 0; 0, 0, lambda_3)$
- Euler's Equations
  - $dot(arrow(L)) + arrow(omega) times arrow(L) = arrow(Gamma)$
  - $lambda_1 dot(omega)_1 - (lambda_2 - lambda_3) omega_2 omega_3 = Gamma_1$
  - $lambda_2 dot(omega)_2 - (lambda_3 - lambda_1) omega_3 omega_1 = Gamma_2$
  - $lambda_3 dot(omega)_3 - (lambda_1 - lambda_2) omega_1 omega_2 = Gamma_3$
- Generalized Parallel Axis Theorem
  - Pivot point displaced by $Delta arrow(r) = (Delta x, Delta y, Delta z)$ from the CM
  - $I_(x x) = I_(x x)^"cm" + M (Delta y^2 + Delta z^2)$
  - $I_(y z) = I_(y z)^"cm" - M Delta y Delta z$

== Chapter 11 Coupled Oscillators and Normal Modes

- Equations of Motion
  - $MM dot.double(arrow(q)) = - KK arrow(q)$
- Normal Modes
  - $arrow(q)(t) = "Re"[arrow(z)(t)]$
  - $arrow(z)(t) = arrow(a) e^(i omega t)$
  - $(KK - omega^2 MM) arrow(a) = 0$
  - $det(KK - omega^2 MM) = 0$
