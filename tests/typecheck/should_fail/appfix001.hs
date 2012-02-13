{-# LANGUAGE ApplicativeFix #-}

module ShouldCompile where

import Control.Applicative
import Control.Monad
import Control.Applicative.Compose
import Control.Applicative.Fix

foo :: ApplicativeFix p => p Bool
foo = alet c = Compose (pure (return True)) in c
