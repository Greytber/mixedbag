data modify entity @s AbsorptionAmount set from storage mixedbag:temp root.pet_carrier.entity.AbsorptionAmount
data modify entity @s Age set from storage mixedbag:temp root.pet_carrier.entity.Age
data modify entity @s AgeLocked set from storage mixedbag:temp root.pet_carrier.entity.AgeLocked
data modify entity @s Brain set from storage mixedbag:temp root.pet_carrier.entity.Brain
data modify entity @s Bred set from storage mixedbag:temp root.pet_carrier.entity.Bred
data modify entity @s CannotEnterHiveTicks set from storage mixedbag:temp root.pet_carrier.entity.CannotEnterHiveTicks
data modify entity @s ChestedHorse set from storage mixedbag:temp root.pet_carrier.entity.ChestedHorse
data modify entity @s CollarColor set from storage mixedbag:temp root.pet_carrier.entity.CollarColor
data modify entity @s Color set from storage mixedbag:temp root.pet_carrier.entity.Color
data modify entity @s CropsGrownSincePollination set from storage mixedbag:temp root.pet_carrier.entity.CropsGrownSincePollination
data modify entity @s Crouching set from storage mixedbag:temp root.pet_carrier.entity.Crouching
data modify entity @s CustomName set from storage mixedbag:temp root.pet_carrier.entity.CustomName
data modify entity @s CustomNameVisible set from storage mixedbag:temp root.pet_carrier.entity.CustomNameVisible
data modify entity @s EatingHaystack set from storage mixedbag:temp root.pet_carrier.entity.EatingHaystack
data modify entity @s EggLayTime set from storage mixedbag:temp root.pet_carrier.entity.EggLayTime
data modify entity @s ForcedAge set from storage mixedbag:temp root.pet_carrier.entity.ForcedAge
data modify entity @s Glowing set from storage mixedbag:temp root.pet_carrier.entity.Glowing
data modify entity @s HasNectar set from storage mixedbag:temp root.pet_carrier.entity.HasNectar
data modify entity @s HasStung set from storage mixedbag:temp root.pet_carrier.entity.HasStung
data modify entity @s HasVisualFire set from storage mixedbag:temp root.pet_carrier.entity.HasVisualFire
data modify entity @s Health set from storage mixedbag:temp root.pet_carrier.entity.Health
data modify entity @s HiddenGene set from storage mixedbag:temp root.pet_carrier.entity.HiddenGene
data modify entity @s InLove set from storage mixedbag:temp root.pet_carrier.entity.InLove
data modify entity @s Invulnerable set from storage mixedbag:temp root.pet_carrier.entity.Invulnerable
data modify entity @s Items set from storage mixedbag:temp root.pet_carrier.entity.Items
data modify entity @s LastPoseTick set from storage mixedbag:temp root.pet_carrier.entity.LastPoseTick
data modify entity @s MainGene set from storage mixedbag:temp root.pet_carrier.entity.MainGene
data modify entity @s MoreCarrotTicks set from storage mixedbag:temp root.pet_carrier.entity.MoreCarrotTicks
data modify entity @s NoGravity set from storage mixedbag:temp root.pet_carrier.entity.NoGravity
data modify entity @s Owner set from storage mixedbag:temp root.pet_carrier.entity.Owner
data modify entity @s PersistenceRequired set from storage mixedbag:temp root.pet_carrier.entity.PersistenceRequired
data modify entity @s RabbitType set from storage mixedbag:temp root.pet_carrier.entity.RabbitType
data modify entity @s Sheared set from storage mixedbag:temp root.pet_carrier.entity.Sheared
data modify entity @s Silent set from storage mixedbag:temp root.pet_carrier.entity.Silent
data modify entity @s Sitting set from storage mixedbag:temp root.pet_carrier.entity.Sitting
data modify entity @s Sleeping set from storage mixedbag:temp root.pet_carrier.entity.Sleeping
data modify entity @s Tags set from storage mixedbag:temp root.pet_carrier.entity.Tags
data modify entity @s Tame set from storage mixedbag:temp root.pet_carrier.entity.Tame
data modify entity @s Temper set from storage mixedbag:temp root.pet_carrier.entity.Temper
data modify entity @s Trusted set from storage mixedbag:temp root.pet_carrier.entity.Trusted
data modify entity @s Trusting set from storage mixedbag:temp root.pet_carrier.entity.Trusting
data modify entity @s Type set from storage mixedbag:temp root.pet_carrier.entity.Type
data modify entity @s Variant set from storage mixedbag:temp root.pet_carrier.entity.Variant
data modify entity @s active_effects set from storage mixedbag:temp root.pet_carrier.entity.active_effects
data modify entity @s attributes set from storage mixedbag:temp root.pet_carrier.entity.attributes
data modify entity @s data set from storage mixedbag:temp root.pet_carrier.entity.data
data modify entity @s drop_chances set from storage mixedbag:temp root.pet_carrier.entity.drop_chances
data modify entity @s equipment.body set from storage mixedbag:temp root.pet_carrier.entity.equipment.body
data modify entity @s equipment.saddle set from storage mixedbag:temp root.pet_carrier.entity.equipment.saddle
data modify entity @s has_egg set from storage mixedbag:temp root.pet_carrier.entity.has_egg
data modify entity @s hive_pos set from storage mixedbag:temp root.pet_carrier.entity.hive_pos
data modify entity @s scute_time set from storage mixedbag:temp root.pet_carrier.entity.scute_time
data modify entity @s sound_variant set from storage mixedbag:temp root.pet_carrier.entity.sound_variant
data modify entity @s state set from storage mixedbag:temp root.pet_carrier.entity.state
data modify entity @s stew_effects set from storage mixedbag:temp root.pet_carrier.entity.stew_effects
data modify entity @s still_timeou set from storage mixedbag:temp root.pet_carrier.entity.still_timeou
data modify entity @s variant set from storage mixedbag:temp root.pet_carrier.entity.variant

function mixedbag:item/pet_carrier/deploy/fix_entity
#Following function tag can be used to ensure compatibility between pack by allowing to modify mob's data on deploying 
function #mixedbag:item/pet_carrier/fix_entity

execute at @p positioned ^ ^ ^10 run rotate @s facing ~ ~ ~

#execute at @s run particle minecraft:poof ~ ~1 ~ 0.8 0.25 0.8 0 20
execute at @s run function mixedbag:item/pet_carrier/particles