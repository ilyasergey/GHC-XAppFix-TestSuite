
test('readFail001', normal, compile_fail, [''])
test('readFail002', normal, compile_fail, [''])
test('readFail003', normal, compile_fail, [''])
test('readFail004', normal, compile_fail, [''])
test('readFail005', normal, compile_fail, [''])
test('readFail006', normal, compile_fail, [''])
test('readFail007', normal, compile_fail, [''])
test('readFail008', normal, compile_fail, [''])
test('readFail009', normal, compile_fail, [''])
# test10: missing
test('readFail011', normal, compile_fail, [''])
test('readFail012', normal, compile_fail, [''])
test('readFail013', normal, compile_fail, [''])
test('readFail014', normal, compile_fail, [''])
test('readFail015', normal, compile_fail, [''])
test('readFail016', normal, compile_fail, [''])
test('readFail017', normal, compile_fail, [''])
test('readFail018', normal, compile_fail, [''])
test('readFail019', normal, compile_fail, [''])
test('readFail020', normal, compile_fail, [''])

# empty file (length zero) is not a legal Haskell module.  It fails to compile
# because it doesn't contain a definition of Main.main.  GHC 5.02 crashed
# on this example.
test('readFail021', if_compiler_type('hugs', expect_fail), compile_fail, [''])

test('readFail022', normal, compile_fail, [''])
test('readFail023', normal, compile_fail, [''])
test('readFail024', normal, compile_fail, [''])
test('readFail025', normal, compile_fail, [''])
test('readFail026', normal, compile_fail, [''])
test('readFail027', normal, compile_fail, [''])
test('readFail028', normal, compile_fail, [''])
test('readFail029', normal, compile_fail, [''])
test('readFail030', normal, compile_fail, [''])
test('readFail031', normal, compile_fail, [''])
test('readFail032', expect_broken(314), compile_fail, ['-cpp'])
test('readFail033', normal, compile_fail, [''])
test('readFail034', normal, compile_fail, [''])
test('readFail035', normal, compile_fail, [''])
test('readFail036', normal, compile_fail, [''])
test('readFail037', normal, compile_fail, [''])
test('readFail038', normal, compile_fail, [''])
test('readFail039', normal, compile_fail, [''])
test('readFail040', normal, compile_fail, [''])
test('readFail041', normal, compile_fail, [''])
test('readFail042', normal, compile_fail, [''])
test('readFail043', normal, compile_fail, [''])
test('readFail044', normal, compile_fail, [''])
test('readFail046', normal, compile_fail, [''])
test('readFail047', normal, compile_fail, [''])
test('T3095', normal, compile_fail, [''])
test('T3153', normal, compile_fail, [''])
test('T3751', normal, compile_fail, [''])

test('position001', normal, compile_fail, [''])
test('position002', normal, compile_fail, [''])

test('T1344a', normal, compile_fail, [''])
test('T1344b', normal, compile_fail, [''])
test('T1344c', normal, compile_fail, [''])
test('T3811', normal, compile_fail, [''])
test('T3811b', normal, compile_fail, [''])
test('T3811c', normal, compile_fail, [''])
test('T3811d', normal, compile_fail, [''])
test('T3811e', normal, compile_fail, [''])
test('T3811f', normal, compile_fail, [''])
test('T3811g', normal, compile_fail, [''])
test('NoDoAndIfThenElse', normal, compile_fail, [''])
test('NondecreasingIndentationFail', normal, compile_fail, [''])
test('readFailTraditionalRecords1', normal, compile_fail, [''])
test('readFailTraditionalRecords2', normal, compile_fail, [''])
test('readFailTraditionalRecords3', normal, compile_fail, [''])

test('T5425', normal, compile_fail, [''])

test('appfix001', normal, compile_fail, [''])
test('appfix002', normal, compile_fail, [''])
test('appfix003', normal, compile_fail, [''])
