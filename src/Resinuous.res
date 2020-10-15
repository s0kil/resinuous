// Parcel HMR
%%raw(`if (module.hot) { module.hot.accept() }`)

open Belt

let render: string => unit = %raw(
  `(htmlString) => document.body.insertAdjacentHTML("beforeend", htmlString)`
)

let renderFragment = htmlList => {
  let htmlString = htmlList->List.reduce("", (a, b) => a ++ b)
  render(htmlString)
}

let jsxToHtml = (tagName, ~children: list<string>, ()) => {
  let c = children->List.reduce("", (a, b) => a ++ b)
  j`<$tagName>$c</$tagName>`
}

let p = jsxToHtml("p")
let h1 = jsxToHtml("h1")
let div = jsxToHtml("div")
let main = jsxToHtml("main")
let header = jsxToHtml("header")
