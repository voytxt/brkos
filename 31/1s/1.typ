#set text(12pt)

= Lemma

Odmocnina z libovolného přirozeného čísla je vždy buď iracionální, nebo přirozené číslo.

= Důkaz

$sqrt(n^2-1)$ je pro všechna přirozená $n >= 1$ iracionální číslo.

Proveďme důkaz sporem a řekněme, že odmocina vyjde přirozeně (viz Lemma), tedy platí: $sqrt(n^2 - 1) = k$, kde $k in NN$.

$
  &=> n^2-1 = k^2 \
  &=> (n + k)(n - k) = 1 \
  &=> (n+k) = 1 space and space (n-k) = 1 \
  &=> (n = 1) space and space (k = 0)
$

*Spor:* $k in NN$, ale jediné řešení je $k = 0$.

= Řešení

Podle zadání máme dokázat, že neexistuje pravoúhlý trojúhelník s celočíselnými stranami, kde jedna odvěsna dělí odvěsnu druhou, nebo odvěsna dělí přeponu. Přepona odvěsnu nikdy dělit nemůže, protože je delší. My se takový trojúhelník pokusíme najít - řekněme, že takový trojúhelník existuje a pro jeho strany $a,b,c$ platí následující:

$
  a,b,c,p,q in NN \
  a^2 + b^2 = c^2 \
  (a = p dot b) or (c = q dot b)
$

== 1. Pokud $a=p dot b$

$
  a^2 + b^2 &= c^2 \
  (p dot b)^2 + b^2 &= c^2 \
  sqrt(p+1) &= c / b \
$

Levá strana musí být podle lemmy přirozená, nebo iracionální. Pravá strana musí být racionální. Tím pádem tahle rovnost platí pouze když $(c=q dot b)$.

== 2. Pokud $c=q dot b$

$
  a^2 + b^2 &= c^2 \
  a^2 + b^2 &= (q dot b)^2 \
  sqrt(q^2 - 1) &= a / b \
$

Podle důkazu musí být levá strana iracionální, pravá strana je ale racionální, takže rovnost nemá řešení.

První rovnost platí pouze když druhá rovnost platí, ta ale neplatí nikdy, takže příklad nemá řešení a takový trojúhelník opravdu neexistuje.