data modify entity @s AbsorptionAmount set from storage mixedbag:storage root.temp.entity.AbsorptionAmount
data modify entity @s Age set from storage mixedbag:storage root.temp.entity.Age
data modify entity @s AgeLocked set from storage mixedbag:storage root.temp.entity.AgeLocked
data modify entity @s Brain set from storage mixedbag:storage root.temp.entity.Brain
data modify entity @s Bred set from storage mixedbag:storage root.temp.entity.Bred
data modify entity @s CannotEnterHiveTicks set from storage mixedbag:storage root.temp.entity.CannotEnterHiveTicks
data modify entity @s ChestedHorse set from storage mixedbag:storage root.temp.entity.ChestedHorse
data modify entity @s CollarColor set from storage mixedbag:storage root.temp.entity.CollarColor
data modify entity @s Color set from storage mixedbag:storage root.temp.entity.Color
data modify entity @s CropsGrownSincePollination set from storage mixedbag:storage root.temp.entity.CropsGrownSincePollination
data modify entity @s Crouching set from storage mixedbag:storage root.temp.entity.Crouching
data modify entity @s CustomName set from storage mixedbag:storage root.temp.entity.CustomName
data modify entity @s CustomNameVisible set from storage mixedbag:storage root.temp.entity.CustomNameVisible
data modify entity @s EatingHaystack set from storage mixedbag:storage root.temp.entity.EatingHaystack
data modify entity @s EggLayTime set from storage mixedbag:storage root.temp.entity.EggLayTime
data modify entity @s ForcedAge set from storage mixedbag:storage root.temp.entity.ForcedAge
data modify entity @s Glowing set from storage mixedbag:storage root.temp.entity.Glowing
data modify entity @s HasNectar set from storage mixedbag:storage root.temp.entity.HasNectar
data modify entity @s HasStung set from storage mixedbag:storage root.temp.entity.HasStung
data modify entity @s HasVisualFire set from storage mixedbag:storage root.temp.entity.HasVisualFire
data modify entity @s Health set from storage mixedbag:storage root.temp.entity.Health
data modify entity @s HiddenGene set from storage mixedbag:storage root.temp.entity.HiddenGene
data modify entity @s InLove set from storage mixedbag:storage root.temp.entity.InLove
data modify entity @s Invulnerable set from storage mixedbag:storage root.temp.entity.Invulnerable
data modify entity @s Items set from storage mixedbag:storage root.temp.entity.Items
data modify entity @s LastPoseTick set from storage mixedbag:storage root.temp.entity.LastPoseTick
data modify entity @s MainGene set from storage mixedbag:storage root.temp.entity.MainGene
data modify entity @s MoreCarrotTicks set from storage mixedbag:storage root.temp.entity.MoreCarrotTicks
data modify entity @s NoGravity set from storage mixedbag:storage root.temp.entity.NoGravity
data modify entity @s Owner set from storage mixedbag:storage root.temp.entity.Owner
data modify entity @s PersistenceRequired set from storage mixedbag:storage root.temp.entity.PersistenceRequired
data modify entity @s RabbitType set from storage mixedbag:storage root.temp.entity.RabbitType
data modify entity @s Sheared set from storage mixedbag:storage root.temp.entity.Sheared
data modify entity @s Silent set from storage mixedbag:storage root.temp.entity.Silent
data modify entity @s Sitting set from storage mixedbag:storage root.temp.entity.Sitting
data modify entity @s Sleeping set from storage mixedbag:storage root.temp.entity.Sleeping
data modify entity @s Tags set from storage mixedbag:storage root.temp.entity.Tags
data modify entity @s Tame set from storage mixedbag:storage root.temp.entity.Tame
data modify entity @s Temper set from storage mixedbag:storage root.temp.entity.Temper
data modify entity @s Trusted set from storage mixedbag:storage root.temp.entity.Trusted
data modify entity @s Trusting set from storage mixedbag:storage root.temp.entity.Trusting
data modify entity @s Type set from storage mixedbag:storage root.temp.entity.Type
data modify entity @s Variant set from storage mixedbag:storage root.temp.entity.Variant
data modify entity @s active_effects set from storage mixedbag:storage root.temp.entity.active_effects
data modify entity @s attributes set from storage mixedbag:storage root.temp.entity.attributes
data modify entity @s data set from storage mixedbag:storage root.temp.entity.data
data modify entity @s drop_chances set from storage mixedbag:storage root.temp.entity.drop_chances
data modify entity @s equipment.body set from storage mixedbag:storage root.temp.entity.equipment.body
data modify entity @s equipment.saddle set from storage mixedbag:storage root.temp.entity.equipment.saddle
data modify entity @s has_egg set from storage mixedbag:storage root.temp.entity.has_egg
data modify entity @s hive_pos set from storage mixedbag:storage root.temp.entity.hive_pos
data modify entity @s scute_time set from storage mixedbag:storage root.temp.entity.scute_time
data modify entity @s sound_variant set from storage mixedbag:storage root.temp.entity.sound_variant
data modify entity @s state set from storage mixedbag:storage root.temp.entity.state
data modify entity @s stew_effects set from storage mixedbag:storage root.temp.entity.stew_effects
data modify entity @s still_timeou set from storage mixedbag:storage root.temp.entity.still_timeou
data modify entity @s variant set from storage mixedbag:storage root.temp.entity.variant

function mixedbag:item/pet_carrier/deploy/fix_entity
#Following function tag can be used to ensure compatibility between pack by allowing to modify mob's data on deploying 
function #mixedbag:item/pet_carrier/fix_entity

execute at @p positioned ^ ^ ^10 run rotate @s facing ~ ~ ~

#execute at @s run particle minecraft:poof ~ ~1 ~ 0.8 0.25 0.8 0 20
execute at @s run function mixedbag:item/pet_carrier/particles