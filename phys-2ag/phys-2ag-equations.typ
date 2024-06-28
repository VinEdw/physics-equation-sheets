#import "@preview/cetz:0.2.2"
#set par(leading: 1.00em)

= PHYS 2AG Equations

Having the equations is a start.
The next step is understanding what the equations mean, when to use them, and how to use them.

#let units(body) = {
  $space upright(body)$
}

#show: rest => columns(2, rest)

== SI Prefixes

#table(
  columns: 3,
  table.header([Name], [Symbol], [Factor]),
  [Quetta], [Q ], $10^(30)$ ,
  [Ronna ], [R ], $10^(27)$ ,
  [Yotta ], [Y ], $10^(24)$ ,
  [Zetta ], [Z ], $10^(21)$ ,
  [Exa   ], [E ], $10^(18)$ ,
  [Peta  ], [P ], $10^(15)$ ,
  [Tera  ], [T ], $10^(12)$ ,
  [Giga  ], [G ], $10^(9)$  ,
  [Mega  ], [M ], $10^(6)$  ,
  [Kilo  ], [k ], $10^(3)$  ,
  [Hecto ], [h ], $10^(2)$  ,
  [Deka  ], [da], $10^(1)$  ,
  [\-    ], [\-], $10^(0)$  ,
  [Deci  ], [d ], $10^(-1)$ ,
  [Centi ], [c ], $10^(-2)$ ,
  [Milli ], [m ], $10^(-3)$ ,
  [Micro ], [μ ], $10^(-6)$ ,
  [Nano  ], [n ], $10^(-9)$ ,
  [Pico  ], [p ], $10^(-12)$,
  [Femto ], [f ], $10^(-15)$,
  [Atto  ], [a ], $10^(-18)$,
  [Zepto ], [z ], $10^(-21)$,
  [Yocto ], [y ], $10^(-24)$,
  [Ronto ], [r ], $10^(-27)$,
  [Quecto], [q ], $10^(-30)$,
)

== Constants

- $g = 9.8 units(m/s^2)$
- $G = 6.674 times 10^(-11)  units((N dot m^2) / "kg"^2)$

== Geometry

- Angle addition postulate
  - $theta_1 + theta_2 = theta_3$
  #cetz.canvas({
    import cetz
    import cetz.draw: *
    // Draw three lines
    line((0, 0), (1, 3), name: "a")
    line((0, 0), (4, 1), name: "b")
    line((0, 0), (3, 2), name: "c")
    // Draw the angles between them
    cetz.angle.angle((0, 0), "a.end", "c.end", label: $theta_1$, radius: 0.75, label-radius: 180%, stroke: red)
    cetz.angle.angle((0, 0), "b.end", "c.end", label: $theta_2$, radius: 1, label-radius: 180%, stroke: blue)
    cetz.angle.angle((0, 0), "a.end", "b.end", label: $theta_3$, radius: 2.5, label-radius: 120%, stroke: green)
  })
- Complementary angles
  - $theta_1 + theta_2 = 90 degree$
  #cetz.canvas({
    import cetz
    import cetz.draw: *
    // Draw two lines that form a right angle
    line((0, 0), (0, 2), name: "a")
    line((0, 0), (2, 0), name: "b")
    // Draw a line cutting through
    line((0, 0), (1, 2), name: "c")
    // Label the angles
    cetz.angle.angle((0, 0), "a.end", "c.end", label: $theta_1$, radius: 1, label-radius: 150%, stroke: red)
    cetz.angle.angle((0, 0), "b.end", "c.end", label: $theta_2$, radius: 0.75, label-radius: 150%, stroke: blue)
  })
- Supplementary angles
  - $theta_1 + theta_2 = 180 degree$
  #cetz.canvas({
    import cetz
    import cetz.draw: *
    // Draw two lines that form a right angle
    line((0, 0), (-2, 0), name: "a")
    line((0, 0), (2, 0), name: "b")
    // Draw a line cutting through
    line((0, 0), (1, 2), name: "c")
    // Label the angles
    cetz.angle.angle((0, 0), "a.end", "c.end", label: $theta_1$, radius: 1, label-radius: 150%, stroke: red)
    cetz.angle.angle((0, 0), "b.end", "c.end", label: $theta_2$, radius: 0.75, label-radius: 150%, stroke: blue)
  })
- Vertical angles
  #cetz.canvas({
    import cetz
    import cetz.draw: *
    // Draw two lines that intersect
    set-style(mark: (symbol: ">"))
    line((-2, -1), (2, 1), name: "a")
    line((-2, 1), (2, -1), name: "b")
    // Draw the top and bottom angles
    set-style(mark: (symbol: none))
    cetz.angle.angle((0, 0), "a.start", "b.end", label: $theta$, radius: 1)
    cetz.angle.angle((0, 0), "b.start", "a.end", label: $theta$, radius: 1)
  })
- Parallel lines cut by transversal
  #cetz.canvas({
  import cetz
  import cetz.draw: *
  // Draw parallel lines cut by transversal
  set-style(mark: (symbol: ">"))
  line((0, 0), (4, 0), name: "a")
  line((0, 2), (4, 2), name: "b")
  line((1, -1), (3, 3), name: "c")
  // Find the intersection points
  intersections("i", "c", "a", "b")
  // Draw first set of angle labels
  set-style(mark: (symbol: none))
  set-style(angle: (stroke: red))
  for (i, a, b) in (
      (0, "a.start", "c.end"),
      (0, "a.end", "c.start"),
      (1, "b.end", "c.start"),
      (1, "b.start", "c.end"),
    ) {
      cetz.angle.angle("i." + str(i), a, b, label: $theta_1$, radius: 0.75, label-radius: 150%)
  }
  // Draw second set of angle labels
  set-style(angle: (stroke: blue))
  for (i, a, b) in (
      (0, "a.end", "c.end"),
      (0, "a.start", "c.start"),
      (1, "b.start", "c.start"),
      (1, "b.end", "c.end"),
    ) {
      cetz.angle.angle("i." + str(i), a, b, label: $theta_2$, radius: 0.5, label-radius: 150%)
  }
  })
- Triangles
  - $A = 1/2 b h$
  #cetz.canvas({
    import cetz
    import cetz.draw: *
    // Set the points
    let A = (0, 0)
    let B = (1, 2)
    let C = (3, 0)
    // Draw a triangle
    line(A, B, name: "AB")
    line(B, C, name: "BC")
    line(C, A, name: "CA")
    // Draw a dashed height line
    line((B.at(0), 0), B, name: "height", stroke: (dash: "dashed"))
    // Label the sides
    content("CA.mid", anchor: "north", padding: 0.2, $b$)
    content("height.mid", anchor: "west", padding: 0.2, $h$)
  })
  - $theta_1 + theta_2 + theta_3 = 180 degree$
  - $A/sin(theta_1) = B/sin(theta_2) = C/sin(theta_3)$ (law of sines)
  - $C^2 = A^2 + B^2 - 2 A B cos(theta_3)$ (law of cosines)
  #cetz.canvas({
    import cetz
    import cetz.draw: *
    // Set the points
    let A = (0, 0)
    let B = (1, 2)
    let C = (3, 0)
    // Draw a triangle
    line(A, B, name: "AB")
    line(B, C, name: "BC")
    line(C, A, name: "CA")
    // Label the angles
    let i = 1
    let points = (A, B, C)
    while i <= 3 {
      cetz.angle.angle(..points, label: $theta_#i$, label-radius: 160%)
      let last_point = points.remove(0)
      points.push(last_point)
      i += 1
    }
    // Label the edges
    content("BC.mid", anchor: "south-west", padding: 0.2, $A$)
    content("CA.mid", anchor: "north", padding: 0.2, $B$)
    content("AB.mid", anchor: "south-east", padding: 0.2, $C$)
  })
- Right triangles
  - $A^2 + B^2 = C^2$
  - $theta_1 + theta_2 = 90 degree$
  - $sin(theta_1) = cos(theta_2) = B/C$
  - $cos(theta_1) = sin(theta_2) = A/C$
  - $tan(theta_1) = 1/tan(theta_2) = B/A$
  #cetz.canvas({
    import cetz
    import cetz.draw: *
    // Set the points
    let A = (0, 0)
    let B = (3, 4)
    let C = (3, 0)
    // Draw a triangle
    line(A, B, name: "C")
    line(B, C, name: "B")
    line(C, A, name: "A")
    // Label the edges
    content("C.mid", anchor: "south-east", padding: 0.2, $C$)
    content("B.mid", anchor: "west", padding: 0.2, $B$)
    content("A.mid", anchor: "north", padding: 0.2, $A$)
    // Label the angles
    cetz.angle.angle(A, B, C, label: $theta_1$, label-radius: 160%)
    cetz.angle.angle(B, A, C, label: $theta_2$, label-radius: 160%)
    cetz.angle.right-angle(C, A, B, label: none)
  })
- Rectangles
  - $A = b h$
  - $P = 2b + 2h$
  #cetz.canvas({
    import cetz
    import cetz.draw: *
    // Draw a rectangle
    rect((0, 0), (2, 1), name: "rect")
    // Label the edges
    content("rect.south", anchor: "north", padding: 0.2, $b$)
    content("rect.east", anchor: "west", padding: 0.2, $h$)
  })
- Trapezoid
  - $A = 1/2 (b_1 + b_2) h$
  #cetz.canvas({
    import cetz
    import cetz.draw: *
    // Draw a trapezoid
    let A = (0, 0)
    let B = (1, 2)
    let C = (3, 2)
    let D = (4, 0)
    line(A, B)
    line(B, C, name: "b1")
    line(C, D)
    line(D, A, name: "b2")
    // Add a dashed height line
    line((B.at(0), 0), B, name: "height", stroke: (dash: "dashed"))
    // Label the edges
    content("b1.mid", anchor: "south", padding: 0.2, $b_1$)
    content("b2.mid", anchor: "north", padding: 0.2, $b_2$)
    content("height.mid", anchor: "west", padding: 0.2, $h$)
  })
- Inclined plane
  - Inclined planes are typically described by their angle above horizontal
  - The tilted coordinate axes are rotated that angle relative to the standard coordinate axes
  #cetz.canvas({
    import cetz
    import cetz.draw: *
    // Draw the incline and ground
    line((0, 0), (4, 3), name: "incline")
    line((0, 0), (4, 0), name: "floor")
    // Make the lines dashed
    set-style(line: (stroke: (dash: "dashed")))
    set-style(angle: (mark: (end: ">")))
    // Label the angle with respect to horizontal
    cetz.angle.angle((0, 0), "floor.end", "incline.end", label: $theta$, radius: 1, label-radius: 130%)
    // Draw the standard axes
    set-style(line: (stroke: (paint: blue)))
    line((0, 1.5), (4, 1.5), name: "x-standard")
    line((2, 0), (2, 3), name: "y-standard")
    // Draw the rotated axes
    set-style(line: (stroke: (paint: red)))
    line((0, 0), (4, 3), name: "x-rotated")
    line((3.125, 0), (0.875, 3), name: "y-rotated")
    // Label the angle between the axes
    let intersection = (2, 1.5)
    for axis in ("x", "y") {
      for side in ("start", "end") {
        let a = axis + "-standard." + side
        let b = axis + "-rotated." + side
        cetz.angle.angle(intersection, a, b, label: $theta$, radius: 1, label-radius: 130%)
      }
    }
  })
- Circles
  - $C = 2 pi r$
  - $A = pi r^2$
  #cetz.canvas({
    import cetz
    import cetz.draw: *
    circle((0, 0), radius: 1, name: "c")
    circle("c.center", radius: 0.05, fill: black)
    line((0, 0), (1/calc.sqrt(2), 1/calc.sqrt(2)), name: "r", mark: (end: ">"))
    content("r.mid", anchor: "south-east", padding: 0.1, $r$)
  })
- Spheres
  - $A = 4 pi r^2$
  - $V = 4/3 pi r^3$

== Algebra

- Quadratic formula
  - $a x^2 + b x + c = 0$
  - $x = (-b plus.minus sqrt(b^2 - 4 a c))/(2a)$
- Properties of logarithms
  - $log_b (a) = p <==> b^p = a$
  - $log_b (a c) = log_b (a) + log_b (c)$
  - $log_b (a/c) = log_b (a) - log_b (c)$
  - $log_b (a^p) = p log_b (a)$
- Sum and difference trig identities
  - $sin(A plus.minus B) = sin(A)cos(B) plus.minus cos(A)sin(B)$
  - $cos(A plus.minus B) = cos(A)cos(B) minus.plus sin(A)sin(B)$

== Kinematics

- Note: $x$ can be replaced with $y$ depending on the direction being analyzed
- $v_"avg" = d / (Delta t)$ (average speed)
- $v_"avg,x" = (Delta x) / (Delta t)$ (average velocity, x-component)
- $a_"avg,x" = (Delta v_x) / (Delta t)$
- If $a = "constant"$:
  - $v_x = v_(0x) + a_x t$
  - $x = x_0 + v_(0x) t + 1/2 a_x t^2$
  - $v_x^2 = v_(0x)^2 + 2 a_x (x - x_0)$
- Knows and Unknowns
  - #box(grid(
    columns: 2,
    align: center,
    inset: 5pt,
    grid.cell(colspan: 2, underline[Point 1 #sym.arrow.r Point 2]),
    $x_0$   ,$y_0$,
    $x$     ,$y$,
    $v_(0x)$,$v_(0y)$,
    $v_x$   ,$v_y$,
    $a_x$   ,$a_y$,
    grid.cell(colspan: 2, $t$),
  ))

== Forces

- Newton's laws of motion
  1. $arrow(a) = 0 <==> Sigma arrow(F) = 0$
  2. $Sigma arrow(F) = m arrow(a)$
  3. $arrow(F)_(b "on" a) = - arrow(F)_(a "on" b)$
- Gravitational force ($F_g$)
  - $F_g = m g$
  - $F_g = G (m_1 m_2)/r^2$
  - Points straight down towards the center of the Earth
- Normal force ($n$, $N$, or $F_n$)
  - No general formula
  - Pushes perpendicular to surfaces in contact
- Applied force ($F_"app"$)
  - Push or pull in a specified direction
- Tension ($T$ or $F_T$)
  - No general formula
  - Pulls along rope/chain/cable
- Kinetic friction ($f_k$)
  - $f_k = mu_k n$
  - Acts opposite relative motion of surfaces
- Static friction ($f_s$)
  - $f_s <= mu_s n$
  - $f_(s,"max") = mu_s n$
  - Direction and magnitude change based on the situation
  - Acts when there is no relative motion between surfaces
  - Tries to stop relative motion between surfaces
- Spring force ($F_s$)
  - $F_s = k s$
  - Points in the direction opposite the squish or stretch
- Pivot force ($P$)
  - No general formula
  - Usually broken into $P_x$ and $P_y$
  - Force from pin that keeps attached object from translating away
- Free body diagram (FBD) reminders
  - Identify your system
  - Identify the direction of the acceleration
  - Identify the direction of the velocity
  - Choose a coordinate system
  - Draw all external forces acting on the system
  - Note the angle for any forces acting at an angle relative to the chosen axes
- Centripetal acceleration ($a_c$)
  - $a_c = v^2/r = r omega^2$
  - Points towards the center of the circular path

== Work and Energy

- Work ($W$)
  - Energy transferred via forces
  - $W = F d cos(theta)$
  #cetz.canvas({
    import cetz
    import cetz.draw: *
    // Draw two lines
    set-style(line: (mark: (end: ">")))
    line((0, 0), (1, 2), name: "F")
    line((0, 0), (3, 1), name: "d")
    // Draw the angle between them
    cetz.angle.angle((0, 0), "F.end", "d.end", label: $theta$, radius: 1, label-radius: 150%)
    // Label the lines
    content("F.end", anchor: "south", padding: 0.3, $arrow(F)$)
    content("d.end", anchor: "south", padding: 0.3, $arrow(d)$)
  })
- External heat ($Q_"ext"$)
  - Thermal energy transferred from the environment to/from the system
- Power ($P$)
  - $P = (Delta E)/(Delta T)$
- Kinetic energy ($K$)
  - Energy of motion
  - $K = 1/2 m v^2$
- Kinetic energy ($K_"rot"$)
  - Energy of rotational motion
  - $K = 1/2 I omega^2$
- Gravitational potential energy ($U_g$)
  - Energy due to position in a gravitational field
  - $U_g = m g h$
  - Make sure to choose a reference level
- Elastic potential energy ($U_s$)
  - Energy due to squishing/stretching a spring from its natural length
  - $U_g = 1/2 k s^2$
- Internal energy ($U_"int"$)
  - $Delta U_"th" = m c Delta T$ (due to temperature)
  - $Delta U_"p" = plus.minus m L$ (due to phase change)
    - All the substance must reach the phase change temperature before the transition occurs
    - Temperature remains constant until all the substance has undergone the phase change
- Sound energy ($U_"sound"$)
  - Energy of sound waves
- Conservation of energy
  - $E_i + W_"nc" + Q_"ext" = E_f$
  - $K_i + U_(g i) + U_(s i) + ... + W_"nc" + Q_"ext" = K_f + U_(g f) + U_(s f) + ... + Delta U_"int"$

== Momentum

- $arrow(p) = m arrow(v)$ (momentum)
- $arrow(J) = arrow(F)_"net,avg" Delta t = Delta arrow(p)$ (impulse-momentum theorem)
- Conservation of momentum
  - If $arrow(F)_"net" = 0$, then $p_i = p_f$
  - Applies to pretty much all collisions & explosions
- Collision types
  - Perfectly inelastic
    - "Sticky"
    - $v_(1f) = v_(2f) = ... = v_f$
  - Inelastic
    - In between perfectly inelastic and perfectly elastic
  - Perfectly elastic
    - "Bouncy"
    - $K_i = K_f$

== Rotational Kinematics

- Switching between linear (tangential) and angular quantities
  - Angles must be in radians
  - $s = r theta$
  - $v_t = r omega$
  - $a_t = r alpha$
- $omega_"avg" = (Delta theta) / (Delta t)$
- $alpha_"avg" = (Delta omega) / (Delta t)$
- If $alpha = "constant"$:
  - $omega = omega_0 + alpha t$
  - $x = x_0 + omega_0 t + 1/2 alpha t^2$
  - $omega^2 = omega_0^2 + 2 alpha (theta - theta_0)$

== Rotational Dynamics

- Torque ($tau$)
  - $tau = plus.minus F r sin(theta)$
  - $sin(theta) = sin(theta')$, so either angle can be used
  #cetz.canvas({
    import cetz
    import cetz.draw: *
    // Draw two lines
    set-style(line: (mark: (end: ">")))
    line((3, 1), (4, 3), name: "F")
    line((0, 0), (3, 1), name: "r")
    // Extend the r vector
    line((3, 1), (5, 5/3), name: "e", mark: none, stroke: (dash: "dashed"))
    // Label the angles between them
    cetz.angle.angle("r.end", "F.end", "r.start", label: $theta'$, radius: 0.5, label-radius: 150%)
    cetz.angle.angle("r.end", "F.end", "e.end", label: $theta$, radius: 0.75, label-radius: 150%)
    // Label the lines
    content("F.end", anchor: "south", padding: 0.3, $arrow(F)$)
    content("r.end", anchor: "north", padding: 0.3, $arrow(r)$)
  })
- $Sigma tau = I alpha$ (Newton's second law rotational)
- $I = Sigma m r^2$
  - Moment of inertia formulas are derived by breaking objects up into pieces, then adding up $m r^2$ for each piece
  - Implies that moments of inertia can add together
- $I = I_"cm" + M D^2$ (parallel axis theorem)
- When rolling without slipping, $v_"cm" = r omega$
- Rigid body diagram (RBD) reminders
  - Identify your system
  - Identify the direction of the acceleration or angular acceleration
  - Identify the direction of the velocity or angular velocity
  - Choose a coordinate system
  - Choose an axis of rotation (if it's not rotating)
  - Draw all external forces acting on the system at the location where they are acting
  - Note the angle for any forces acting at an angle relative to the chosen axes, or relative to a vector pointing from the pivot to where the force acts
  - Note how far each force is acting from the axis of rotation
- Angular momentum ($L$)
  - $L = m v r sin(theta)$ (point particle)
  - $sin(theta) = sin(theta')$, so either angle can be used
  #cetz.canvas({
    import cetz
    import cetz.draw: *
    // Draw two lines
    set-style(line: (mark: (end: ">")))
    line((3, 1), (4, 3), name: "v")
    line((0, 0), (3, 1), name: "r")
    // Extend the r vector
    line((3, 1), (5, 5/3), name: "e", mark: none, stroke: (dash: "dashed"))
    // Label the angles between them
    cetz.angle.angle("r.end", "v.end", "r.start", label: $theta'$, radius: 0.5, label-radius: 150%)
    cetz.angle.angle("r.end", "v.end", "e.end", label: $theta$, radius: 0.75, label-radius: 150%)
    // Label the lines
    content("v.end", anchor: "south", padding: 0.3, $arrow(v)$)
    content("r.end", anchor: "north", padding: 0.3, $arrow(r)$)
  })
  - $L = I omega$ (not universal, but works for most cases in the class)
  - $tau_"net,avg" Delta t = Delta L$

== Static Equilibrium

- If $arrow(a) = 0$ and $alpha = 0$:
  - $Sigma F_x = 0$
  - $Sigma F_y = 0$
  - $Sigma tau = 0$
- Since it is not rotating, any axis of rotation can be chosen for the purpose of calculating torques

== Simple Harmonic Motion

#cetz.canvas({
  import cetz
  import cetz.draw: *
  // Draw the wave plot
  cetz.plot.plot(size: (6, 4),
    name: "plot",
    axis-style: "school-book",
    x-label: $t$,
    y-label: $x$,
    x-tick-step: none,
    y-tick-step: none,
    {
      cetz.plot.add(domain: (0, 4 * calc.pi),
        t => (t, calc.cos(t)))
      cetz.plot.add-anchor("a", (0, 1))
      cetz.plot.add-anchor("b", (2 * calc.pi, 1))
      cetz.plot.add-anchor("c", (2 * calc.pi, 0))
  })
  // Label the period and amplitude
  set-style(mark: (symbol: ">"))
  line("plot.a", "plot.b", name: "T")
  content("T.mid", anchor: "south", padding: 0.2, $T$)
  line("plot.b", "plot.c", name: "A")
  content("A.mid", anchor: "west", padding: 0.1, $A$)
})

- Oscillation terms
  - Period ($T$)
  - Frequency ($f$)
  - Angular frequency ($omega$)
  - $T = 1/f$ or $f = 1/T$
  - $omega = (2 pi)/T = 2 pi f$
  - Amplitude ($A$)
- Mass on a spring
  - $omega = sqrt(k / m)$
- Simple pendulum
  - $omega = sqrt(g / L)$
  - Assumes $theta < ~15 degree$ so that $theta approx sin(theta)$
- Kinematics
  - $x(t) = A cos(omega t + phi.alt)$
  - $x_"max" = A$
  - $v(t) = -A omega sin(omega t + phi.alt)$
  - $v_"max" = A omega$
  - $a(t) = -A omega^2 cos(omega t + phi.alt)$
  - $a_"max" = A omega^2$

== Waves

#cetz.canvas({
  import cetz
  import cetz.draw: *
  // Draw the wave plot
  cetz.plot.plot(size: (6, 4),
    name: "plot",
    axis-style: "school-book",
    x-tick-step: none,
    y-tick-step: none,
    {
      cetz.plot.add(domain: (0, 4 * calc.pi),
        t => (t, calc.cos(t)))
      cetz.plot.add-anchor("a", (0, 1))
      cetz.plot.add-anchor("b", (2 * calc.pi, 1))
      cetz.plot.add-anchor("c", (2 * calc.pi, 0))
  })
  // Label the wavelength and amplitude
  set-style(mark: (symbol: ">"))
  line("plot.a", "plot.b", name: "lambda")
  content("lambda.mid", anchor: "south", padding: 0.2, $lambda$)
  line("plot.b", "plot.c", name: "A")
  content("A.mid", anchor: "west", padding: 0.1, $A$)
})

- $v = f lambda$
  - Wave speed depends on properties of the medium, not on wavelength and frequency
  - $v = sqrt(F_T/mu)$ (speed of wave in a string)
  - $v = (331.5 units(m/s)) + (0.6 units((m\/s)/degree.c)) T$ (speed of sound in air)
- Wave function
  - $y(x, t) = A cos(k x plus.minus omega t)$
    - Plus when moving in the $-x$ direction
    - Minus when moving in the $+x$ direction
  - Focus on a single point, $x = 0$, over time
    - $y(0, t) = A cos(plus.minus omega t)$
  - Focus on the shape of the wave at a single point in time, $t = 0$
    - $y(x, 0) = A cos(k x)$
  - Could add a phase angle $phi.alt$ inside the $cos()$ if needed
    - $y(x, t) = A cos(k x plus.minus omega t + phi.alt)$
- Intensity ($I$)
  - $I = P / A$
  - Can be total power divided by the total area spread over
  - Can be power delivered divided by the area of a detector
- Sound intensity level ($beta$)
  - $beta = (10 units(d B)) log(I/I_0)$
  - $I_0 = 10^(-12) units(W/m^2)$ (threshold of hearing)
  - $beta_2 - beta_1 = (10 units(d B)) log(I_2/I_1)$
- Doppler effect for sound
  - $f_o = f_s (v plus.minus v_o)/(v minus.plus v_s)$
  - $v$: speed of sound
  - $o$: observer
  - $s$: source
  - Use the upper sign if the observer/source is moving towards the other
  - Use the lower sign if the observer/source is moving away from the other

== Fluids

- $rho = m/V$ (density)
- $P = F/A$ (pressure)
- $P = P_0 + rho g h$ (pressure at a depth in a fluid)
- Buoyant force ($B$ or $F_B$)
  - $B = rho_"fluid" V_"displaced" g$
  - Points opposite $arrow(g)$
