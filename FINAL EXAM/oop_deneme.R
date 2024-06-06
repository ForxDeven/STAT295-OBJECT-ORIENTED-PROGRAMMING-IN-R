libs <- c("tidyverse", "sloop")
lapply(libs, library, character.only = TRUE)

enemy <- function(name, hp, ap){
  structure(list(name = name, hp = hp, ap = ap), class = "enemy")
}

changeFoeHp <- function(enemy, chg){
  enemy$hp <- enemy$hp + chg
  return(enemy$hp)
}

setClass("player",
         representation(
           name = "character",
           hp = "numeric",
           ap = "numeric"
         ))
setGeneric("changeHp", function(player, chg) standardGeneric("changeHp"))
setMethod("changeHp", "player",
          function(player, chg){
            player@hp <- player@hp + chg
            return(player@hp)
          })

slime <- enemy("Slime", 5, 1)

me <- new("player", name = "ForxDeven", hp = 5,ap = 2)

changeHp(me, -2)
changeFoeHp(slime, -2)
