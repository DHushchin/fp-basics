module Unzip where

import Prelude

import Effect (Effect)
import Effect.Console (log)

import Data.List (List(..), (:))
import Data.Maybe (Maybe(..))
import Data.Tuple (Tuple(..))


-- unzip
-- unzip є зворотним до zip. 
-- Ви повинні мати можливість взяти результат zip і використати його, 
-- щоб розархівувати та отримати ваші вихідні списки назад, 
-- припускаючи, що ви почали зі списків однакового розміру.
unzip :: forall a b. List (Tuple a b) -> Tuple (List a) (List b)
unzip Nil = Tuple Nil Nil
unzip (Tuple a b : xs) = Tuple (a : as) (b : bs)
  where
    Tuple as bs = unzip xs
   

main :: Effect Unit
main = do
    log $ show $ unzip (Tuple 1 2 : Tuple 3 4 : Nil)
    log $ show $ unzip (Tuple 1 "a" : Tuple 2 "b" : Tuple 3 "c" : Nil)
    