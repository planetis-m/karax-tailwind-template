# Karax-TailwindCSS Template

This is a template repository for creating frontend projects using [Karax](https://github.com/karaxnim/karax), a single page application framework for [Nim](https://nim-lang.org/), and [TailwindCSS](https://github.com/tailwindlabs/tailwindcss), a utility-first CSS framework for rapid UI development.

## Features

- Karax for building dynamic web pages with Nim
- TailwindCSS for styling web pages with utility classes
- [html2karax](https://github.com/nim-lang-cn/html2karax) for converting static HTML to Karax code
- [nimhttpd](https://github.com/h3rald/nimhttpd) for serving static files with Nim
- [closure-compiler](https://github.com/google/closure-compiler) for minifying the generated js code

## Usage

To use this template, follow these steps:

1. Click the `Use this template` button at the top of this page and create a new repository with your desired name.
2. Clone the new repository to your local machine.
3. Install Nim and Nimble if you don't have them already. See [Nim installation instructions](https://nim-lang.org/install.html) for details.
4. Install the dependencies with `nimble install`.
5. nimhttpd and html2karax are optional dependencies that can be installed with `nimble install nimhttpd html2karax`
6. Install closure-compiler and tailwindcss [standalone CLI](https://github.com/tailwindlabs/tailwindcss/releases). If you are using Arch Linux, you can install [closure-compiler](https://aur.archlinux.org/packages/closure-compiler) and [tailwindcss-bin](https://aur.archlinux.org/packages/tailwindcss-bin) from the AUR with your preferred package manager.
7. Write your frontend code in the `src` folder using Karax and TailwindCSS. You can use `html2karax` to convert HTML snippets to Karax code.
8. Run `tailwindcss -i src/input.css -o public/output.css --watch` in a terminal to generate the output CSS file and watch for changes in the input file.
9. Compile your code with `nim js -d:release -o:public/index.js src/app.nim`.
10. Run `nimhttpd` in the `public` folder to serve your web page locally.
11. Open a browser on http://localhost:1337
12. Run `nimble production` in a terminal to create a minified version of the generated js code and css for shipping. This will use closure-compiler and clean-css to optimize and compress the output files.

## Resources

For more information on how to use Karax and TailwindCSS, check out these links:

- [Karax documentation](https://karaxnim.github.io/karax/karax.html)
- [Karax examples](https://github.com/karaxnim/karax/tree/master/examples)
- [TailwindCSS documentation](https://tailwindcss.com/docs)
- [TailwindCSS examples](https://tailwindcss.com/components)

## License

This template is licensed under the MIT License. See [LICENSE.txt](LICENSE.txt) for details.
