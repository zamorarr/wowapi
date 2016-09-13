item_api <- function(subpath) {
  path <- c("wow", "item", subpath)
  wow_api(path)
}

#' @title  Item API
#'
#' @param itemid id of the item
#' @param setid id of the set
#'
#' @details
#' \describe{
#'  \item{item}{The item API provides detailed item information. This includes item set information if this item is part of a set}
#'  \item{item_set}{The item API provides detailed item information. This includes item set information if this item is part of a set}
#'  }
#'
#' @source https://dev.battle.net/io-docs
#' @export
item <- function(itemid) item_api(itemid)

#' @export
#' @rdname item
item_set <- function(setid) item_api(c("set",setid))
