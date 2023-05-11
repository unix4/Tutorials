import Data.List
import System.IO


primeNumbers = [3,5,7,11]

morePrime = primeNumbers ++ [13,17,19,23,29]

favNums = 2 : 7 : 21 : 66 :[] -- Combine numbers into a single list

multList = [[3,5,7], [11,13,17]]

morePrimes2 = 2 : morePrime

lenPrime = length morePrimes2

revPrime = reverse morePrimes2

isListEmpty = null morePrimes2

secondPrime = morePrimes2 !! 1 -- Get second item of list

firstPrime = head morePrimes2

lastPrime = last morePrimes2

primeInit = init morePrimes2

test = [1,2,3]

testInit = init test -- Same as tail in Erlang

first3Primes = take 3 morePrimes2

removedPrimes = drop 3 morePrimes2

is7InList = 7 `elem` morePrimes2
is7OtherWay = elem 7 morePrimes2

maxPrime = maximum morePrimes2
minPrime = minimum morePrimes2

newList = [2,3,5]
prodPrimes = product newList

zeroToTen = [0..10]

evenList = [2,4..20]

letterList = ['A','C'..'Z']

infinPow10 = [10,20..]

many2s = take 10 (repeat 2)

many3s = replicate 10 3

cycleList = take 30 (cycle [1,2,3,4,5])

listTimes3 = [x * 3 | x <- [1..10], x * 3 <= 50]

divisBy9N13 = [x | x <- [1..500], x `mod` 13 == 0, x `mod` 9 == 0]

sortedList = sort [9,1,8,3,4,7,6]

sumOfLists = zipWith (+) [1,2,3,4,5] [6,7,8,9,10]

listBiggerThen5 = filter (>5) [4,5,6,7,8]

evensUpto20 = takeWhile (<=20) [2,4..]

multOfList = foldl (*) 2 [2,3,4,5]; -- foldl (left) foldr (right)
