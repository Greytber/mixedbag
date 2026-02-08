#Setting up the raycasting data.

tag @s add vdvray
scoreboard players set #mixedbag.ray.hit mixedbag.dummy 0
scoreboard players set #mixedbag.ray.distance mixedbag.dummy 0

#Activating the raycast. This function will call itself until it is done.

execute anchored eyes run function mixedbag:item/pet_carrier/raycast/ray

#Running custom post-raycast commands.

tag @s remove mixedbag.pet_carrier.user

#Raycasting finished, removing tag from the raycaster.

tag @s remove vdvray