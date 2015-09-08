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

map' x = x

--pembatas

filter' x = x

--pembatas

delete' x = x

--pembatas

deleteAll' x = x

--pembatas

foldl' x = x

--pembatas

foldl1' x = x

--pembatas

zip' x = x

--pembatas

zipWith' x = x

--pembatas

nth' x = x

--pembatas

scanl' x = x

--pembatas

scanl1' x = x

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

reverse' x = x

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

concat' x = x

--pembatas

intersperse' x = x

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

zip3' x = x

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

unlines' x = x

--pembatas

unwords' x = x

--pembatas

takeWhile' x = x

--pembatas

dropWhile' x = x

--pembatas

concatMap' x = x

--pembatas

all' x = x

--pembatas

any' x = x

--pembatas

insert' x = x

--pembatas

zipWith3' x = x

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
