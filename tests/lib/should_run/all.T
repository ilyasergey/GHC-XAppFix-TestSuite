test('array001', 	extra_clean(['array001.data']), compile_and_run, [''])

test('char001', 	normal, compile_and_run, [''])
test('char002', 	normal, compile_and_run, [''])

test('cstring001', 	normal, compile_and_run, [''])

test('length001',
     # This fails without -O, as it relies on a RULE being applied
     expect_fail_for(['normal', 'threaded1', 'llvm']),
     compile_and_run,
     [''])

test('ratio001', 	normal, compile_and_run, [''])

test('rand001',		reqlib('random'), compile_and_run, [''])
test('reads001',		normal, compile_and_run, [''])
test('show001',		normal, compile_and_run, [''])
test('text001',		normal, compile_and_run, [''])

test('tup001',		normal, compile_and_run, [''])

test('addr001',		normal, compile_and_run, [''])
test('dynamic001',      normal, compile_and_run, [''])
test('dynamic002',      normal, compile_and_run, [''])
test('dynamic003',      extra_run_opts('+RTS -K32m -RTS'), compile_and_run, [''])
test('dynamic004',      normal, compile_and_run, [''])
test('dynamic005',      normal, compile_and_run, [''])
test('enum01',          skip_if_fast, compile_and_run, ['-cpp'])
test('enum02', 		skip_if_fast, compile_and_run, ['-cpp'])
test('enum03', 		skip_if_fast, compile_and_run, ['-cpp'])
test('enum04', 		normal, compile_and_run, [''])
test('exceptionsrun001', 	normal, compile_and_run, [''])
test('exceptionsrun002', 	normal, compile_and_run, [''])
test('list001'	,	skip_if_fast, compile_and_run, [''])
test('list002', skip_if_fast, compile_and_run, [''])
test('list003', skip_if_fast, compile_and_run, [''])

test('memo001',
     [skip_if_fast,
      extra_run_opts('+RTS -A10k -RTS'),
      extra_clean(['Memo1.hi', 'Memo1.o'])],
     multimod_compile_and_run,
     ['memo001',''])

test('memo002',
     [skip_if_fast,
      extra_run_opts('20'),
      extra_clean(['Memo2.hi', 'Memo2.o'])],
	multimod_compile_and_run, ['memo002',''])

test('packedstring001', reqlib('packedstring'), compile_and_run, ['-package packedstring'])

test('stableptr001',
     [skip_if_fast, extra_run_opts('+RTS -K8m -RTS')],
     compile_and_run, [''])
test('stableptr003', normal, compile_and_run, [''])
test('stableptr004', extra_run_opts('+RTS -K4m -RTS'), compile_and_run, [''])
test('stableptr005', normal, compile_and_run, [''])

test('weak001', normal, compile_and_run, [''])

# In the 65001 codepage, we can't even cat the expected output on msys:
#     $ cat 4006.stdout
#     It works here
#     cat: write error: Permission denied
# Seems to be a known problem, e.g.
#     http://mingw-users.1079350.n2.nabble.com/Bug-re-Unicode-on-the-console-td3121717.html
test('4006', if_msys(expect_fail), compile_and_run, [''])

