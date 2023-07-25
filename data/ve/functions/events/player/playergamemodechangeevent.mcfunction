# Multi-state Event.
execute as @a run scoreboard players operation @s VE.PlayerGameModeChangeEvent.priorGameMode = @s VE.PlayerGameModeChangeEvent.newGameMode
# Using selector to determine the players current gamemode.
execute as @a[gamemode=survival] run scoreboard players set @s VE.PlayerGameModeChangeEvent.newGameMode 0
execute as @a[gamemode=creative] run scoreboard players set @s VE.PlayerGameModeChangeEvent.newGameMode 1
execute as @a[gamemode=adventure] run scoreboard players set @s VE.PlayerGameModeChangeEvent.newGameMode 2
execute as @a[gamemode=spectator] run scoreboard players set @s VE.PlayerGameModeChangeEvent.newGameMode 3
# Did the players gamemode change since last tick? Fire the event, but ignore if this is the first run. 
execute as @a unless score @s VE.PlayerGameModeChangeEvent.priorGameMode = @s VE.PlayerGameModeChangeEvent.newGameMode if score @s VETmp.PlayerGameModeChangeEvent.firstRunDone matches 1 run tag @s add VE.PlayerGameModeChangeEvent

# Modification default = Prior Gamemode
execute as @a[tag=VE.PlayerGameModeChangeEvent] run scoreboard players operation @s VE.PlayerGameModeChangeEvent.modGameMode = @s VE.PlayerGameModeChangeEvent.priorGameMode

# First run done.
execute as @a unless score @s VETmp.PlayerGameModeChangeEvent.firstRunDone matches 1 run scoreboard players set @s VETmp.PlayerGameModeChangeEvent.firstRunDone 1

