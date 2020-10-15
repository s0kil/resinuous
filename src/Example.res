%%raw(`// Parcel HMR
if (module.hot) {
  module.hot.accept();
}`)

open Resinuous

let count = 0
let view =
  <main>
    <div>
      <p> (j`Count: $count`) </p>
    </div>
  </main>

render(view)
