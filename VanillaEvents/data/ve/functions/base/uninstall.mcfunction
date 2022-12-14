# Base
scoreboard objectives remove VESys.installRound
scoreboard objectives remove VE.Number

# Utils
# Square Root
scoreboard objectives remove VEUtil.sqrt.input
scoreboard objectives remove VEUtil.sqrt.output
scoreboard objectives remove VEUtil.sqrt.field1
scoreboard objectives remove VEUtil.sqrt.field2
scoreboard objectives remove VEUtil.sqrt.field3

# Globals
# currentMovementState
scoreboard objectives remove VEGbl.thePlayer.currentMovementState
scoreboard objectives remove VETmp.thePlayer.currentMovementState.aviateOneCm
scoreboard objectives remove VETmp.thePlayer.currentMovementState.boatOneCm
scoreboard objectives remove VETmp.thePlayer.currentMovementState.climbOneCm
scoreboard objectives remove VETmp.thePlayer.currentMovementState.flyOneCm
scoreboard objectives remove VETmp.thePlayer.currentMovementState.horseOneCm
scoreboard objectives remove VETmp.thePlayer.currentMovementState.minecartOneCm
scoreboard objectives remove VETmp.thePlayer.currentMovementState.pigOneCm
scoreboard objectives remove VETmp.thePlayer.currentMovementState.striderOneCm
scoreboard objectives remove VETmp.thePlayer.currentMovementState.swimOneCm
scoreboard objectives remove VETmp.thePlayer.currentMovementState.walkOnWaterOneCm
scoreboard objectives remove VETmp.thePlayer.currentMovementState.walkOneCm
scoreboard objectives remove VETmp.thePlayer.currentMovementState.walkUnderWaterOneCm

# Events
# PlayerGameModeChangeEvent
scoreboard objectives remove VESys.PlayerGameModeChangeEvent
scoreboard objectives remove VESys.PlayerGameModeChangeEvent.isEnabled
scoreboard objectives remove VETmp.PlayerGameModeChangeEvent.firstRunDone
scoreboard objectives remove VE.PlayerGameModeChangeEvent.priorGameMode
scoreboard objectives remove VE.PlayerGameModeChangeEvent.newGameMode
scoreboard objectives remove VE.PlayerGameModeChangeEvent.willModify
scoreboard objectives remove VE.PlayerGameModeChangeEvent.modGameMode

# BatToggleSleepEvent
scoreboard objectives remove VESys.BatToggleSleepEvent
scoreboard objectives remove VESys.BatToggleSleepEvent.isEnabled
scoreboard objectives remove VETmp.BatToggleSleepEvent.firstRunDone
scoreboard objectives remove VE.BatToggleSleepEvent.priorState
scoreboard objectives remove VE.BatToggleSleepEvent.newState

# PlayerMoveEvent
scoreboard objectives remove VESys.PlayerMoveEvent
scoreboard objectives remove VESys.PlayerMoveEvent.isEnabled
scoreboard objectives remove VETmp.PlayerMoveEvent.firstRunDone
scoreboard objectives remove VETmp.PlayerMoveEvent.awaitsModify
scoreboard objectives remove VE.PlayerMoveEvent.fromX
scoreboard objectives remove VE.PlayerMoveEvent.fromY
scoreboard objectives remove VE.PlayerMoveEvent.fromZ
scoreboard objectives remove VE.PlayerMoveEvent.fromYaw
scoreboard objectives remove VE.PlayerMoveEvent.fromPitch
scoreboard objectives remove VE.PlayerMoveEvent.toX
scoreboard objectives remove VE.PlayerMoveEvent.toY
scoreboard objectives remove VE.PlayerMoveEvent.toZ
scoreboard objectives remove VE.PlayerMoveEvent.toYaw
scoreboard objectives remove VE.PlayerMoveEvent.toPitch
scoreboard objectives remove VE.PlayerMoveEvent.xDiff
scoreboard objectives remove VE.PlayerMoveEvent.yDiff
scoreboard objectives remove VE.PlayerMoveEvent.zDiff
scoreboard objectives remove VE.PlayerMoveEvent.yawDiff
scoreboard objectives remove VE.PlayerMoveEvent.pitchDiff
scoreboard objectives remove VE.PlayerMoveEvent.distance3D
scoreboard objectives remove VE.PlayerMoveEvent.distanceHorizontal
scoreboard objectives remove VE.PlayerMoveEvent.distanceVertical
scoreboard objectives remove VE.PlayerMoveEvent.hasPositionChanged
scoreboard objectives remove VE.PlayerMoveEvent.hasRotationChanged
scoreboard objectives remove VE.PlayerMoveEvent.hasXChanged
scoreboard objectives remove VE.PlayerMoveEvent.hasYChanged
scoreboard objectives remove VE.PlayerMoveEvent.hasZChanged
scoreboard objectives remove VE.PlayerMoveEvent.hasXZChanged
scoreboard objectives remove VE.PlayerMoveEvent.hasYawChanged
scoreboard objectives remove VE.PlayerMoveEvent.hasPitchChanged
scoreboard objectives remove VE.PlayerMoveEvent.hasClimbed
scoreboard objectives remove VE.PlayerMoveEvent.hasMaintained
scoreboard objectives remove VE.PlayerMoveEvent.hasDescended
scoreboard objectives remove VETmp.PlayerMoveEvent.xDiffSqrd
scoreboard objectives remove VETmp.PlayerMoveEvent.yDiffSqrd
scoreboard objectives remove VETmp.PlayerMoveEvent.zDiffSqrd
scoreboard objectives remove VETmp.PlayerMoveEvent.xzDiffSqrd
scoreboard objectives remove VETmp.PlayerMoveEvent.xyzDiffSqrd
scoreboard objectives remove VE.PlayerMoveEvent.willModify
scoreboard objectives remove VE.PlayerMoveEvent.manX
scoreboard objectives remove VE.PlayerMoveEvent.manY
scoreboard objectives remove VE.PlayerMoveEvent.manZ
scoreboard objectives remove VE.PlayerMoveEvent.manYaw
scoreboard objectives remove VE.PlayerMoveEvent.manPitch

# PlayerMovementStateTransitionEvent
scoreboard objectives remove VESys.PlayerMovementStateTransitionEvent
scoreboard objectives remove VESys.PlayerMovementStateTransitionEvent.isEnabled
scoreboard objectives remove VETmp.PlayerMovementStateTransitionEvent.firstRunDone
scoreboard objectives remove VE.PlayerMovementStateTransitionEvent.priorMovementState
scoreboard objectives remove VE.PlayerMovementStateTransitionEvent.newMovementState