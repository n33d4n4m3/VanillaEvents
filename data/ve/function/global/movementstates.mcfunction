# 0 -> none
# 1 -> walking
# 2 -> sprinting
# 3 -> sneaking
# 4 -> swimming
# 5 -> climbing
# 6 -> flying
# 7 -> minecart
# 8 -> boat
# 9 -> pig
# 10 -> aviating
# 11 -> horse
# 12 -> strider
# 13 -> walking on water
# 14 -> walking under water

# Reset the players movement state global.
scoreboard players set @a VEGbl.thePlayer.currentMovementState 0

# Determine the players current movement state.
execute as @a if score @s VETmp.thePlayer.currentMovementState.walkOneCm matches 1.. run scoreboard players set @s VEGbl.thePlayer.currentMovementState 1
execute as @a if predicate ve:is_sprinting run scoreboard players set @s VEGbl.thePlayer.currentMovementState 2
execute as @a if predicate ve:is_sneaking run scoreboard players set @s VEGbl.thePlayer.currentMovementState 3
execute as @a if score @s VETmp.thePlayer.currentMovementState.swimOneCm matches 1.. run scoreboard players set @s VEGbl.thePlayer.currentMovementState 4
execute as @a if score @s VETmp.thePlayer.currentMovementState.climbOneCm matches 1.. run scoreboard players set @s VEGbl.thePlayer.currentMovementState 5
execute as @a if score @s VETmp.thePlayer.currentMovementState.flyOneCm matches 1.. run scoreboard players set @s VEGbl.thePlayer.currentMovementState 6
execute as @a if score @s VETmp.thePlayer.currentMovementState.minecartOneCm matches 1.. run scoreboard players set @s VEGbl.thePlayer.currentMovementState 7
execute as @a if score @s VETmp.thePlayer.currentMovementState.boatOneCm matches 1.. run scoreboard players set @s VEGbl.thePlayer.currentMovementState 8
execute as @a if score @s VETmp.thePlayer.currentMovementState.pigOneCm matches 1.. run scoreboard players set @s VEGbl.thePlayer.currentMovementState 9
execute as @a if score @s VETmp.thePlayer.currentMovementState.aviateOneCm matches 1.. run scoreboard players set @s VEGbl.thePlayer.currentMovementState 10
execute as @a if score @s VETmp.thePlayer.currentMovementState.horseOneCm matches 1.. run scoreboard players set @s VEGbl.thePlayer.currentMovementState 11
execute as @a if score @s VETmp.thePlayer.currentMovementState.striderOneCm matches 1.. run scoreboard players set @s VEGbl.thePlayer.currentMovementState 12
execute as @a if score @s VETmp.thePlayer.currentMovementState.walkOnWaterOneCm matches 1.. run scoreboard players set @s VEGbl.thePlayer.currentMovementState 13
execute as @a if score @s VETmp.thePlayer.currentMovementState.walkUnderWaterOneCm matches 1.. run scoreboard players set @s VEGbl.thePlayer.currentMovementState 14

# Reset values.
scoreboard players reset @a VETmp.thePlayer.currentMovementState.aviateOneCm
scoreboard players reset @a VETmp.thePlayer.currentMovementState.boatOneCm
scoreboard players reset @a VETmp.thePlayer.currentMovementState.climbOneCm
scoreboard players reset @a VETmp.thePlayer.currentMovementState.flyOneCm
scoreboard players reset @a VETmp.thePlayer.currentMovementState.horseOneCm
scoreboard players reset @a VETmp.thePlayer.currentMovementState.minecartOneCm
scoreboard players reset @a VETmp.thePlayer.currentMovementState.pigOneCm
scoreboard players reset @a VETmp.thePlayer.currentMovementState.striderOneCm
scoreboard players reset @a VETmp.thePlayer.currentMovementState.swimOneCm
scoreboard players reset @a VETmp.thePlayer.currentMovementState.walkOneCm
scoreboard players reset @a VETmp.thePlayer.currentMovementState.walkOnWaterOneCm
scoreboard players reset @a VETmp.thePlayer.currentMovementState.walkUnderWaterOneCm