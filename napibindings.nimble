version  = "0.1.0"
author  = "andrew breidenbach"
description  = "bindings for node api"
license  = "MIT"
skipDirs  = @["test", ".git"]
bin  = @["bin/napibuild"]

requires "docopt"

task test,"test":
  withDir "test":
    exec "yarn install --ignore-scripts"
  exec "nim c -r bin/napibuild.nim test/main.nim"
  exec "node test/index.js"