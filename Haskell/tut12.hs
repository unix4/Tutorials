import Data.List
import System.IO

dbl1To10 = map (\x -> x * 2) [1..10] -- Lambda function

doubleEvenNumber y =
    if (y `mod` 2 /= 0)
        then y
        else y * 2

getClass :: Int -> String

getClass n = case n of
    5 -> "Go to Kindergarten"
    6 -> "Go to elementary school"
    _ -> "Go away"

