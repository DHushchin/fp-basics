module Main where

import Prelude 
import Singleton as Singleton
import Null as Null
import Snoc as Snoc
import Length as Length

import Effect (Effect)
import Effect.Console (log)


main :: Effect Unit
main = do
  log $ "\n"
  log $ "Singleton: "
  Singleton.main

  log $ "\n"
  log $ "Null: "
  Null.main

  log $ "\n"
  log $ "Snoc: "
  Snoc.main
  
  log $ "\n"
  log $ "Length: "
  Length.main
