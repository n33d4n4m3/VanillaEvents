# Multi-state Event.
execute as @a run scoreboard players operation @s VE.PlayerMoveEvent.fromX = @s VE.PlayerMoveEvent.toX
execute as @a run scoreboard players operation @s VE.PlayerMoveEvent.fromY = @s VE.PlayerMoveEvent.toY
execute as @a run scoreboard players operation @s VE.PlayerMoveEvent.fromZ = @s VE.PlayerMoveEvent.toZ
execute as @a run scoreboard players operation @s VE.PlayerMoveEvent.fromYaw = @s VE.PlayerMoveEvent.toYaw
execute as @a run scoreboard players operation @s VE.PlayerMoveEvent.fromPitch = @s VE.PlayerMoveEvent.toPitch

# Get the players position and rotation.
execute as @a store result score @s VE.PlayerMoveEvent.toX run data get entity @s Pos[0] 100
execute as @a store result score @s VE.PlayerMoveEvent.toY run data get entity @s Pos[1] 100
execute as @a store result score @s VE.PlayerMoveEvent.toZ run data get entity @s Pos[2] 100
execute as @a store result score @s VE.PlayerMoveEvent.toYaw run data get entity @s Rotation[0] 100
execute as @a store result score @s VE.PlayerMoveEvent.toPitch run data get entity @s Rotation[1] 100

# If the players position and/or rotation has changed since the last tick, fire the event, but ignore if this is the first run.
execute as @a unless score @s VE.PlayerMoveEvent.fromX = @s VE.PlayerMoveEvent.toX if score @s VETmp.PlayerMoveEvent.firstRunDone matches 1 run tag @s add VE.PlayerMoveEvent
execute as @a unless score @s VE.PlayerMoveEvent.fromY = @s VE.PlayerMoveEvent.toY if score @s VETmp.PlayerMoveEvent.firstRunDone matches 1 run tag @s add VE.PlayerMoveEvent
execute as @a unless score @s VE.PlayerMoveEvent.fromZ = @s VE.PlayerMoveEvent.toZ if score @s VETmp.PlayerMoveEvent.firstRunDone matches 1 run tag @s add VE.PlayerMoveEvent
execute as @a unless score @s VE.PlayerMoveEvent.fromYaw = @s VE.PlayerMoveEvent.toYaw if score @s VETmp.PlayerMoveEvent.firstRunDone matches 1 run tag @s add VE.PlayerMoveEvent
execute as @a unless score @s VE.PlayerMoveEvent.fromPitch = @s VE.PlayerMoveEvent.toPitch if score @s VETmp.PlayerMoveEvent.firstRunDone matches 1 run tag @s add VE.PlayerMoveEvent

# Modify default = from values
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players operation @s VE.PlayerMoveEvent.modX = @s VE.PlayerMoveEvent.fromX
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players operation @s VE.PlayerMoveEvent.modY = @s VE.PlayerMoveEvent.fromY
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players operation @s VE.PlayerMoveEvent.modZ = @s VE.PlayerMoveEvent.fromZ
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players operation @s VE.PlayerMoveEvent.modYaw = @s VE.PlayerMoveEvent.fromYaw
execute as @a[tag=VE.PlayerMoveEvent] run scoreboard players operation @s VE.PlayerMoveEvent.modPitch = @s VE.PlayerMoveEvent.fromPitch


# Determine boolean values
# Did X change?
execute as @a[tag=VE.PlayerMoveEvent] unless score @s VE.PlayerMoveEvent.fromX = @s VE.PlayerMoveEvent.toX run scoreboard players set @s VE.PlayerMoveEvent.hasXChanged 1
execute as @a[tag=VE.PlayerMoveEvent] unless score @s VE.PlayerMoveEvent.fromX = @s VE.PlayerMoveEvent.toX run scoreboard players set @s VE.PlayerMoveEvent.hasXZChanged 1
execute as @a[tag=VE.PlayerMoveEvent] unless score @s VE.PlayerMoveEvent.fromX = @s VE.PlayerMoveEvent.toX run scoreboard players set @s VE.PlayerMoveEvent.hasPositionChanged 1

# Did Y change? In which direction?
execute as @a[tag=VE.PlayerMoveEvent] unless score @s VE.PlayerMoveEvent.fromY = @s VE.PlayerMoveEvent.toY run scoreboard players set @s VE.PlayerMoveEvent.hasYChanged 1
execute as @a[tag=VE.PlayerMoveEvent] unless score @s VE.PlayerMoveEvent.fromY = @s VE.PlayerMoveEvent.toY run scoreboard players set @s VE.PlayerMoveEvent.hasPositionChanged 1
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.fromY < @s VE.PlayerMoveEvent.toY run scoreboard players set @s VE.PlayerMoveEvent.hasClimbed 1
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.fromY = @s VE.PlayerMoveEvent.toY run scoreboard players set @s VE.PlayerMoveEvent.hasMaintained 1
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.fromY > @s VE.PlayerMoveEvent.toY run scoreboard players set @s VE.PlayerMoveEvent.hasDescended 1

# Did Z change?
execute as @a[tag=VE.PlayerMoveEvent] unless score @s VE.PlayerMoveEvent.fromZ = @s VE.PlayerMoveEvent.toZ run scoreboard players set @s VE.PlayerMoveEvent.hasZChanged 1
execute as @a[tag=VE.PlayerMoveEvent] unless score @s VE.PlayerMoveEvent.fromZ = @s VE.PlayerMoveEvent.toZ run scoreboard players set @s VE.PlayerMoveEvent.hasXZChanged 1
execute as @a[tag=VE.PlayerMoveEvent] unless score @s VE.PlayerMoveEvent.fromZ = @s VE.PlayerMoveEvent.toZ run scoreboard players set @s VE.PlayerMoveEvent.hasPositionChanged 1

# Did Yaw change?
execute as @a[tag=VE.PlayerMoveEvent] unless score @s VE.PlayerMoveEvent.fromYaw = @s VE.PlayerMoveEvent.toYaw run scoreboard players set @s VE.PlayerMoveEvent.hasYawChanged 1
execute as @a[tag=VE.PlayerMoveEvent] unless score @s VE.PlayerMoveEvent.fromYaw = @s VE.PlayerMoveEvent.toYaw run scoreboard players set @s VE.PlayerMoveEvent.hasRotationChanged 1

# Did Pitch change?
execute as @a[tag=VE.PlayerMoveEvent] unless score @s VE.PlayerMoveEvent.fromPitch = @s VE.PlayerMoveEvent.toPitch run scoreboard players set @s VE.PlayerMoveEvent.hasPitchChanged 1
execute as @a[tag=VE.PlayerMoveEvent] unless score @s VE.PlayerMoveEvent.fromPitch = @s VE.PlayerMoveEvent.toPitch run scoreboard players set @s VE.PlayerMoveEvent.hasRotationChanged 1


# Calculate the difference between from/to X-values.
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasXChanged matches 1 run scoreboard players operation @s VE.PlayerMoveEvent.xDiff = @s VE.PlayerMoveEvent.toX
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasXChanged matches 1 run scoreboard players operation @s VE.PlayerMoveEvent.xDiff -= @s VE.PlayerMoveEvent.fromX

# Calculate the difference between from/to Y-values.
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasYChanged matches 1 run scoreboard players operation @s VE.PlayerMoveEvent.yDiff = @s VE.PlayerMoveEvent.toY
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasYChanged matches 1 run scoreboard players operation @s VE.PlayerMoveEvent.yDiff -= @s VE.PlayerMoveEvent.fromY

# Calculate the difference between from/to Z-values.
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasZChanged matches 1 run scoreboard players operation @s VE.PlayerMoveEvent.zDiff = @s VE.PlayerMoveEvent.toZ
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasZChanged matches 1 run scoreboard players operation @s VE.PlayerMoveEvent.zDiff -= @s VE.PlayerMoveEvent.fromZ

# Calculate the difference between from/to Yaw-values.
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasYawChanged matches 1 run scoreboard players operation @s VE.PlayerMoveEvent.yawDiff = @s VE.PlayerMoveEvent.toYaw
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasYawChanged matches 1 run scoreboard players operation @s VE.PlayerMoveEvent.yawDiff -= @s VE.PlayerMoveEvent.fromYaw

# Calculate the difference between from/to Pitch-values.
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasPitchChanged matches 1 run scoreboard players operation @s VE.PlayerMoveEvent.pitchDiff = @s VE.PlayerMoveEvent.toPitch
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasPitchChanged matches 1 run scoreboard players operation @s VE.PlayerMoveEvent.pitchDiff -= @s VE.PlayerMoveEvent.fromPitch


# Calculate 3D-, Horizontal- and Vertical distance.
# TODO: xyzDiffSqrd 
#   3D distance             = sqrt( (xDiff)^2 + (yDiff)^2 + (zDiff)^2 )
#   Horizontal distance     = sqrt( (xDiff)^2 + (zDiff)^2 )
#   Vertical distance       = sqrt( (yDiff)^2 )

# Step 1: Square the differences.
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasXChanged matches 1 run scoreboard players operation @s VETmp.PlayerMoveEvent.xDiffSqrd = @s VE.PlayerMoveEvent.xDiff
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasYChanged matches 1 run scoreboard players operation @s VETmp.PlayerMoveEvent.yDiffSqrd = @s VE.PlayerMoveEvent.yDiff
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasZChanged matches 1 run scoreboard players operation @s VETmp.PlayerMoveEvent.zDiffSqrd = @s VE.PlayerMoveEvent.zDiff
execute as @a[tag=VE.PlayerMoveEvent] unless score @s VETmp.PlayerMoveEvent.xDiffSqrd matches 0 run scoreboard players operation @s VETmp.PlayerMoveEvent.xDiffSqrd *= @s VETmp.PlayerMoveEvent.xDiffSqrd
execute as @a[tag=VE.PlayerMoveEvent] unless score @s VETmp.PlayerMoveEvent.yDiffSqrd matches 0 run scoreboard players operation @s VETmp.PlayerMoveEvent.yDiffSqrd *= @s VETmp.PlayerMoveEvent.yDiffSqrd
execute as @a[tag=VE.PlayerMoveEvent] unless score @s VETmp.PlayerMoveEvent.zDiffSqrd matches 0 run scoreboard players operation @s VETmp.PlayerMoveEvent.zDiffSqrd *= @s VETmp.PlayerMoveEvent.zDiffSqrd

# Step 2: Sum up the squared distances.
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 run scoreboard players operation @s VETmp.PlayerMoveEvent.xyzDiffSqrd = @s VETmp.PlayerMoveEvent.xDiffSqrd
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 run scoreboard players operation @s VETmp.PlayerMoveEvent.xyzDiffSqrd += @s VETmp.PlayerMoveEvent.yDiffSqrd
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 run scoreboard players operation @s VETmp.PlayerMoveEvent.xyzDiffSqrd += @s VETmp.PlayerMoveEvent.zDiffSqrd

execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasXZChanged matches 1 run scoreboard players operation @s VETmp.PlayerMoveEvent.xzDiffSqrd = @s VETmp.PlayerMoveEvent.xDiffSqrd
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasXZChanged matches 1 run scoreboard players operation @s VETmp.PlayerMoveEvent.xzDiffSqrd += @s VETmp.PlayerMoveEvent.zDiffSqrd

# Step 3: Calculate the Square root of the squared distances.
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 run scoreboard players reset @s VEUtil.sqrt.field1
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 run scoreboard players reset @s VEUtil.sqrt.field2
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 run scoreboard players reset @s VEUtil.sqrt.field3
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 run scoreboard players reset @s VEUtil.sqrt.input
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 run scoreboard players reset @s VEUtil.sqrt.output


execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 run scoreboard players operation @s VEUtil.sqrt.input = @s VETmp.PlayerMoveEvent.xyzDiffSqrd
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 run scoreboard players operation @s VEUtil.sqrt.field3 = @s VEUtil.sqrt.input
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 run function ve:util/sqrt
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 run scoreboard players reset @s VEUtil.sqrt.tick
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasPositionChanged matches 1 run scoreboard players operation @s VE.PlayerMoveEvent.distance3D = @s VEUtil.sqrt.output

execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasXZChanged matches 1 run scoreboard players operation @s VEUtil.sqrt.input = @s VETmp.PlayerMoveEvent.xzDiffSqrd
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasXZChanged matches 1 run scoreboard players operation @s VEUtil.sqrt.field3 = @s VEUtil.sqrt.input
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasXZChanged matches 1 run function ve:util/sqrt
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasXZChanged matches 1 run scoreboard players reset @s VEUtil.sqrt.tick
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasXZChanged matches 1 run scoreboard players operation @s VE.PlayerMoveEvent.distanceHorizontal = @s VEUtil.sqrt.output

execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasYChanged matches 1 run scoreboard players operation @s VEUtil.sqrt.input = @s VETmp.PlayerMoveEvent.yDiffSqrd
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasYChanged matches 1 run scoreboard players operation @s VEUtil.sqrt.field3 = @s VEUtil.sqrt.input
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasYChanged matches 1 run function ve:util/sqrt
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasYChanged matches 1 run scoreboard players reset @s VEUtil.sqrt.tick
execute as @a[tag=VE.PlayerMoveEvent] if score @s VE.PlayerMoveEvent.hasYChanged matches 1 run scoreboard players operation @s VE.PlayerMoveEvent.distanceVertical = @s VEUtil.sqrt.output

# First run done.
execute as @a unless score @s VETmp.PlayerMoveEvent.firstRunDone matches 1 run scoreboard players set @s VETmp.PlayerMoveEvent.firstRunDone 1