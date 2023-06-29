# Package
version       = "0.1.0"
author        = "Antonis Geralis"
description   = "Karax + TailwindCSS template"
license       = "MIT"

# Dependencies
requires "nim >= 1.6.0"
requires "karax >= 1.3.0"

task production, "Build for production":
  exec "nim js -d:danger src/app.nim"
  exec "closure-compiler src/app.js --js_output_file docs/index.js"
  exec "tailwindcss -i src/input.css -o docs/output.css --minify"
