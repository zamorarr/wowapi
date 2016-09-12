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

get_character_profile <- make_cp_query("")
get_achievements <- make_cp_query("achievements")
get_appearance <- make_cp_query("appearance")
get_feed <- make_cp_query("feed")
get_guild <- make_cp_query("guild")
get_hunter_pets <- make_cp_query("hunterPets")
get_items <- make_cp_query("items")
get_mounts <- make_cp_query("mounts")
get_pets <- make_cp_query("pets")
get_pet_slots <- make_cp_query("petSlots")
get_professions <- make_cp_query("professions")
get_progression <- make_cp_query("progression")
get_pvp <- make_cp_query("pvp")
get_quests <- make_cp_query("quests")
get_reputation <- make_cp_query("reputation")
get_statistics <- make_cp_query("statistics")
get_talents <- make_cp_query("talents")
get_titles <- make_cp_query("titles")
get_audit <- make_cp_query("audit")


