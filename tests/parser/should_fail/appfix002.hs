-- Parsing the local 'alet' form

{-# LANGUAGE ApplicativeFix #-}

module ShouldCompile where

foo = alet a = undefined
           (b, c) = undefined
        in a
