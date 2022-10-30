import
  std/os,
  flags/argParser,
  funcs/perform

let
  arg = argParser(commandLineParams(), paramCount())

case arg:

# -a --no-ascii flags
of 1:
  arg1()

# -h --help flags
of 2:
  arg2()

# -v --version flags
of 3:
  arg3()

else:
  arg0()
