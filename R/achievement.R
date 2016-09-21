#' @title  Achievement API
#'
#' @description Ahcievement API provides information on achievements.
#'
#' @param id id of the achievement
#'
#' @details
#' \describe{
#'  \item{achievement}{This provides data about an individual achievement.}
#'  }
#'
#' @export
#' @source https://dev.battle.net/io-docs
achievement <- function(id) {
  path <- c("wow", "achievement", id)
  wow_api(path)
}
