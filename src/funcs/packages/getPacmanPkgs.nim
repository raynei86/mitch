import
  std/[strutils, osproc]

proc getPacmanPkgs*(): string =
  let
    count = osproc.execCmdEx("pacman -Q").output

  result = $(count.split("\n").len - 1)
