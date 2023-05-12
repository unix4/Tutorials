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

data BaseballPlalyer = Pitcher 
                        | Catcher 
                        | Infielder
                        | Outfield
                    deriving Show

barryBonds :: BaseballPlalyer -> Bool
barryBonds Outfield = True

barryInOF = print(barryBonds Outfield)

data Customer = Customer String String Double
    deriving Show

tomSmith :: Customer 
tomSmith = Customer "Tom Smith" "123 Main" 20.50

getBalance :: Customer -> Double
getBalance (Customer _ _ b) = b

data RPS = Rock | Paper | Scissors

shoot :: RPS -> RPS -> String
shoot Paper Rock = "Paper Beats Rock"
shoot Rock Scissors = "Rock Beats Scissors"
shoot Scissors Paper = "Scissors Beat Paper"
shoot Scissors Rock = "Scissors Loses to Rock"
shoot Paper Scissors = "Paper Loses to Scissors"
shoot Rock Paper = "Rock Loses to Paper"
shoot _ _ = "Error"
