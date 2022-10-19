module Filter where

import Prelude

import Effect (Effect)
import Effect.Console (log)

import Data.List (List(..), (:))
import Data.Maybe (Maybe(..))
import Data.Tuple (Tuple(..))

-- filter
-- filter takes a Predicate Function to KEEP or filter-in elements when the Predicate returns true
filter :: forall a. (a -> Boolean) -> List a -> List a
filter _ Nil = Nil
filter p (x : xs) = if p x then x : filter p xs else filter p xs
   

main :: Effect Unit
main = do
    log $ show $ filter (\x -> x > 2) (1 : 2 : 3 : 4 : Nil)
    log $ show $ filter (\x -> x > 2) (1 : 2 : Nil)
    log $ show $ filter (\x -> x > 2) Nil    
    