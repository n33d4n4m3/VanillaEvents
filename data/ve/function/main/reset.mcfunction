# PlayerGameModeChangeEvent
execute as @a[tag=VE.PlayerGameModeChangeEvent] run tag @s remove VE.PlayerGameModeChangeEvent

# PlayerMoveEvent
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players set @s VE.PlayerMoveEvent.hasPositionChanged 0
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players set @s VE.PlayerMoveEvent.hasRotationChanged 0
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players set @s VE.PlayerMoveEvent.hasXChanged 0
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players set @s VE.PlayerMoveEvent.hasYChanged 0
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players set @s VE.PlayerMoveEvent.hasZChanged 0
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players set @s VE.PlayerMoveEvent.hasXZChanged 0
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players set @s VE.PlayerMoveEvent.hasYawChanged 0
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players set @s VE.PlayerMoveEvent.hasPitchChanged 0
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players set @s VE.PlayerMoveEvent.hasClimbed 0
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players set @s VE.PlayerMoveEvent.hasMaintained 0
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players set @s VE.PlayerMoveEvent.hasDescended 0

execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players set @s VE.PlayerMoveEvent.xDiff 0
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players set @s VE.PlayerMoveEvent.yDiff 0
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players set @s VE.PlayerMoveEvent.zDiff 0
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players set @s VE.PlayerMoveEvent.yawDiff 0
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players set @s VE.PlayerMoveEvent.pitchDiff 0
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players set @s VE.PlayerMoveEvent.distance3D 0
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players set @s VE.PlayerMoveEvent.distanceHorizontal 0
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players set @s VE.PlayerMoveEvent.distanceVertical 0
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players set @s VETmp.PlayerMoveEvent.xDiffSqrd 0
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players set @s VETmp.PlayerMoveEvent.yDiffSqrd 0
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players set @s VETmp.PlayerMoveEvent.zDiffSqrd 0
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players set @s VETmp.PlayerMoveEvent.xzDiffSqrd 0
execute as @a[tag=VE.PlayerMoveEvent] run tag @s remove VE.PlayerMoveEvent

# PlayerMovementStateTransitionEvent
execute as @a[tag=VE.PlayerMovementStateTransitionEvent] run tag @s remove VE.PlayerMovementStateTransitionEvent

# EntityHealthUpdateEvent
execute as @e[tag=VE.EntityHealthUpdateEvent] run scoreboard players set @s VE.EntityHealthUpdateEvent.wasPositive 0
execute as @e[tag=VE.EntityHealthUpdateEvent] run scoreboard players set @s VE.EntityHealthUpdateEvent.wasNegative 0
execute as @e[tag=VE.EntityHealthUpdateEvent] run scoreboard players set @s VE.EntityHealthUpdateEvent.damageType 0
execute as @e[tag=VE.EntityHealthUpdateEvent] run scoreboard players set @s VE.EntityHealthUpdateEvent.damageBypass 0

execute as @e[tag=VE.EntityHealthUpdateEvent] run scoreboard players set @s VE.EntityHealthUpdateEvent.difference 0
execute as @e[tag=VE.EntityHealthUpdateEvent] run tag @s remove VE.EntityHealthUpdateEvent

# PlayerAttackEvent
execute as @a[tag=VE.PlayerAttackEvent] run scoreboard players set @s VE.PlayerAttackEvent.damageDealt 0
execute as @a[tag=VE.PlayerAttackEvent] run scoreboard players set @s VE.PlayerAttackEvent.damageAbsorbed 0
execute as @a[tag=VE.PlayerAttackEvent] run scoreboard players set @s VE.PlayerAttackEvent.damageResisted 0
execute as @a[tag=VE.PlayerAttackEvent] run scoreboard players set @s VE.PlayerAttackEvent.opponentSurvived 0
execute as @a[tag=VE.PlayerAttackEvent] run scoreboard players set @s VE.PlayerAttackEvent.criticalHit 0
execute as @a[tag=VE.PlayerAttackEvent] run scoreboard players set @s VETmp.PlayerAttackEvent.attackDamage 0
execute as @a[tag=VE.PlayerAttackEvent] run scoreboard players set @s VETmp.PlayerAttackEvent.baneLevel 0
execute as @a[tag=VE.PlayerAttackEvent] run scoreboard players set @s VETmp.PlayerAttackEvent.smiteLevel 0
execute as @a[tag=VE.PlayerAttackEvent] run scoreboard players set @s VETmp.PlayerAttackEvent.sharpnessLevel 0
execute as @a[tag=VE.PlayerAttackEvent] run tag @s remove VE.PlayerAttackEvent


# BatToggleSleepEvent
execute as @e[tag=VE.BatToggleSleepEvent] run tag @s remove VE.BatToggleSleepEvent


