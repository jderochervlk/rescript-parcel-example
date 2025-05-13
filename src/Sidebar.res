@react.component
let make = (~pages: Parcel.pages, ~currentPage: Parcel.currentPage) => {
  <nav className="min-w-32">
    <ul className="">
      {pages
      ->Array.map(page => {
        <li key=page.url>
          <a href=page.url ariaCurrent={page.url === currentPage.url ? #page : #"false"}>
            {page.name->String.replace(".html", "")->React.string}
          </a>
        </li>
      })
      ->React.array}
    </ul>
  </nav>
}
