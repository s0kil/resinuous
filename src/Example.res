open Resinuous

type counter = {
  count: int
}
let count = observable(0)

let headerView =
  <header>
    <h1>
      "Resinuous"
    </h1>
  </header>

let mainView =
  <>
    headerView
    <main>
      <div>
        "Welcome!"
      </div>
      <div>
        (j`Count Is: $count`)
      </div>
    </main>
  </>

renderFragment(mainView)
