@react.componentWithProps
let default = ({pages, currentPage}: Parcel.pageProps) => {
  <Page>
    <main className="p-6">
      <h1> {React.string("Hello World!")} </h1>
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
    </main>
  </Page>
}
