# Multi-state Event.
execute as @a run scoreboard players operation @s VE.PlayerMovementStateTransitionEvent.priorMovementState = @s VE.PlayerMovementStateTransitionEvent.newMovementState

# Using currentMovementState-global to determine the players current movement state
execute as @a run scoreboard players operation @s VE.PlayerMovementStateTransitionEvent.newMovementState = @s VEGbl.thePlayer.currentMovementState

# Did the players movement state change since last tick? Fire the event, but ignore if this is the first run. 
execute as @a unless score @s VE.PlayerMovementStateTransitionEvent.priorMovementState = @s VE.PlayerMovementStateTransitionEvent.newMovementState if score @s VETmp.PlayerMovementStateTransitionEvent.firstRunDone matches 1 run tag @s add VE.PlayerMovementStateTransitionEvent

# First run done.
execute as @a unless score @s VETmp.PlayerMovementStateTransitionEvent.firstRunDone matches 1 run scoreboard players set @s VETmp.PlayerMovementStateTransitionEvent.firstRunDone 1