import
  std/[strutils, osproc]

proc getRpmPkgs*(): string =
  let
    count = osproc.execCmdEx("rpm -qa").output

  result = $(count.split("\n").len - 1)
