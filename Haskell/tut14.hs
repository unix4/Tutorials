import Data.List
import System.IO

data Shape = Circle Float Float Float | Rectangle Float Float Float Float
    deriving Show

area ::Shape -> Float

area(Circle _ _ r) = pi * r ^ 2
area(Rectangle x y x2 y2) = (abs $ x2 - x ) * (abs $ y2 - y)

sumValue = putStrLn (show (1 + 2))

sumValue2 = putStrLn . show $ 1 + 2

areaOfCircle = area (Circle 50 60 20)
areaOfRect = area $ Rectangle 10 10 100 100


data Employee = Employee {name :: String,
                            position :: String,
                            idNum :: Int 
                            } deriving (Eq, Show)

samSmith = Employee {name = "Sam Smith", position = "Manager", idNum = 1000}
pamMarx = Employee {name = "Pam Marx", position = "Sales", idNum = 1001}

isSamPam = samSmith == pamMarx


data ShirtSize = S | M | L

instance Eq ShirtSize where 
    S == S = True
    M == M = True
    L == L = True
    _ == _ = False

instance Show ShirtSize where
    show S = "Small"
    show M = "Medium"
    show L = "Large"

smallVail = S `elem` [S, M, L]

theSize = show S


class MyEq a where
    areEqual :: a -> a -> Bool 

instance MyEq ShirtSize where
    areEqual S S = True
    areEqual M M = True
    areEqual L L = True
    areEqual _ _ = True

newSize = areEqual M M
