data_resources <- function(subpath) {
  baseurl <- "https://us.api.battle.net"
  path <- c("wow", "data", subpath)

  query <- list(locale = "en_US",
                apikey = Sys.getenv("WOW_API_KEY"))

  httr::GET(baseurl, path = path,  query = query)
}


#' @title  Data Resources
#'
#' @details
#' \describe{
#'  \item{get_battlegroups}{The battlegroups data API provides the list of battlegroups for this region}
#'  \item{get_character_races}{The character races data API provides a list of each race and their associated faction, name, unique ID, and skin}
#'  \item{get_character_classes}{The character classes data API provides a list of character classes}
#'  \item{get_character_achievements}{The character achievements data API provides a list of all of the achievements that characters can earn as well as the category structure and hierarchy}
#'  \item{get_guild_rewards}{The guild rewards data API provides a list of all guild rewards}
#'  \item{get_guild_perks}{The guild perks data API provides a list of all guild perks}
#'  \item{get_guild_achievements}{The guild achievements data API provides a list of all of the achievements that guilds can earn as well as the category structure and hierarchy}
#'  \item{get_item_classes}{The item classes data API provides a list of item classes}
#'  \item{get_talents}{The talents data API provides a list of talents, specs and glyphs for each class}
#'  \item{get_pet_types}{The different bat pet types (including what they are strong and weak against)}
#'  }
#'
#' @export
#' @source https://dev.battle.net/io-docs
get_battlegroups <- function() data_resources("battlegroups/")

#' @export
#' @rdname get_battlegroups
get_character_races <- function() data_resources("character/races")

#' @export
#' @rdname get_battlegroups
get_character_classes <- function() data_resources("character/classes")

#' @export
#' @rdname get_battlegroups
get_character_achievements <- function() data_resources("character/achievements")

#' @export
#' @rdname get_battlegroups
get_guild_rewards <- function() data_resources("guild_rewards")

#' @export
#' @rdname get_battlegroups
get_guild_perks <- function() data_resources("guild_perks")

#' @export
#' @rdname get_battlegroups
get_guild_achievements <- function() data_resources("guild/achievements")

#' @export
#' @rdname get_battlegroups
get_item_classes <- function() data_resources("item/classes")

#' @export
#' @rdname get_battlegroups
get_talents <- function() data_resources("talents")

#' @export
#' @rdname get_battlegroups
get_pet_types <- function() data_resources("pet/types")
