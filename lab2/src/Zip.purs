module Zip where

import Prelude

import Effect (Effect)
import Effect.Console (log)

import Data.List (List(..), (:))
import Data.Maybe (Maybe(..))
import Data.Tuple (Tuple(..))


-- zip
-- zip візьме 2 списки та заархівує їх в один список, 
-- де кожен елемент вихідного списку є Tuple,
-- який містить перший елемент List у першій позиції 
-- та другий List у другій позиції

zip :: forall a b. List a -> List b -> List (Tuple a b)
zip Nil _ = Nil
zip _ Nil = Nil
zip (Cons x xs) (Cons y ys) = Cons (Tuple x y) (zip xs ys)


main :: Effect Unit
main = do
    log $ show $ zip (1 : 2 : 3 : Nil) (4 : 5 : 6 : Nil)
    