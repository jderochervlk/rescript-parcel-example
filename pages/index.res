@react.componentWithProps
let default = ({pages, currentPage}: Parcel.pageProps) => {
  <Page currentPage pages>
    <div className="p-6 min-w-md">
      <h1> {React.string("ReScript and Parcel")} </h1>
      <pre>
        {React.string(`
// install
pnpm install

// dev server
pnpm dev 

// production build
pnpm build
        `)}
      </pre>
    </div>
  </Page>
}
