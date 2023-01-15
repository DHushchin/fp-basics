module Main where

import Prelude

import Lab3

import Effect (Effect)
import Effect.Console (log)

main :: Effect Unit
main = do
  log $ show $ Just 4 == Just 4
  log $ show $ Just 7 == Just 9
  log $ show $ Just 1 == Nothing 
  log $ show $ Nothing == Just 8
  log $ show $ Nothing == (Nothing :: Maybe Unit)
  log "------------------"
  log $ show $ Just 1 < Just 9 
  log $ show $ Just 4 <= Just 4 
  log $ show $ Just 3 > Just 11 
  log $ show $ Just 10 >= Just 12 
  log $ show $ Just 100 > Nothing
  log $ show $ Just 100 < Nothing 
  log "------------------"
  log $ show $ Just "Hello"
  log $ show $ (Nothing :: Maybe Unit)
