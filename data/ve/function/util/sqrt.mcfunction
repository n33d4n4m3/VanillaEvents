scoreboard players add @s VEUtil.sqrt.tick 1

# Using newton's method to get the square root of the input number.
scoreboard players operation @s VEUtil.sqrt.field1 = @s VEUtil.sqrt.input
scoreboard players operation @s VEUtil.sqrt.field1 /= @s VEUtil.sqrt.field3

scoreboard players operation @s VEUtil.sqrt.field2 = @s VEUtil.sqrt.field3
scoreboard players operation @s VEUtil.sqrt.field2 += @s VEUtil.sqrt.field1

scoreboard players operation @s VEUtil.sqrt.field2 /= 2 VE.Number

scoreboard players operation @s VEUtil.sqrt.field1 = @s VEUtil.sqrt.field2


scoreboard players operation @s VEUtil.sqrt.field1 -= @s VEUtil.sqrt.field3
execute if score @s VEUtil.sqrt.field1 matches ..-1 run scoreboard players operation @s VEUtil.sqrt.field1 *= -1 VE.Number



execute if score @s VEUtil.sqrt.field1 matches 1.. unless score @s VEUtil.sqrt.tick matches 100.. run scoreboard players operation @s VEUtil.sqrt.field3 = @s VEUtil.sqrt.field2
execute if score @s VEUtil.sqrt.field1 matches 1.. unless score @s VEUtil.sqrt.tick matches 100.. run function ve:util/sqrt


execute if score @s VEUtil.sqrt.tick matches 100.. run scoreboard players operation @s VEUtil.sqrt.output = @s VEUtil.sqrt.field2
execute if score @s VEUtil.sqrt.field1 matches ..0 run scoreboard players operation @s VEUtil.sqrt.output = @s VEUtil.sqrt.field2
