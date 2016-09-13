#' @title  Quest API
#'
#' @param id id of specified quest
#'
#' @details
#' \describe{
#'  \item{quest}{Retrieve metadata for a given quest}
#'  }
#'
#' @export
#' @source https://dev.battle.net/io-docs
quest <- function(id) {
  path <- c("wow", "quest", id)
  wow_api(path)
}
