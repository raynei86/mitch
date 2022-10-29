import
  std/[strutils, osproc]

proc getPortagePkgs*(): string =
  let
    count = osproc.execCmdEx(r"ls -d /var/db/pkg/*/*| cut -f ""5"" -d ""/"" ")[0]

  result = $(count.split("\n").len - 1)
