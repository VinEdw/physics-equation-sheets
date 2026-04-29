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
  - $arrow(F)_"tid" = -G M_m m (hat(d)/d^2 - hat(d)_0/d_0^2)$  #v(0.05in)
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

