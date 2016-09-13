ua <- httr::user_agent("https://gitlab.com/zamorarr/wowapi")
baseurl <- "https://us.api.battle.net"

wow_pat <- function() {
  pat <- Sys.getenv('WOW_API_KEY')
  if (identical(pat, "")) {
    stop("Please set env var WOW_API_KEY to your WoW API key",
         call. = FALSE)
  }

  pat
}

wow_api <- function(path, query = NULL) {

  # add locale and apikey to query
  query <- c(query,
             list(locale = "en_US", apikey = wow_pat())
             )

  # execute query
  resp <- httr::GET(baseurl, ua, path = path,  query = query)

  # make sure response type is json
  if (httr::http_type(resp) != "application/json") {
    stop("API did not return json", call. = FALSE)
  }

  # parse content
  parsed <- jsonlite::fromJSON(httr::content(resp, "text"), simplifyVector = FALSE)

  # error checking
  if (httr::http_error(resp)) {
    stop(
      sprintf(
        "WoW API request failed [%s]\n%s\n<%s>",
        httr::status_code(resp),
        parsed$status,
        parsed$reason
      ),
      call. = FALSE
    )
  }

  # return S3 Structure
  structure(
    list(
      content = parsed,
      path = httr::modify_url(baseurl, path = path),
      response = resp
    ),
    class = "wow_api"
  )
}


#' @export
print.wow_api <- function(x, ...) {
  cat("<WoW ", x$path, ">\n", sep = "")
  str(x$content, 1L)
  invisible(x)
}
