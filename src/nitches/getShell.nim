import
  std/[strutils, os]

proc getShell*(): string =
  result = getEnv("SHELL").split("/")[^1]
