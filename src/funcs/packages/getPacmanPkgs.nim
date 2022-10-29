import
  std/[strutils, osproc]

proc getPacmanPkgs*(): string =
  let
    count = osproc.execCmdEx("pacman -Q")[0]

  result = $(count.split("\n").len - 1)
