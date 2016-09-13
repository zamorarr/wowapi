character_profile <- function(realm, characterName, fields) {
  baseurl <- "https://us.api.battle.net"
  path <- c("wow", "character", realm, characterName)

  query <- list(locale = "en_US",
                apikey = Sys.getenv("WOW_API_KEY"),
                fields = fields)

  httr::GET(baseurl, path = path,  query = query)
}

make_cp_query <- function(fields) {
  function(realm, characterName) character_profile(realm, characterName, fields)
}

#' @title  Character Profile
#'
#' @param realm name of the WoW Realm
#' @param characterName name of the character you want info on
#'
#' @details The Character Profile API is the primary way to access character information.
#' \describe{
#'  \item{get_achievements}{A map of achievement data including completion timestamps and criteria information}
#'  \item{get_appearance}{A map of a character's appearance settings such as which face texture they've selected and whether or not a healm is visible}
#'  \item{get_feed}{The activity feed of the character}
#'  \item{get_guild}{A summary of the guild that the character belongs to. If the character does not belong to a guild and this field is requested, this field will not be exposed}
#'  \item{get_hunter_pets}{A list of all of the combat pets obtained by the character}
#'  \item{get_items}{A list of items equipped by the character. Use of this field will also include the average item level and average item level equipped for the character}
#'  \item{get_mounts}{A list of all of the mounts obtained by the character}
#'  \item{get_pets}{A list of the battle pets obtained by the character}
#'  \item{get_pet_slots}{Data about the current battle pet slots on this characters account}
#'  \item{get_professions}{A list of the character's professions. Does not include class professions}
#'  \item{get_progression}{A list of raids and bosses indicating raid progression and completeness}
#'  \item{get_pvp}{A map of pvp information including arena team membership and rated battlegrounds information}
#'  \item{get_quests}{A list of quests completed by the character}
#'  \item{get_reputation}{A list of the factions that the character has an associated reputation with}
#'  \item{get_statistics}{A map of character statistics}
#'  \item{get_stats}{A map of character attributes and stats}
#'  \item{get_character_talents}{A list of talent structures}
#'  \item{get_titles}{A list of the titles obtained by the character including the currently selected title}
#'  \item{get_audit}{Raw character audit data that powers the character audit on the game site}
#'
#' }
#'
#' @export
#' @source https://dev.battle.net/io-docs
get_character_profile <- make_cp_query("")

#' @export
#' @rdname get_character_profile
get_achievements <- make_cp_query("achievements")

#' @export
#' @rdname get_character_profile
get_appearance <- make_cp_query("appearance")

#' @export
#' @rdname get_character_profile
get_feed <- make_cp_query("feed")

#' @export
#' @rdname get_character_profile
get_guild <- make_cp_query("guild")

#' @export
#' @rdname get_character_profile
get_hunter_pets <- make_cp_query("hunterPets")

#' @export
#' @rdname get_character_profile
get_items <- make_cp_query("items")

#' @export
#' @rdname get_character_profile
get_mounts <- make_cp_query("mounts")

#' @export
#' @rdname get_character_profile
get_pets <- make_cp_query("pets")

#' @export
#' @rdname get_character_profile
get_pet_slots <- make_cp_query("petSlots")

#' @export
#' @rdname get_character_profile
get_professions <- make_cp_query("professions")

#' @export
#' @rdname get_character_profile
get_progression <- make_cp_query("progression")

#' @export
#' @rdname get_character_profile
get_pvp <- make_cp_query("pvp")

#' @export
#' @rdname get_character_profile
get_quests <- make_cp_query("quests")

#' @export
#' @rdname get_character_profile
get_reputation <- make_cp_query("reputation")

#' @export
#' @rdname get_character_profile
get_statistics <- make_cp_query("statistics")

#' @export
#' @rdname get_character_profile
get_character_talents <- make_cp_query("talents")

#' @export
#' @rdname get_character_profile
get_titles <- make_cp_query("titles")

#' @export
#' @rdname get_character_profile
get_audit <- make_cp_query("audit")

