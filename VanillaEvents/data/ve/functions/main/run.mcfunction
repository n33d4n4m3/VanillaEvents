# PlayerGameModeChangeEvent
execute if score $ VESys.PlayerGameModeChangeEvent matches 1.. run function ve:events/player/playergamemodechangeevent

# PlayerMoveEvent
execute if score $ VESys.PlayerMoveEvent matches 1.. run function ve:events/player/playermoveevent

# PlayerMovementStateTransitionEvent
execute if score $ VESys.PlayerMovementStateTransitionEvent matches 1.. run function ve:events/player/playermovementstatetransitionevent

# EntityHealthUpdateEvent
execute if score $ VESys.EntityHealthUpdateEvent matches 1.. run function ve:events/entity/entityhealthupdateevent

# PlayerAttackEvent
execute if score $ VESys.PlayerAttackEvent matches 1.. as @a[advancements={ve:player_hurt_entity=true}] run function ve:events/player/playerattackevent

# BatToggleSleepEvent
execute if score $ VESys.BatToggleSleepEvent matches 1.. run function ve:events/entity/battogglesleepevent