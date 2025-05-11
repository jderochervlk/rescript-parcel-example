%%raw("import './client'")
%%raw("import './main.css'")

@react.component
let make = (~children) => {
  <html>
    <head>
      <meta charSet="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <link rel="preconnect" href="https://fonts.googleapis.com" />
      <link rel="preconnect" href="https://fonts.gstatic.com" crossOrigin="true" />
      <link
        href="https://fonts.googleapis.com/css2?family=Tagesschrift&display=swap" rel="stylesheet"
      />
    </head>
    <body className="max-w-lg m-auto font-display"> children </body>
  </html>
}
