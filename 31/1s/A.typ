#import "@preview/cetz:0.2.2"

#set text(13pt)

#let rr = text(fill: blue, $r$)
#let ss = text(fill: red, $s$)
#let aa = text(fill: purple, $a$)
#let vv = text(fill: green, $v$)

Uvažujme kružnici $k$ o poloměru $r$ a na ní dva různé body $A, B$ které neleží naproti sobě. Pak se tečny ke $k$ v bodech $A, B$ protínají v bodě $X$. Ze znalosti délek $r, abs(A B)$ určete vzdálenost $abs(A X)$.

#line(length: 100%)

Na zjištění vzdálenosti $abs(A X)$ ($ss$) využijeme $triangle.t A X S$. Protože o něm známe spoustu informací, a to výšku ($vv = abs(A B)/2$), délku jedné strany ($rr$) a úhel ($angle.spheric S A X = 90 degree$, protože tečna je vždy kolmá na poloměr):

#align(
  center,
  cetz.canvas(
    length: 70pt,
    {
      let S = (0, 0)
      let X = (3, 0)

      cetz.draw.circle(S, name: "k")

      let A = (element: "k", point: X, solution: 1)
      let B = (element: "k", point: X, solution: 2)

      cetz.draw.line(S, A, stroke: blue, name: "r")
      cetz.draw.line(S, B)
      cetz.draw.line(A, B, stroke: none, name: "AB")
      cetz.draw.line(A, "AB.mid", stroke: green, name: "v")
      cetz.draw.line(A, X, stroke: red, name: "s")
      cetz.draw.line(B, X)
      cetz.draw.line(S, X, stroke: purple, name: "a")

      cetz.draw.content("k.south-west", anchor: "north-east", padding: .05, $ k $)
      cetz.draw.content(A, anchor: "south", padding: .1, $ A $)
      cetz.draw.content(B, anchor: "north", padding: .1, $ B $)
      cetz.draw.content(X, anchor: "west", padding: .1, $ X $)
      cetz.draw.content(S, anchor: "east", padding: .07, $ S $)
      cetz.draw.content("r.mid", anchor: "east", padding: .1, $ rr $)
      cetz.draw.content("s.mid", anchor: "south", padding: .1, $ ss $)
      cetz.draw.content("a.mid", anchor: "north", padding: .1, $ aa $)
      cetz.draw.content("v.mid", anchor: "west", padding: .07, $ vv $)
    },
  ),
)

Obsah pravoúhlého $triangle.t A X S$ se dá spočítat buď jako $S = 1/2 dot rr dot ss$ nebo jako $S = 1/2 dot aa dot vv $. Tím pádem platí $aa dot vv = rr dot ss$ a následně taky:

$ aa = (rr dot ss) / vv $

V našem pravoúhlém $triangle.t$ také samozřejmě platí Pythagotova věta:

$ aa = sqrt(rr^2 + ss^2) $

Z téhle dvojice vzorečků vyplývá následující rovnost:

$ (rr dot ss) / vv = sqrt(rr^2 + ss^2) $

Nyní pouze zbývá osamostatnit $ss$:

$
  rr^2 dot ss^2 &= rr^2 dot vv^2 + ss^2 dot vv^2 \
  ss^2 &= (rr^2 dot vv^2) / (rr^2 - vv^2) \
  ss &= (rr dot vv) / sqrt(rr^2 - vv^2) \
$

A máme finální vzoreček, kde $ss$ je vzdálenost $abs(A X)$, $rr$ je poloměr kružnice a $vv$ je $abs(A B) / 2$.
