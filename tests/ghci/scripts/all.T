
setTestOpts(if_compiler_profiled(skip))

test('ghci001', normal, ghci_script, ['ghci001.script'])
test('ghci002', normal, ghci_script, ['ghci002.script'])
test('ghci003', normal, ghci_script, ['ghci003.script'])
test('ghci004', normal, ghci_script, ['ghci004.script'])
test('ghci005', normal, ghci_script, ['ghci005.script'])
test('ghci006', normal, ghci_script, ['ghci006.script'])
test('ghci007', normal, ghci_script, ['ghci007.script'])
test('ghci008', normal, ghci_script, ['ghci008.script'])
test('ghci009', normal, ghci_script, ['ghci009.script'])

# Skip this test: deadlock can't be detected now, because we wait for
# signals to arrive if there are signal handlers installed, and GHCi
# has a ^C handler installed.
test('ghci010', skip, ghci_script, ['ghci010.script'])

test('ghci011', normal, ghci_script, ['ghci011.script'])
test('ghci012', normal, ghci_script, ['ghci012.script'])
test('ghci013', normal, ghci_script, ['ghci013.script'])
test('ghci014', reqlib('QuickCheck'), ghci_script, ['ghci014.script'])

# Ignore output from ghci015, the output is non-deterministic
# (has occasional "thread blocked indefinitely" exceptions), and this
# is part of the test.
test('ghci015', ignore_output, ghci_script, ['ghci015.script'])

test('ghci016', expect_broken(552), ghci_script, ['ghci016.script'])
test('ghci017', extra_run_opts('-hide-package haskell98'), ghci_script, ['ghci017.script'])
test('ghci018', expect_broken(1201), ghci_script, ['ghci018.script'])
test('ghci019', normal, ghci_script, ['ghci019.script'])
test('ghci020', normal, ghci_script, ['ghci020.script'])
test('ghci021', normal, ghci_script, ['ghci021.script'])
test('ghci022', normal, ghci_script, ['ghci022.script'])

test('ghci023', normal, ghci_script, ['ghci023.script'])
test('ghci024',
     [skip_if_fast,
      if_platform("powerpc-apple-darwin", expect_broken(1845))],
     run_command,
     ['$MAKE -s --no-print-directory ghci024'])
test('ghci025', normal, ghci_script, ['ghci025.script'])
test('ghci026', normal, ghci_script, ['ghci026.script'])

test('ghci027', extra_clean(['ghci027.hs']), ghci_script, ['ghci027.script'])
test('ghci028', normal, ghci_script, ['ghci028.script'])
test('ghci029', normal, ghci_script, ['ghci029.script'])
test('ghci030', normal, ghci_script, ['ghci030.script'])
test('ghci031', normal, ghci_script, ['ghci031.script'])
test('ghci032', normal, ghci_script, ['ghci032.script'])
test('ghci033', normal, ghci_script, ['ghci033.script'])
test('ghci034', normal, ghci_script, ['ghci034.script'])
test('ghci035', normal, ghci_script, ['ghci035.script'])
test('ghci036', normal, ghci_script, ['ghci036.script'])
test('ghci037', req_interp, run_command, ['$MAKE -s --no-print-directory ghci037'])
test('ghci038', normal, ghci_script, ['ghci038.script'])
test('ghci039', normal, ghci_script, ['ghci039.script'])
test('ghci040', normal, ghci_script, ['ghci040.script'])
test('ghci041', normal, ghci_script, ['ghci041.script'])
test('ghci042', normal, ghci_script, ['ghci042.script'])
test('ghci043', normal, ghci_script, ['ghci043.script'])
test('ghci044', normal, ghci_script, ['ghci044.script'])
test('ghci045', normal, ghci_script, ['ghci045.script'])
test('ghci046', normal, ghci_script, ['ghci046.script'])
test('ghci047', normal, ghci_script, ['ghci047.script'])
test('ghci048', normal, ghci_script, ['ghci048.script'])
test('ghci049', normal, ghci_script, ['ghci049.script'])
test('ghci050', normal, ghci_script, ['ghci050.script'])
test('ghci051', normal, ghci_script, ['ghci051.script'])
test('ghci052', normal, ghci_script, ['ghci052.script'])
test('ghci053', normal, ghci_script, ['ghci053.script'])
test('ghci054', normal, ghci_script, ['ghci054.script'])
test('ghci055', normal, ghci_script, ['ghci055.script'])

test('ghci056',
     [
       cmd_prefix('$MAKE --no-print-directory ghci056_setup && '),
       extra_run_opts('ghci056_c.o'),
       extra_clean('ghci056_c.o')
     ],
     ghci_script, ['ghci056.script'])

test('2452', normal, ghci_script, ['2452.script'])
test('T2766', normal, ghci_script, ['T2766.script'])

test('1914',
     extra_clean(['T1914A.hs', 'T1914B.hs']),
     ghci_script,
     ['1914.script'])

test('2976', normal, ghci_script, ['2976.script'])
test('2816', normal, ghci_script, ['2816.script'])
test('T789', normal, ghci_script, ['T789.script'])
test('T3263', normal, ghci_script, ['T3263.script'])
test('4051', normal, ghci_script, ['4051.script'])
test('T4087', normal, ghci_script, ['T4087.script'])
test('T4015', normal, ghci_script, ['T4015.script'])
test('T4127', normal, ghci_script, ['T4127.script'])
test('T4127a', normal, ghci_script, ['T4127a.script'])
test('T4316', reqlib('mtl'), ghci_script, ['T4316.script'])
test('T4832', normal, ghci_script, ['T4832.script'])
test('T5045', normal, ghci_script, ['T5045.script'])
test('T5130', normal, ghci_script, ['T5130.script'])
test('T5417', normal, ghci_script, ['T5417.script'])
test('T5545', normal, ghci_script, ['T5545.script'])
test('T5557', normal, ghci_script, ['T5557.script'])
test('T5566', normal, ghci_script, ['T5566.script'])
test('GhciKinds', normal, ghci_script, ['GhciKinds.script'])
test('T5564', normal, ghci_script, ['T5564.script'])
