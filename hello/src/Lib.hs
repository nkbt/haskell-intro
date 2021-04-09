module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"


type Name = String

greet :: Name -> String
greet n = "Hello, " ++ n

isSameName :: Name -> Name -> Bool
isSameName n1 n2 = n1 == n2


data Status = Available | ClosingSoon | Closed | Exhausted

data DeliveryWindow = DeliveryWindow {
  name :: Name,
  status :: Status
} deriving (Eq, Show)


instance Eq Status where
   Available == Available       = True
   ClosingSoon == ClosingSoon   = True
   Closed == Closed             = True
   Exhausted == Exhausted       = True
   _ == _                       = False

instance Show DeliveryWindow where show a = "DeliveryWindow (" ++ ")"

instance Show Status where
   Available = "Available"
   ClosingSoon = "ClosingSoon"
   Closed = "Closed"
   Exhausted = "Exhausted"

