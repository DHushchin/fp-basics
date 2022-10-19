module FindIndex where

import Prelude

import Effect (Effect)
import Effect.Console (log)

import Data.List (List(..), (:))
import Data.Maybe (Maybe(..))


-- findIndex
-- Знайдіть перший індекс елементу списку, для якого виконується предикат.
-- Якщо такого елемента немає, поверніть Nothing.
findIndex :: forall a. (a -> Boolean) -> List a -> Maybe Int
findIndex _ Nil = Nothing
findIndex f (x : xs) = if f x then Just 0 else map ((+) 1) (findIndex f xs)


main :: Effect Unit
main = do
    log $ show $ findIndex ((==) 3) (1 : 2 : 3 : 4 : Nil)
    