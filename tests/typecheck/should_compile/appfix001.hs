{-# LANGUAGE ApplicativeFix #-}
module ShouldCompile where

import Control.Applicative
import Control.Applicative.Compose
import Control.Applicative.Fix

foo :: (ApplicativeFix p) => p Bool
foo = alet c = Compose (pure (pure True)) in c
