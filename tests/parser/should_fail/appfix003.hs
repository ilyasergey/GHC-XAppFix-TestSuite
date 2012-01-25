-- Parsing the local 'alet' form

{-# LANGUAGE ApplicativeFix #-}

module ShouldCompile where

foo = alet a :: t -> t
           a = undefined
           b = undefined
        in a
