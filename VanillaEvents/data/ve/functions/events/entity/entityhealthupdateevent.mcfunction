# Multi-state Event.
execute as @e run scoreboard players operation @s VE.EntityHealthUpdateEvent.priorHealth = @s VE.EntityHealthUpdateEvent.newHealth

# Using the Health-NBT to get the entities current health value
execute as @e store result score @s VE.EntityHealthUpdateEvent.newHealth run data get entity @s Health 100

# Did the entities current health value change since last tick? Fire the event, but ignore if this is the first run. 
execute as @e unless score @s VE.EntityHealthUpdateEvent.priorHealth = @s VE.EntityHealthUpdateEvent.newHealth if score @s VETmp.EntityHealthUpdateEvent.firstRunDone matches 1 run tag @s add VE.EntityHealthUpdateEvent


# Damage or Heal?
execute as @e[tag=VE.EntityHealthUpdateEvent] if score @s VE.EntityHealthUpdateEvent.newHealth > @s VE.EntityHealthUpdateEvent.priorHealth run scoreboard players set @s VE.EntityHealthUpdateEvent.wasPositive 1
execute as @e[tag=VE.EntityHealthUpdateEvent] if score @s VE.EntityHealthUpdateEvent.newHealth > @s VE.EntityHealthUpdateEvent.priorHealth run scoreboard players set @s VE.EntityHealthUpdateEvent.wasNegative 0
execute as @e[tag=VE.EntityHealthUpdateEvent] if score @s VE.EntityHealthUpdateEvent.newHealth < @s VE.EntityHealthUpdateEvent.priorHealth run scoreboard players set @s VE.EntityHealthUpdateEvent.wasNegative 1
execute as @e[tag=VE.EntityHealthUpdateEvent] if score @s VE.EntityHealthUpdateEvent.newHealth < @s VE.EntityHealthUpdateEvent.priorHealth run scoreboard players set @s VE.EntityHealthUpdateEvent.wasPositive 0



# First run done.
execute as @e unless score @s VETmp.EntityHealthUpdateEvent.firstRunDone matches 1 run scoreboard players set @s VETmp.EntityHealthUpdateEvent.firstRunDone 1