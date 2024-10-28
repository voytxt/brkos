#set text(15pt)

Kouma s Ňoumou dostali tabulku o rozměrech $n times n$, která byla vyplněna čísly následovně:

#align(
  center,
  table(
    columns: 4,
    $1$, $2$, $3$, $dots.c$,
    $2$, $2$, $3$, $dots.c$,
    $3$, $3$, $3$, $dots.c$,
    $dots.v$, $dots.v$, $dots.v$, $dots.down$,
  ),
)

Jaký je součet čísel v tabulce v závislosti na $n$? Výsledek zapište ve tvaru podílu dvou celých čísel.

#line(length: 100%)

Z obrázku se dá vyvodit, že součet všech čísel tabulky $n times n$ ($S_n$), se dá definovat jako:

$
  S_1 &= 1 \
  S_n &= S_(n-1) + n dot (2n - 1) \
$

// TODO: přepsat?
Kde $S_(n-1)$ je tabulka co do velikosti o jedna menší, $n$ je nové číslo, které musíme do tabulky přidat a $(2n - 1)$ je jeho počet (= kolik nových políček se nám v tabulce objeví).

Vzhledem k tomu, že naše rekurentní formule je polynom druhého stupně, tak obecný vzorec bude polynom stupně třetího (prostě o jedna vyšší).

$ S_n = a n^3 + b n^2 + c n + d $

Teď zbývá jednotlivé koeficienty ($a,b,c,d$) najít. To můžeme udělat pomocí soustavy rovnic. Budeme potřebovat 4 rovnice (protože máme 4 neznámé). Za $n$ si postupně dosadíme třeba $1,2,3,4$ a manuálně dopočítáme součet v tabulce. Pak už jen postupně řešíme soustavu.

#let num(n) = text(12pt, $quad (#n) quad$)

$
  S_1 =&& a + b + c + d &= 1 &num(1.1) \
  S_2 =&& 8a + 4b + 2c + d &= 7 &num(1.2) \
  S_3 =&& 27a + 9b + 3c + d &= 22 &num(1.3) \
  S_4 =&& 64a + 16b + 4c + d &= 50 &num(1.4) \
  \
  num(1.2 - 1.1)&& 7a + 3b + c &= 6 &num(2.1) \
  num(1.3 - 1.2)&& 19a + 5b + c &= 15 &num(2.2) \
  num(1.4 - 1.3)&& 37a + 7b + c &= 28 &num(2.3) \
  \
  num(2.2 - 2.1)&& 12a + 2b &= 9 &num(3.1) \
  num(2.3 - 2.2)&& 18a + 2b &= 13 &num(3.2) \
  \
  num(3.2 - 3.1)&& a &= 2 / 3 &num(4.1) \
$

$
  a &= 2 / 3 &num(4.1) \
  b &= (9 - 12a) / 2 = 1 / 2 &num(3.1) \
  c &= 6 - 7a - 3b = -1 / 6 &num(2.1) \
  d &= 1 - a - b - c = 0 &num(1.1) \
$

Super! Máme koeficienty, teď je dosadíme do vzorce, a pokusíme se povytýkat $n$ka: $4n^3+3n^2-n = n(4n^2+3n-1) = n(4(n+1)(n-1 / 4)) = n(n+1)(4n-1)$

$ S_n = 2 / 3n^3 + 1 / 2n^2 - 1 / 6n = (4n^3 + 3n^2 - n) / 6 = (n (n+1) (4n -1)) / 6 $