# VanillaEvents
... is intended to be a scalable Minecraft event library that allows datapack developers to
- listen to events,
- retrieve information/details and
- modify or cancel the events.


### What are events?

Every activity that the player, a sheep or even a block can perform is linked to an event in Minecraft's code. For example, when the player lies down in a bed, the PlayerBedEnterEvent is fired. Minecraft now collects more data about the event, such as where exactly the bed is located and which player is now lying in it. A mod or plugin can listen specifically to this event and send a message when a player lies down in the bed. The player can also be prevented from going to bed by canceling the event.

### What is this datapack for?

Unfortunately, it isn't possible to access these events with functions/datapacks. However, VanillaEvents (VE) tries to recreate these events using commands and scoreboards. It's intended to support the developer in his work: For example, if he wants to specify an action in his datapack when a player interacts with a block, he doesn't have to google or figure out a right-click detection method by himself, he can just use the _VE.PlayerInteractEvent_, just like other installed datapacks can do. This way saves resources and avoids duplicate code.


