#' @title  Boss API
#'
#' @description Boss API provides information on bosses. A 'boss' in this context should be considered a boss encounter, which may include more than one NPC.
#'
#' @param id id of specified boss
#'
#' @details
#' \describe{
#'  \item{boss_list}{A list of all supported bosses.}
#'  \item{boss}{The boss API provides information about bosses.}
#'  }
#'
#' @export
#' @source https://dev.battle.net/io-docs
boss_list <- function() {
  path <- c("wow", "boss/")
  wow_api(path)
}

#' @export
#' @rdname boss_list
boss <- function(id) {
  path <- c("wow", "boss", id)
  wow_api(path)
}

