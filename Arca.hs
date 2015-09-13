-- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE

module Arca where

import Data.List

-- 1.a

null' x
  | x == [] = True
  | otherwise = False

--pembatas

take' _ [] = []
take' 0 (x:xs) = []
take' n (x:xs) = x : take' (n-1) xs

--pembatas

drop' n (x:xs)
   | n == 0 = xs
   | n < 0 = (x:xs)
   | n > 0 = drop' (n-1) xs


--pembatas

fst' (a,b)
  | a == 0 = a
  | a > 0 = a
  | a < 0 = a

--pembatas

snd' (a,b)
  | a >= 0 = b
  | a < 0 =b

--pembatas

map' (n) [] = []
map' (n) [x] = [(n) x]
map' (n) (x:xs) = map' (n) [x] ++ map' (n) (xs)

-- map' (+2) [1,2,3,4]
-- map' (+2) [1] ++ map' (+2) [2,3,4] = [3,4,5,6]
-- map' (+2) [2] ++ map' (+2) [3,4] = [4,5,6]
-- map' (+2) [3] ++ map' (+2) [4] = [5,6]

--pembatas

filter' (n) [] = []
filter' (n) (x:xs)
  | (n x) == True = x : filter' (n) xs
  | (n x) == False = filter' (n) xs

--pembatas

delete' n (x:xs)
  | n == x = (xs)
  | n /= x = x:delete' n (xs)

-- delete' 3 (1,2,3,4)
-- 1:delete' 3 [2,3,4]
-- 2:delete' 3 [3,4] = [2,4]

--pembatas

deleteAll' n [] = []
deleteAll' n (x:xs)
  | n == x = deleteAll' n xs
  | n /= x = x:deleteAll' n (xs)

--pembatas

foldl'' (m) n [] = n
foldl'' (m) n [x] = (m) n x
foldl'' (m) n (x:xs) = (m) x (foldl'' (m) n xs)

-- foldl'' (*) 2 [2,3,4]
-- foldl'' (*) 2 [3,4]
-- foldl'' (*) 6 [4]
-- foldl'' (*) 24 2


--pembatas

foldl1'' (m) [x] = x
foldl1'' (m) (x:xs) = (m) x (foldl1'' (m) xs)


--pembatas

zip' [_] [] = []
zip' [a] [b] = [(a,b)]
zip' (x:xs) (y:ys) = (x,y) : zip' (xs) (ys)

--pembatas

zipWith' (m) [] [] = []
zipWith' (m) (x:xs) [] = []
zipWith' (m) [] (x:xs) = []
zipWith' (m) [a] [b] = [(m) a b]
zipWith' (m) (x:xs) (y:ys) = (m) x y :zipWith' (m) (xs) (ys)


--pembatas

nth' (x:xs) 0 = x
nth' (x:xs) n = nth' (xs) (n-1)

--pembatas

scanl'' (m) n [] = [n]
scanl'' (m) n (x:xs) = [n] ++ scanl'' (m) ((m) n x) xs

--pembatas
-- this is my joke :P

scanl1'' (n) [] =[]
scanl1'' (n) (x:y:xs) = [x] ++ scanl1' (n) ((n) x y) xs
  where scanl1' = scanl''

--pembatas

elem' n [x]
  | n == x = True
  | n /= x = False

--pembatas

notElem' n [x]
  | n == x = False
  | n /= x = True

--pembatas

head' (x:xs) = x

--pembatas

length' [] = 0
length' (x:xs) = 1 + (length' xs)

--pembatas

reverse' [] = []
reverse' [a,b,c] = [c,b,a]
reverse' [x] = [x]
reverse' (x:xs) = reverse' xs ++ [x]

--pembatas

last' [x,y] = y
last' (x:xs) = last' (xs)

--pembatas

tail' (x:xs) = (xs)

--pembatas

init' [x,y,z] = [x,y]
init' (x:xs) = x :init' (xs)

--pembatas

max' a b
  | a > b = a
  | a < b = b

--pembatas

min' a b
  | a < b = a
  | a > b = b

--pembatas

concat' [(x:xs),(y:ys)] = (x:xs) ++ (y:ys)

--pembatas

intersperse' _ [] = []
intersperse' _ [x] = [x]
intersperse' m (x:xs) = x :m:intersperse' m xs

-- intersperse 0 [1..5]
-- 1 : 0 : intersperse 0 [2..5]
-- 2 : 0 : intersperse 0 [3..5]
-- 3 : 0 : intersperse 0 [4,5]
-- 4 : 0 : intersperse 0 [5]

--pembatas

intercalate' _ [(x:xs)] = (x:xs)

--pembatas

and' [] = True
and' [True] = True
and' [False] = False

--pembatas

or' [] = False
or' [True] = True
or' [False] = False

--pembatas

zip3' [] [] [] = []
zip3' [] [] [_] = []
zip3' [] [_] [_] = []
zip3' [a,b] [c,d] [e,f] = [(a,c,e),(b,d,f)]
zip3' (x:xs) (y:ys) (z:zs) = (x,y,z) :zip3' (xs) (ys) (zs)

--pembatas

sum' [] = 0
sum' (x:xs) = x + sum' (xs)

-- sum' [1,2,3]
-- 1 + sum' [2,3] = 6
-- 2 + sum' [3] = 5
-- 3 + sum' [] = 3

--pembatas

product' [] = 1
product' (x:xs) = x * product' (xs)

-- product' [2,3,4]
-- 2 * product' [3,4] = 24
-- 3 * product' [4] = 12
-- 4 * product' [] = 4
--pembatas

words' x = x

--pembatas

lines' x = x


--pembatas

unlines' [] = ""
unlines' [""] = ""
unlines' [x] = x ++ "\n"
unlines' [x,y] = x ++ "\n" ++ y ++ "\n"
unlines' (x:y) = x ++ "" ++ unlines' y

--pembatas

unwords' [] = ""
unwords' [""] = ""
unwords' ["x"] = "x"
unwords' (x:y) = x ++ "" ++ unwords' y

--pembatas

takeWhile' (n) [] = []
takeWhile' (n) (x:xs)
  | (n x) == True = x : takeWhile' (n) xs
  | (n x) == False = takeWhile' (n) xs


--pembatas

dropWhile' (n) [] = []
dropWhile' (n) (x:xs)
  | (n x) == True = dropWhile' (n) xs
  | (n x) == False = (x:xs)

--pembatas

concatMap' (n) [] = []
concatMap' (n) (x:xs) = (n) x ++ concatMap' (n) xs

--pembatas

all' (n) [] = True
all' (n) (x:xs)
  | (n x) == False = False
  | (n x) == True = all' (n) xs

--pembatas

any' (n) [] = False
any' (n) (x:xs)
  | (n x) == True = True
  | (n x) == False = any' (n) xs

--pembatas

insert' n [] = [n]
insert' n (x:xs)
  | x > n = n : (x:xs)
  | x < n = x : insert' n xs

--pembatas

zipWith3' (m) [] [] [] = []
zipWith3' (m) (x:xs) [] [] = []
zipWith3' (m) [] (x:xs) [] = []
zipWith3' (m) [] [] (x:xs) = []
zipWith3' (m) [a] [b] [c] = [(m) a b c]
zipWith3' (m) (x:xs) (y:ys) (z:zs) = (m) x y z : zipWith3' (m) (xs) (ys) (zs)

--pembatas

-- 1.b

nub' x = x

--pembatas

sort' x = x

--pembatas

minimum' x = x

--pembatas

maximum' x = x

--pembatas

inits' x = x

--pembatas

tails' x = x

--pembatas

union' x = x

--pembatas

intersect' x = x

--pembatas

group' x = x

--pembatas

splitAt' x = x

--pembatas

partition' x = x

--pembatas

replicate' x = x

--pembatas
-- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE
