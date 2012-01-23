-- Parsing the local 'alet' form

{-# LANGUAGE ApplicativeFix #-}

module ShouldCompile where

foo = alet a = undefined
           Just(b) = undefined
        in a
