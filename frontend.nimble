# Package
version       = "0.1.0"
author        = "Antonis Geralis"
description   = "Karax + TailwindCSS template"
license       = "MIT"

# Dependencies
requires "nim >= 1.6.0"
requires "karax >= 1.3.0"

# Optional Dependencies
# requires "html2karax@#head"
# requires "nimhttpd@#head"

# import std/distros
# foreignDep "closure-compiler"
# foreignDep "tailwindcss-bin"

task production, "Build for production":
  exec "nim js -d:release src/app.nim"
  exec "closure-compiler src/app.js --js_output_file public/index.js"
  exec "tailwindcss -i src/input.css -o public/output.css --minify"
