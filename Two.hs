module Two where

import Data.List

gaya m a = a * m
energi m c = m * c^2
usaha f s = f * s
bagi a b = a / b
jarak v t = v * t
tekanan f a = f / a
momentum a b = a * b
keliling pi r = pi * r^2
ek m v = 1/2 *m * v^2
mutlak x = if x >= 0 then x else (- x)
mutlak' x
  | x >= 0 = x
  | x < 0 = (-x)
fst' (a,b) = a
snd' (a,b) = b
