#' @title  Auction API
#'
#' @description Auction API provides an interface to auction house data
#'
#' @param realm the name of the realm you want data from
#'
#' @details
#' \describe{
#'  \item{auction}{This API resource provides a per-realm list of recently generated auction house data dumps.}
#'  }
#'
#' @export
#' @source https://dev.battle.net/io-docs
auction <- function(realm) {
  path <- c("wow", "auction", "data", realm)
  wow_api(path)
}

#' Download most recent auction data
#'
#' helper function to download auction data
#'
#' @param realm the name of the realm
#' @param destpath the path to save the file to
#'
#' @export
download_auction <- function(realm, destpath = tempdir()) {
  auc <- auction(realm)
  url <- auc$content$files[[1]]$url

  timeval <- auc$content$files[[1]]$lastModified/1E3
  destfile <- file.path(destpath, paste0("auctions_",realm,"_",timeval,".json"))

  download.file(url, destfile)

  destfile
}
