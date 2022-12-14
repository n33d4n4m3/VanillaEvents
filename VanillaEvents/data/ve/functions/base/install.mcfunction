# Base
scoreboard objectives add VESys.installRound dummy
scoreboard players add $ VESys.installRound 1
scoreboard objectives add VE.Number dummy
scoreboard players set -1 VE.Number -1
scoreboard players set 2 VE.Number 2

# Utils
# Square Root
scoreboard objectives add VEUtil.sqrt.input dummy
scoreboard objectives add VEUtil.sqrt.output dummy
scoreboard objectives add VEUtil.sqrt.field1 dummy
scoreboard objectives add VEUtil.sqrt.field2 dummy
scoreboard objectives add VEUtil.sqrt.field3 dummy

# Globals
# currentMovementState
scoreboard objectives add VEGbl.thePlayer.currentMovementState dummy
scoreboard objectives add VETmp.thePlayer.currentMovementState.aviateOneCm minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add VETmp.thePlayer.currentMovementState.boatOneCm minecraft.custom:minecraft.boat_one_cm
scoreboard objectives add VETmp.thePlayer.currentMovementState.climbOneCm minecraft.custom:minecraft.climb_one_cm
scoreboard objectives add VETmp.thePlayer.currentMovementState.flyOneCm minecraft.custom:minecraft.fly_one_cm
scoreboard objectives add VETmp.thePlayer.currentMovementState.horseOneCm minecraft.custom:minecraft.horse_one_cm
scoreboard objectives add VETmp.thePlayer.currentMovementState.minecartOneCm minecraft.custom:minecraft.minecart_one_cm
scoreboard objectives add VETmp.thePlayer.currentMovementState.pigOneCm minecraft.custom:minecraft.pig_one_cm
scoreboard objectives add VETmp.thePlayer.currentMovementState.striderOneCm minecraft.custom:minecraft.strider_one_cm
scoreboard objectives add VETmp.thePlayer.currentMovementState.swimOneCm minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add VETmp.thePlayer.currentMovementState.walkOnWaterOneCm minecraft.custom:minecraft.walk_on_water_one_cm
scoreboard objectives add VETmp.thePlayer.currentMovementState.walkOneCm minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add VETmp.thePlayer.currentMovementState.walkUnderWaterOneCm minecraft.custom:minecraft.walk_under_water_one_cm

# Events
# PlayerGameModeChangeEvent
scoreboard objectives add VESys.PlayerGameModeChangeEvent dummy
scoreboard objectives add VESys.PlayerGameModeChangeEvent.isEnabled dummy
scoreboard objectives add VETmp.PlayerGameModeChangeEvent.firstRunDone dummy
scoreboard objectives add VE.PlayerGameModeChangeEvent.priorGameMode dummy
scoreboard objectives add VE.PlayerGameModeChangeEvent.newGameMode dummy
scoreboard objectives add VE.PlayerGameModeChangeEvent.willModify dummy
scoreboard objectives add VE.PlayerGameModeChangeEvent.modGameMode dummy

# BatToggleSleepEvent
scoreboard objectives add VESys.BatToggleSleepEvent dummy
scoreboard objectives add VESys.BatToggleSleepEvent.isEnabled dummy
scoreboard objectives add VETmp.BatToggleSleepEvent.firstRunDone dummy
scoreboard objectives add VE.BatToggleSleepEvent.priorState dummy
scoreboard objectives add VE.BatToggleSleepEvent.newState dummy

# PlayerMoveEvent
scoreboard objectives add VESys.PlayerMoveEvent dummy
scoreboard objectives add VESys.PlayerMoveEvent.isEnabled dummy
scoreboard objectives add VETmp.PlayerMoveEvent.firstRunDone dummy
scoreboard objectives add VETmp.PlayerMoveEvent.awaitsModify dummy
scoreboard objectives add VE.PlayerMoveEvent.fromX dummy
scoreboard objectives add VE.PlayerMoveEvent.fromY dummy
scoreboard objectives add VE.PlayerMoveEvent.fromZ dummy
scoreboard objectives add VE.PlayerMoveEvent.fromYaw dummy
scoreboard objectives add VE.PlayerMoveEvent.fromPitch dummy
scoreboard objectives add VE.PlayerMoveEvent.toX dummy
scoreboard objectives add VE.PlayerMoveEvent.toY dummy
scoreboard objectives add VE.PlayerMoveEvent.toZ dummy
scoreboard objectives add VE.PlayerMoveEvent.toYaw dummy
scoreboard objectives add VE.PlayerMoveEvent.toPitch dummy
scoreboard objectives add VE.PlayerMoveEvent.xDiff dummy
scoreboard objectives add VE.PlayerMoveEvent.yDiff dummy
scoreboard objectives add VE.PlayerMoveEvent.zDiff dummy
scoreboard objectives add VE.PlayerMoveEvent.yawDiff dummy
scoreboard objectives add VE.PlayerMoveEvent.pitchDiff dummy
scoreboard objectives add VE.PlayerMoveEvent.distance3D dummy
scoreboard objectives add VE.PlayerMoveEvent.distanceHorizontal dummy
scoreboard objectives add VE.PlayerMoveEvent.distanceVertical dummy
scoreboard objectives add VE.PlayerMoveEvent.hasPositionChanged dummy
scoreboard objectives add VE.PlayerMoveEvent.hasRotationChanged dummy
scoreboard objectives add VE.PlayerMoveEvent.hasXChanged dummy
scoreboard objectives add VE.PlayerMoveEvent.hasYChanged dummy
scoreboard objectives add VE.PlayerMoveEvent.hasZChanged dummy
scoreboard objectives add VE.PlayerMoveEvent.hasXZChanged dummy
scoreboard objectives add VE.PlayerMoveEvent.hasYawChanged dummy
scoreboard objectives add VE.PlayerMoveEvent.hasPitchChanged dummy
scoreboard objectives add VE.PlayerMoveEvent.hasClimbed dummy
scoreboard objectives add VE.PlayerMoveEvent.hasMaintained dummy
scoreboard objectives add VE.PlayerMoveEvent.hasDescended dummy
scoreboard objectives add VETmp.PlayerMoveEvent.xDiffSqrd dummy
scoreboard objectives add VETmp.PlayerMoveEvent.yDiffSqrd dummy
scoreboard objectives add VETmp.PlayerMoveEvent.zDiffSqrd dummy
scoreboard objectives add VETmp.PlayerMoveEvent.xzDiffSqrd dummy
scoreboard objectives add VETmp.PlayerMoveEvent.xyzDiffSqrd dummy
scoreboard objectives add VE.PlayerMoveEvent.willModify dummy
scoreboard objectives add VE.PlayerMoveEvent.modX dummy
scoreboard objectives add VE.PlayerMoveEvent.modY dummy
scoreboard objectives add VE.PlayerMoveEvent.modZ dummy
scoreboard objectives add VE.PlayerMoveEvent.modYaw dummy
scoreboard objectives add VE.PlayerMoveEvent.modPitch dummy

# PlayerMovementStateTransitionEvent
scoreboard objectives add VESys.PlayerMovementStateTransitionEvent dummy
scoreboard objectives add VESys.PlayerMovementStateTransitionEvent.isEnabled dummy
scoreboard objectives add VETmp.PlayerMovementStateTransitionEvent.firstRunDone dummy
scoreboard objectives add VE.PlayerMovementStateTransitionEvent.priorMovementState dummy
scoreboard objectives add VE.PlayerMovementStateTransitionEvent.newMovementState dummy

execute if score $ VESys.installRound matches 1 run datapack disable "file/VanillaEvents"
execute if score $ VESys.installRound matches 1 run datapack enable "file/VanillaEvents" first
execute if score $ VESys.installRound matches 1 run tellraw @a ["",{"text":"VE","color":"yellow"},": VanillaEvents (Very unstable development build) was installed successfully."]
execute if score $ VESys.installRound matches 2.. run scoreboard players set $ VESys.installRound 0
