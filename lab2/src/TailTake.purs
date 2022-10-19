module TailTake where

import Prelude

import Effect (Effect)
import Effect.Console (log)

import Data.List (List(..), (:))
import Data.Maybe (Maybe(..))

take :: forall a. Int -> List a -> List a
take n xs = go n xs Nil
  where
    go :: Int -> List a -> List a -> List a
    go n _ acc | n <= 0 = acc
    go _ Nil acc = acc
    go n (x : xs) acc = go (n - 1) xs (x : acc)


main :: Effect Unit
main = do
    log $ show $ take 3 (1 : 2 : 3 : 4 : 5 : Nil)
    log $ show $ take 3 (1 : 2 : Nil)
    