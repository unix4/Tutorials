import Data.List
import System.IO

-- do = Chain all commands together
main = do
    putStrLn "What's your name"
    name <- getLine
    putStrLn ("Hello " ++ name)

addMe :: Int -> Int-> Int
-- funcName param1 param2 = operation (returned value)
addMe x y = x + y

sumMe x y = x + y

addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x,y) (x2, y2) = (x + x2, y + y2)

whatAge :: Int -> String
whatAge 16 = "You can drive"
whatAge 18 = "You can vote"
whatAge 21 = "You're an adult"
-- whatAge x = "Nothing Important"
whatAge _ = "Nothing Important"
