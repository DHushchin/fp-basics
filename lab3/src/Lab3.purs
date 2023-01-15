
module Lab3
  ( Maybe(..)
  , greaterThanOrEq
  )
  where

import Data.Eq (class Eq)
import Data.Ord (class Ord, Ordering(..), compare)
import Data.Show (class Show, show)
import Prelude ((==), (>=), (<>))

data Maybe a = Nothing | Just a

-- Вам необхідно написати код наступних instance для типу Maybe:
-- <, >
-- <= , >=
-- Show

instance eqMaybe :: Eq a => Eq (Maybe a) where
  eq Nothing Nothing = true
  eq (Just a) (Just b) = a == b
  eq _ _ = false

instance ordMaybe :: Ord a => Ord (Maybe a) where
    compare Nothing Nothing = EQ
    compare Nothing _ = LT
    compare _ Nothing = GT
    compare (Just a) (Just b) = compare a b

instance showMaybe :: Show a => Show (Maybe a) where
    show Nothing = "Nothing"
    show (Just a) = "Just " <> show a

greaterThanOrEq :: forall a. Ord a => Maybe a -> Maybe a -> Boolean
greaterThanOrEq Nothing Nothing = true
greaterThanOrEq Nothing _ = false
greaterThanOrEq _ Nothing = true
greaterThanOrEq (Just a) (Just b) = a >= b
