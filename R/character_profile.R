character_profile_api <- function(realm, characterName, fields) {
  path <- c("wow", "character", realm, characterName)
  query <- list(fields = fields)

  wow_api(path, query)
}

make_cp_query <- function(fields) {
  function(realm, characterName) character_profile_api(realm, characterName, fields)
}

#' @title  Character Profile API
#'
#' @param realm name of the WoW Realm
#' @param characterName name of the character you want info on
#'
#' @details The Character Profile API is the primary way to access character information.
#' \describe{
#'  \item{character_achievements}{A map of achievement data including completion timestamps and criteria information}
#'  \item{character_appearance}{A map of a character's appearance settings such as which face texture they've selected and whether or not a healm is visible}
#'  \item{character_feed}{The activity feed of the character}
#'  \item{character_guild}{A summary of the guild that the character belongs to. If the character does not belong to a guild and this field is requested, this field will not be exposed}
#'  \item{character_hunter_pets}{A list of all of the combat pets obtained by the character}
#'  \item{character_items}{A list of items equipped by the character. Use of this field will also include the average item level and average item level equipped for the character}
#'  \item{character_mounts}{A list of all of the mounts obtained by the character}
#'  \item{character_pets}{A list of the battle pets obtained by the character}
#'  \item{character_pet_slots}{Data about the current battle pet slots on this characters account}
#'  \item{character_professions}{A list of the character's professions. Does not include class professions}
#'  \item{character_progression}{A list of raids and bosses indicating raid progression and completeness}
#'  \item{character_pvp}{A map of pvp information including arena team membership and rated battlegrounds information}
#'  \item{character_quests}{A list of quests completed by the character}
#'  \item{character_reputation}{A list of the factions that the character has an associated reputation with}
#'  \item{character_statistics}{A map of character statistics}
#'  \item{character_stats}{A map of character attributes and stats}
#'  \item{character_character_talents}{A list of talent structures}
#'  \item{character_titles}{A list of the titles obtained by the character including the currently selected title}
#'  \item{character_audit}{Raw character audit data that powers the character audit on the game site}
#'
#' }
#'
#' @export
#' @source https://dev.battle.net/io-docs
character_profile <- make_cp_query("")

#' @export
#' @rdname character_profile
character_achievements <- make_cp_query("achievements")

#' @export
#' @rdname character_profile
character_appearance <- make_cp_query("appearance")

#' @export
#' @rdname character_profile
character_feed <- make_cp_query("feed")

#' @export
#' @rdname character_profile
character_guild <- make_cp_query("guild")

#' @export
#' @rdname character_profile
character_hunter_pets <- make_cp_query("hunterPets")

#' @export
#' @rdname character_profile
character_items <- make_cp_query("items")

#' @export
#' @rdname character_profile
character_mounts <- make_cp_query("mounts")

#' @export
#' @rdname character_profile
character_pets <- make_cp_query("pets")

#' @export
#' @rdname character_profile
character_pet_slots <- make_cp_query("petSlots")

#' @export
#' @rdname character_profile
character_professions <- make_cp_query("professions")

#' @export
#' @rdname character_profile
character_progression <- make_cp_query("progression")

#' @export
#' @rdname character_profile
character_pvp <- make_cp_query("pvp")

#' @export
#' @rdname character_profile
character_quests <- make_cp_query("quests")

#' @export
#' @rdname character_profile
character_reputation <- make_cp_query("reputation")

#' @export
#' @rdname character_profile
character_statistics <- make_cp_query("statistics")

#' @export
#' @rdname character_profile
character_talents <- make_cp_query("talents")

#' @export
#' @rdname character_profile
character_titles <- make_cp_query("titles")

#' @export
#' @rdname character_profile
character_audit <- make_cp_query("audit")

