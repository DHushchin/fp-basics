module Snoc where

import Prelude

import Effect (Effect)
import Effect.Console (log)

import Data.List (List(..))

snoc:: forall a. List a -> a -> List a
snoc Nil x = Cons x Nil
snoc (Cons y ys) x = Cons y (snoc ys x)

main :: Effect Unit
main = do
    log $ show $ snoc (Cons 1 (Cons 2 Nil)) 3
    log $ show $ snoc Nil 1
    log $ show $ snoc (Cons 1 Nil) 2
