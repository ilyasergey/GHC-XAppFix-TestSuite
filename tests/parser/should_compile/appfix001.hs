-- Parsing the local 'alet' form

{-# LANGUAGE ApplicativeFix #-}

module ShouldCompile where

foo = alet a = undefined
           b = undefined
        in a
