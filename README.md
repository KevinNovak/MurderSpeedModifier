## Description

![Murder Speed Modifier](https://i.imgur.com/Sp8kXJF.png)

Allows you to adjust to adjust the speeds of players in the Garry's Mod Murder gamemode. Can change walking speed, running speed, and whether running is enabled for both murderer and bystanders.

By default, bystanders are now allowed to run (at a slower speed than the murderer).

See the **Configuration** section to adjust these values.

## Requirements

1. [Murder](https://steamcommunity.com/sharedfiles/filedetails/?id=187073946) by [Mechanical Mind](https://steamcommunity.com/id/mechanicalmind)

## Installation

This addon only runs server-side. No need to add to a collection.

1. Install the above requirements.
2. [Subscribe to this addon](https://steamcommunity.com/sharedfiles/filedetails/?id=1623107234).
3. Locate the Murder Speed Modifier gma file in your steam install directory, under `steamapps\common\GarrysMod\garrysmod\addons`.
4. Move the gma file into your servers `garrysmod\addons` folder.

## Configuration

If you'd like, place these variables inside your `server.cfg` file.

### Murderer

* `msm_murderer_walk_speed` - The speed that the murderer should walk.
  * *Default*: 250
* `msm_murderer_can_run` - Whether or not the murderer can run.
  * 1 to enable, 0 to disable.
  * *Default*: 1
* `msm_murderer_run_speed` - The speed that the murderer should run.
  * *Default*: 310

### Bystander

* `msm_bystander_walk_speed` - The speed that bystanders should walk.
  * *Default*: 250
* `msm_bystander_can_run` - Whether or not bystanders can run.
  * 1 to enable, 0 to disable.
  * *Default*: 1
* `msm_bystander_run_speed` - The speed that bystanders should run.
  * *Default*: 290
