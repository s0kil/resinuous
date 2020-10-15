open Resinuous

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
    </main>
  </>

renderFragment(mainView)
