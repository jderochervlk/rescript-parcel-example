type page = {
  url: string,
  name: string,
}
type pages = array<page>
type currentPage = page
type pageProps = {pages: pages, currentPage: currentPage}
