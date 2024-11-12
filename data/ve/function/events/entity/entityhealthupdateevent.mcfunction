# Multi-state Event.
execute as @e run scoreboard players operation @s VE.EntityHealthUpdateEvent.priorHealth = @s VE.EntityHealthUpdateEvent.newHealth

# Using the Health-NBT to get the entities current health value
execute as @e store result score @s VE.EntityHealthUpdateEvent.newHealth run data get entity @s Health 100

# Did the entities current health value change since last tick? Fire the event, but ignore if this is the first run. 
execute as @e unless score @s VE.EntityHealthUpdateEvent.priorHealth = @s VE.EntityHealthUpdateEvent.newHealth if score @s VETmp.EntityHealthUpdateEvent.firstRunDone matches 1 run tag @s add VE.EntityHealthUpdateEvent

# Calculate the health difference.
execute as @e[tag=VE.EntityHealthUpdateEvent] run scoreboard players operation @s VE.EntityHealthUpdateEvent.difference = @s VE.EntityHealthUpdateEvent.newHealth
execute as @e[tag=VE.EntityHealthUpdateEvent] run scoreboard players operation @s VE.EntityHealthUpdateEvent.difference -= @s VE.EntityHealthUpdateEvent.priorHealth

# Damage or Heal?
execute as @e[tag=VE.EntityHealthUpdateEvent] if score @s VE.EntityHealthUpdateEvent.newHealth > @s VE.EntityHealthUpdateEvent.priorHealth run scoreboard players set @s VE.EntityHealthUpdateEvent.wasPositive 1
execute as @e[tag=VE.EntityHealthUpdateEvent] if score @s VE.EntityHealthUpdateEvent.newHealth > @s VE.EntityHealthUpdateEvent.priorHealth run scoreboard players set @s VE.EntityHealthUpdateEvent.wasNegative 0
execute as @e[tag=VE.EntityHealthUpdateEvent] if score @s VE.EntityHealthUpdateEvent.newHealth < @s VE.EntityHealthUpdateEvent.priorHealth run scoreboard players set @s VE.EntityHealthUpdateEvent.wasNegative 1
execute as @e[tag=VE.EntityHealthUpdateEvent] if score @s VE.EntityHealthUpdateEvent.newHealth < @s VE.EntityHealthUpdateEvent.priorHealth run scoreboard players set @s VE.EntityHealthUpdateEvent.wasPositive 0

# Determine the damage source (only for players)
# Due to a Minecraft bug (MC-178111), querying the damage source properties does not work. Until this bug is fixed, the damageType value will always be -1.

# -1 -> There was no damage / MC-178111
#  0 -> Default (unset)
#  1 -> Explosion
#  2 -> Fire
#  3 -> Lightning
#  4 -> Magic
#  5 -> Projectile

execute as @e[tag=VE.EntityHealthUpdateEvent] if score @s VE.EntityHealthUpdateEvent.wasPositive matches 1 run scoreboard players set @s VE.EntityHealthUpdateEvent.damageType -1
execute as @e[tag=VE.EntityHealthUpdateEvent] if score @s VE.EntityHealthUpdateEvent.wasNegative matches 1 run scoreboard players set @s VE.EntityHealthUpdateEvent.damageType -1

execute as @e[tag=VE.EntityHealthUpdateEvent] if predicate ve:is_explosion run scoreboard players set @s VE.EntityHealthUpdateEvent.damageType 1

execute as @e[tag=VE.EntityHealthUpdateEvent] if predicate ve:is_fire run scoreboard players set @s VE.EntityHealthUpdateEvent.damageType 2

execute as @e[tag=VE.EntityHealthUpdateEvent] if predicate ve:is_lightning run scoreboard players set @s VE.EntityHealthUpdateEvent.damageType 3

execute as @e[tag=VE.EntityHealthUpdateEvent] if predicate ve:is_magic run scoreboard players set @s VE.EntityHealthUpdateEvent.damageType 4

execute as @e[tag=VE.EntityHealthUpdateEvent] if predicate ve:is_projectile run scoreboard players set @s VE.EntityHealthUpdateEvent.damageType 5

# Determine damage bypasses
# Due to a Minecraft bug (MC-178111), querying the damage source properties does not work. Until this bug is fixed, the damageBypass value will always be -1.

# -1 -> There was no damage / MC-178111
#  0 -> No damage bypass
#  1 -> Bypassing armor
#  2 -> Bypassing magic
#  3 -> Bypassing invulnerability

execute as @e[tag=VE.EntityHealthUpdateEvent] if score @s VE.EntityHealthUpdateEvent.wasPositive matches 1 run scoreboard players set @s VE.EntityHealthUpdateEvent.damageBypass -1
execute as @e[tag=VE.EntityHealthUpdateEvent] if score @s VE.EntityHealthUpdateEvent.wasNegative matches 1 run scoreboard players set @s VE.EntityHealthUpdateEvent.damageBypass -1

execute as @e[tag=VE.EntityHealthUpdateEvent] if predicate ve:bypasses_armor run scoreboard players set @s VE.EntityHealthUpdateEvent.damageBypass 1

execute as @e[tag=VE.EntityHealthUpdateEvent] if predicate ve:bypasses_invulnerability run scoreboard players set @s VE.EntityHealthUpdateEvent.damageBypass 2

execute as @e[tag=VE.EntityHealthUpdateEvent] if predicate ve:bypasses_magic run scoreboard players set @s VE.EntityHealthUpdateEvent.damageBypass 3

# damageResisted should be -1 if the entity got healed.
execute as @e[tag=VE.EntityHealthUpdateEvent] if score @s VE.EntityHealthUpdateEvent.wasPositive matches 1 run scoreboard players set @s VE.EntityHealthUpdateEvent.damageResisted -1
# damageResisted x 10
execute as @e[tag=VE.EntityHealthUpdateEvent] if score @s VE.EntityHealthUpdateEvent.damageResisted matches 1.. run scoreboard players operation @s VE.EntityHealthUpdateEvent.damageResisted *= 10 VE.Number

# First run done.
execute as @e unless score @s VETmp.EntityHealthUpdateEvent.firstRunDone matches 1 run scoreboard players set @s VETmp.EntityHealthUpdateEvent.firstRunDone 1