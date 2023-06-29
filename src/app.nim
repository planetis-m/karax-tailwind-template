include karax / prelude
import std / dom

proc createDom(): VNode =
  result = buildHtml:
    h1(class="text-3xl font-bold underline"):
      text "Hello world!"

setRenderer createDom
