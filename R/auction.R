#' @title  Auction API
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
