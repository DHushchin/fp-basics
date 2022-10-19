module TailFilter where

import Prelude

import Effect (Effect)
import Effect.Console (log)

import Data.List (List(..), (:))
import Data.Maybe (Maybe(..))

-- tail recursion filter
-- Оптимізуйте реалізацію фільтра використовуючи підхід хвостової оптимізації
tailFilter :: forall a. (a -> Boolean) -> List a -> List a -> List a
tailFilter _ Nil acc = acc
tailFilter f (x : xs) acc = if f x then tailFilter f xs (x : acc) else tailFilter f xs acc
   

main :: Effect Unit
main = do
    log $ show $ tailFilter (\x -> x `mod` 2 == 0) (1 : 2 : 3 : 4 : Nil) Nil
    log $ show $ tailFilter (\x -> x `mod` 2 == 0) (1 : 2 : 3 : 4 : Nil) Nil == (2 : 4 : Nil)
    