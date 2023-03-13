# Functions for enable VE.PlayerGameModeChangeEvent
execute if score $ VESys.PlayerGameModeChangeEvent matches 1.. run scoreboard players set $ VESys.PlayerGameModeChangeEvent.isEnabled 1

# Functions for disable VE.PlayerGameModeChangeEvent
execute as @a unless score $ VESys.PlayerGameModeChangeEvent matches 1.. if score @s VETmp.PlayerGameModeChangeEvent.firstRunDone matches 1 run scoreboard players set @s VETmp.PlayerGameModeChangeEvent.firstRunDone 0
execute unless score $ VESys.PlayerGameModeChangeEvent matches 1.. run scoreboard players set $ VESys.PlayerGameModeChangeEvent.isEnabled 0


# Functions for enable VE.PlayerMoveEvent
execute if score $ VESys.PlayerMoveEvent matches 1.. run scoreboard players set $ VESys.PlayerMoveEvent.isEnabled 1

# Functions for disable VE.PlayerMoveEvent
execute as @a unless score $ VESys.PlayerMoveEvent matches 1.. if score @s VETmp.PlayerMoveEvent.firstRunDone matches 1 run scoreboard players set @s VETmp.PlayerMoveEvent.firstRunDone 0
execute unless score $ VESys.PlayerMoveEvent matches 1.. run scoreboard players set $ VESys.PlayerMoveEvent.isEnabled 0


# Functions for enable VE.PlayerMovementStateTransitionEvent
execute if score $ VESys.PlayerMovementStateTransitionEvent matches 1.. run scoreboard players set $ VESys.PlayerMovementStateTransitionEvent.isEnabled 1

# Functions for disable VE.PlayerMovementStateTransitionEvent
execute as @a unless score $ VESys.PlayerMovementStateTransitionEvent matches 1.. if score @s VETmp.PlayerMovementStateTransitionEvent.firstRunDone matches 1 run scoreboard players set @s VETmp.PlayerMovementStateTransitionEvent.firstRunDone 0
execute unless score $ VESys.PlayerMovementStateTransitionEvent matches 1.. run scoreboard players set $ VESys.PlayerMovementStateTransitionEvent.isEnabled 0


# Functions for enable VE.BatToggleSleepEvent
execute if score $ VESys.BatToggleSleepEvent matches 1.. run scoreboard players set $ VESys.BatToggleSleepEvent.isEnabled 1

# Functions for disable VE.BatToggleSleepEvent
execute as @e[type=minecraft:bat] unless score $ VESys.BatToggleSleepEvent matches 1.. if score @s VETmp.BatToggleSleepEvent.firstRunDone matches 1 run scoreboard players set @s VETmp.BatToggleSleepEvent.firstRunDone 0
execute unless score $ VESys.BatToggleSleepEvent matches 1.. run scoreboard players set $ VESys.BatToggleSleepEvent.isEnabled 0

