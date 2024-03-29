setTestOpts(only_compiler_types(['ghc']))

test('arrowapply1', normal, compile, [''])
test('arrowapply2', normal, compile, [''])
test('arrowapply3', normal, compile, [''])
test('arrowapply4', normal, compile, [''])
test('arrowapply5', normal, compile, [''])
test('arrowcase1', normal, compile, [''])
test('arrowdo1', normal, compile, [''])
test('arrowdo2', normal, compile, [''])
# test('arrowdo3', normal, compile, [''])	# takes too long
test('arrowform1', normal, compile, [''])
test('arrowif1', normal, compile, [''])
test('arrowlet1', normal, compile, [''])
test('arrowrec1', normal, compile, [''])
test('arrowpat', normal, compile, [''])
test('T3964', normal, compile, [''])
test('T5283', normal, compile, [''])
test('T5267', expect_broken(5605), compile, [''])
