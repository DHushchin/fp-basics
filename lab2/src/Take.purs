module Take where

import Prelude

import Effect (Effect)
import Effect.Console (log)

import Data.List (List(..), (:))
import Data.Maybe (Maybe(..))

-- take
-- take поверне вказану кількість елементів зі
-- списку або стільки, скільки зможе, якщо список замалий.
take :: forall a. Int -> List a -> List a
take n _ | n <= 0 = Nil
take _ Nil = Nil
take n (x : xs) = x : take (n - 1) xs
   

main :: Effect Unit
main = do
    log $ show $ take 3 (1 : 2 : 3 : 4 : 5 : Nil)
    log $ show $ take 3 (1 : 2 : Nil)
    