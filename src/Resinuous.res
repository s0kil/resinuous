// Parcel HMR
%%raw(`if (module.hot) { module.hot.accept() }`)

include Sinuous

let render: string => unit = %raw(
  `(htmlString) => document.body.insertAdjacentHTML("beforeend", htmlString)`
)

let foldJsx = jsxList => {
  jsxList->List.reduce("", (a, b) => a ++ b)
}

let renderFragment = jsxList => {
  let htmlString = foldJsx(jsxList)
  render(htmlString)
}

let jsxToHtml = (tagName, ~children: list<string>, ()) => {
  let c = foldJsx(children)
  j`<$tagName>$c</$tagName>`
}

let p = jsxToHtml("p")
let h1 = jsxToHtml("h1")
let div = jsxToHtml("div")
let main = jsxToHtml("main")
let header = jsxToHtml("header")
