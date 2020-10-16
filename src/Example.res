open Resinuous

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
        ("Count Is: " ++ Int.toString(count(.)))
      </div>
    </main>
  </>

renderFragment(mainView)
