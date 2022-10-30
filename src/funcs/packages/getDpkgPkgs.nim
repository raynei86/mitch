import
  std/[strutils, osproc]

proc getDpkgPkgs*(): string =
  let
    count = osproc.execCmdEx("dpkg -l").output

  result = $(count.split("\n").len - 1)
