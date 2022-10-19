module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)

import FindIndex as FindIndex
import FindLastIndex as FindLastIndex
import Zip as Zip
import Unzip as Unzip
import Filter as Filter
import TailFilter as TailFilter
import Take as Take
import TailTake as TailTake


main :: Effect Unit
main = do
  log $ "\n"
  log $ "FindIndex: "
  FindIndex.main

  log $ "\n"
  log $ "FindLastIndex: "
  FindLastIndex.main

  log $ "\n"
  log $ "Zip: "
  Zip.main

  log $ "\n"
  log $ "Unzip: "
  Unzip.main

  log $ "\n"
  log $ "Filter: "
  Filter.main

  log $ "\n"
  log $ "TailFilter: "
  TailFilter.main

  log $ "\n"
  log $ "Take: "
  Take.main

  log $ "\n"
  log $ "TailTake: "
  TailTake.main
