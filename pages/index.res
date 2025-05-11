@react.componentWithProps
let default = ({pages, currentPage}: Parcel.pageProps) => {
  <Page>
    {React.string("Hello World!")}
    <ul className="p-10">
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
  </Page>
}
