import
  std/[strutils, osproc]

proc getPortagePkgs*(): string =
  let
    count = osproc.execCmdEx(r"ls -d /var/db/pkg/*/*| cut -f ""5"" -d ""/"" ").output

  result = $(count.split("\n").len - 1)
