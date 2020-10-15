open Belt

let render: string => unit = %raw(
  `(htmlString) => document.body.insertAdjacentHTML("beforeend", htmlString)`
)

let jsxToHtml = (tagName, ~children: list<string>, ()) => {
  let c = children->List.reduce("", (a, b) => a ++ b)
  j`<$tagName>$c</$tagName>`
}

let p = jsxToHtml("p")
let div = jsxToHtml("div")
let main = jsxToHtml("main")
