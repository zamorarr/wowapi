#' @title  Challnge Mode API
#'
#' @description Challenge Mode API provides information on challenge mode maps.
#' @param realm realm name
#'
#' @details
#' \describe{
#'  \item{challenge_realm_leaderboard}{The data in this request has data for all 9 challenge mode maps
#'  (currently). The map field includes the current medal times for each dungeon. Inside each ladder
#'  we provide data about each character that was part of each run. The character data includes the
#'  current cached spec of the character while the member field includes the spec of the character
#'  during the challenge mode run.}
#'  \item{challenge_region_leaderboard}{The region leaderboard has the exact same data format as the
#'  realm leaderboards except there is no realm field. It is simply the top 100 results gathered
#'  for each map for all of the available realm leaderboards in a region.}
#'  }
#'
#' @export
#' @source https://dev.battle.net/io-docs
challenge_leaderboard <- function(realm = NULL) {
  if (is.null(realm)) realm <- "region"
  path <- c("wow", "challenge", realm)
  wow_api(path)
}
