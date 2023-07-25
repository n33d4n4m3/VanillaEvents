# Dual-state Event. 
execute as @e[type=minecraft:bat] run scoreboard players operation @s VE.BatToggleSleepEvent.priorState = @s VE.BatToggleSleepEvent.newState

# Using BatFlags EntityData to determine the sleeping state of all bats. (0 = Flying, 1 = Sleeping)
execute as @e[type=minecraft:bat] store result score @s VE.BatToggleSleepEvent.newState run data get entity @s BatFlags

# Did the bats Sleeping state change since last tick? Fire the event, but ignore if this is the first run. 
execute as @e[type=minecraft:bat] if score @s VETmp.BatToggleSleepEvent.firstRunDone matches 1 unless score @s VE.BatToggleSleepEvent.priorState = @s VE.BatToggleSleepEvent.newState run tag @s add VE.BatToggleSleepEvent

# First run done.
execute as @e[type=minecraft:bat] unless score @s VETmp.BatToggleSleepEvent.firstRunDone matches 1 run scoreboard players set @s VETmp.BatToggleSleepEvent.firstRunDone 1