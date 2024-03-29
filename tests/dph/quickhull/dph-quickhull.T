
test    ('dph-quickhull-opt' 
        , [ alone
          , skip_if_fast
          , extra_clean(['Main.hi', 'Main.o',
                         'QuickHullVect.hi', 'QuickHullVect.o',
                         'SVG.hi', 'SVG.o',
                         'TestData.hi', 'TestData.o',
                         'Types.hi', 'Types.o'])
          , reqlib('dph-lifted-copy')
          , reqlib('dph-prim-par')
          , only_ways(['normal', 'threaded1', 'threaded2']) ] 
        , multimod_compile_and_run 
        , [ 'Main'
          , '-Odph -funfolding-use-threshold30 -package dph-lifted-copy -package dph-prim-par'])

test    ('dph-quickhull-fast' 
        , [ extra_clean(['Main.hi', 'Main.o',
                         'QuickHullVect.hi', 'QuickHullVect.o',
                         'SVG.hi', 'SVG.o',
                         'TestData.hi', 'TestData.o',
                         'Types.hi', 'Types.o'])
          , reqlib('dph-lifted-copy')
          , reqlib('dph-prim-par')
          , only_ways(['normal', 'threaded1', 'threaded2']) ] 
        , multimod_compile_and_run 
        , [ 'Main'
          , '-O -fno-enable-rewrite-rules -package dph-lifted-copy -package dph-prim-par'])

