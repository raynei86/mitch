import
  ./drawing,
  ../assets/assets

# if no flag
proc arg0*() =
  drawInfo(true)

# -a --no-ascii flags
proc arg1*() =
  drawInfo(false)

# -h --help flags
proc arg2*() =
  stdout.write(helpMsg)

# -v --version flags
proc arg3*() =
  stdout.write(programVersion)
