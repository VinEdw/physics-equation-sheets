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

