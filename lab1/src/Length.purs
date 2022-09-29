module Length where

import Prelude

import Effect (Effect)
import Effect.Console (log)

import Data.List (List(..))

length :: forall a. List a -> Int
length Nil = 0
length (Cons _ xs) = 1 + length xs


main :: Effect Unit
main = do
    log $ show $ length Nil
    log $ show $ length (Cons 1 Nil)
    log $ show $ length (Cons 1 (Cons 2 Nil))
