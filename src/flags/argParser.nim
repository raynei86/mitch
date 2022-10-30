func argParser*(args: seq[string], argCount: int): uint8 =

  const
    argsList: array[6, string] = [
    "-a", "--no-ascii",
    "-h", "--help",
    "-v", "--version"
    ]

  if argCount == 0:
    result = 0

  else:
    case args[0]:

    # -a --no-ascii flags
    of argsList[0..1]:
      result = 1

    # -h --help flags
    of argsList[2..3]:
      result = 2

    # -v --version flags
    of argsList[4..5]:
      result = 3
