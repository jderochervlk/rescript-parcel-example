%%raw("import './client'")
%%raw("import './main.css'")

// This is a wrapper for page components to add in HTML, header, styles, etc...
@react.component
let make = (~children, ~pages, ~currentPage) => {
  <html>
    <head>
      <meta charSet="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <style>
        {"@import url('https://fonts.googleapis.com/css2?family=Outfit:wght@100..900&display=swap');"->React.string}
      </style>
    </head>
    <body className="bg-gray-100 max-w-3xl min-w-md m-auto prose flex p-5">
      <Sidebar pages currentPage />
      <main> children </main>
    </body>
  </html>
}

let default = make
