type tocNode = {title: string}

type page = {
  url: string,
  name: string,
  tableOfContents?: array<tocNode>,
}
type pages = array<page>
type currentPage = page
type pageProps = {pages: pages, currentPage: currentPage}
