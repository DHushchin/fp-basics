module FindLastIndex where

import Prelude

import Effect (Effect)
import Effect.Console (log)

import Data.List (List(..), (:))
import Data.Maybe (Maybe(..))


-- findLastIndex
-- Знайдіть індекс останнього елементу списку, для якого виконується предикат.
-- Якщо такого елемента немає, поверніть Nothing.

findLastIndex :: forall a. (a -> Boolean) -> List a -> Maybe Int
findLastIndex _ Nil = Nothing
findLastIndex p (x : xs) = case findLastIndex p xs of
  Nothing -> if p x then Just 0 else Nothing
  Just i -> Just (i + 1)


main :: Effect Unit
main = do
    log $ show $ findLastIndex (_ == 3) (1 : 2 : 3 : 4 : 3 : Nil)
    log $ show $ findLastIndex (_ == 3) (1 : 2 : 4 : 5 : Nil)
    log $ show $ findLastIndex (_ == 3) Nil
