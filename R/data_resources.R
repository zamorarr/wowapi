data_resources <- function(subpath) {
  path <- c("wow", "data", subpath)
  wow_api(path)
}


#' @title  Data Resources
#'
#' @description Data Resources API provides interface to common data in the game
#'
#' @details
#' \describe{
#'  \item{all_battlegroups}{The battlegroups data API provides the list of battlegroups for this region}
#'  \item{all_character_races}{The character races data API provides a list of each race and their associated faction, name, unique ID, and skin}
#'  \item{all_character_classes}{The character classes data API provides a list of character classes}
#'  \item{all_character_achievements}{The character achievements data API provides a list of all of the achievements that characters can earn as well as the category structure and hierarchy}
#'  \item{all_guild_rewards}{The guild rewards data API provides a list of all guild rewards}
#'  \item{all_guild_perks}{The guild perks data API provides a list of all guild perks}
#'  \item{all_guild_achievements}{The guild achievements data API provides a list of all of the achievements that guilds can earn as well as the category structure and hierarchy}
#'  \item{all_item_classes}{The item classes data API provides a list of item classes}
#'  \item{all_talents}{The talents data API provides a list of talents, specs and glyphs for each class}
#'  \item{all_pet_types}{The different bat pet types (including what they are strong and weak against)}
#'  }
#'
#' @export
#' @source https://dev.battle.net/io-docs
all_battlegroups <- function() data_resources("battlegroups/")

#' @export
#' @rdname all_battlegroups
all_character_races <- function() data_resources("character/races")

#' @export
#' @rdname all_battlegroups
all_character_classes <- function() data_resources("character/classes")

#' @export
#' @rdname all_battlegroups
all_character_achievements <- function() data_resources("character/achievements")

#' @export
#' @rdname all_battlegroups
all_guild_rewards <- function() data_resources("guild_rewards")

#' @export
#' @rdname all_battlegroups
all_guild_perks <- function() data_resources("guild_perks")

#' @export
#' @rdname all_battlegroups
all_guild_achievements <- function() data_resources("guild/achievements")

#' @export
#' @rdname all_battlegroups
all_item_classes <- function() data_resources("item/classes")

#' @export
#' @rdname all_battlegroups
all_talents <- function() data_resources("talents")

#' @export
#' @rdname all_battlegroups
all_pet_types <- function() data_resources("pet/types")
