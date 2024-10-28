#set text(14pt)

Pro $x,y > 1$ dokažte: $ x / sqrt(y^2 - 1) + y / sqrt(x^2 - 1) >= 2 $

#line(length: 100%)

Využijeme AG nerovnosti, která říká, že pro libovolnou dvojici kladných čísel $a, b$ platí:

$
  (a+b) / 2 &>= sqrt(a b) \
  a+b &>= 2 dot sqrt(a b) \
$

Tohle už začíná připomínat naše zadání, zkusme dosadit následovně: $a = x / sqrt(y^2 - 1), b = y / sqrt(x^2 - 1)$.

$ x / sqrt(y^2 - 1) + y / sqrt(x^2 - 1) >= 2 dot sqrt(a b) $

Z toho vyplývá, že pokud je $sqrt(a b) <= 1$, tak jsme dokázali, že zadání platí.

---

Je teda $sqrt(a b) <=1$?

$
  sqrt(a b) &<= 1 \
  a b &<= 1 \
  (x dot y) / sqrt((x^2-1) dot (y^2-1)) &<= 1 \
  x dot y &<= sqrt((x^2-1)(y^2-1)) \
  x^2 dot y^2 &<= (x^2-1)(y^2-1) \
  x^2 + y^2 &<= 1 \
$

ne není .... bruh moment

---

To vypadá dobře, ale ješte se musíme přesvědčit že splňujeme podmínku AG nerovnosti, t.j. $a,b$ jsou kladná čísla:

$ x / sqrt(y^2 - 1) > 0 and y / sqrt(x^2 - 1) > 0 $
