module Singleton where

import Prelude

import Effect (Effect)
import Effect.Console (log)

import Data.List (List(..))

singleton :: forall a. a -> List a
singleton a = (Cons a Nil)

main :: Effect Unit
main = do
  log $ show $ singleton "Hello"
  log $ show $ singleton 1
  