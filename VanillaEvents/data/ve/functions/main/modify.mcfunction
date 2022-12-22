# PlayerGameModeChangeEvent
execute as @a[tag=VE.PlayerGameModeChangeEvent] if score @s VE.PlayerGameModeChangeEvent.willModify matches 1 if score @s VE.PlayerGameModeChangeEvent.modGameMode matches 0 run gamemode survival @s
execute as @a[tag=VE.PlayerGameModeChangeEvent] if score @s VE.PlayerGameModeChangeEvent.willModify matches 1 if score @s VE.PlayerGameModeChangeEvent.modGameMode matches 1 run gamemode creative @s
execute as @a[tag=VE.PlayerGameModeChangeEvent] if score @s VE.PlayerGameModeChangeEvent.willModify matches 1 if score @s VE.PlayerGameModeChangeEvent.modGameMode matches 2 run gamemode adventure @s
execute as @a[tag=VE.PlayerGameModeChangeEvent] if score @s VE.PlayerGameModeChangeEvent.willModify matches 1 if score @s VE.PlayerGameModeChangeEvent.modGameMode matches 3 run gamemode spectator @s
execute as @a[tag=VE.PlayerGameModeChangeEvent] if score @s VE.PlayerGameModeChangeEvent.willModify matches 1 run scoreboard players operation @s VE.PlayerGameModeChangeEvent.newGameMode = @s VE.PlayerGameModeChangeEvent.modGameMode
execute as @a[tag=VE.PlayerGameModeChangeEvent] run scoreboard players reset @s VE.PlayerGameModeChangeEvent.willModify

# PlayerMoveEvent
execute if entity @a[scores={VE.PlayerMoveEvent.willModify=1}] run function ve:events/player/modify/modify_playermoveevent
