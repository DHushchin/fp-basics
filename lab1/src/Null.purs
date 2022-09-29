module Null where

import Prelude

import Effect (Effect)
import Effect.Console (log)

import Data.List (List(..))

null :: forall a. List a -> Boolean
null Nil = true
null _ = false

main :: Effect Unit
main = do
  log $ show $ null (Cons 1 Nil)
  log $ show $ null (Cons 1 (Cons 2 Nil))
  log $ show $ null Nil
  log $ show $ null (Nil :: List Int)
  log $ show $ null (Nil :: List String)
  log $ show $ null (Nil :: List Boolean)
