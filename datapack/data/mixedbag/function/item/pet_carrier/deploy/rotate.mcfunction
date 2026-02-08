data remove storage fathomscr:storage root.temp
data modify storage fathomscr:storage root.temp.entity set from entity @s SelectedItem.components."minecraft:custom_data".fathomscr.horse_data
data modify storage fathomscr:storage root.temp.entity.Motion set from entity @s Motion

execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{fathomscr:{full:1}}] summon minecraft:horse run function fathomscr:item/ornate_bucket/deploy/as_nautilus
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{fathomscr:{full:2}}] summon minecraft:skeleton_nautilus run function fathomscr:item/ornate_bucket/deploy/as_nautilus
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{fathomscr:{full:3}}] summon minecraft:zombie_horse run function fathomscr:item/ornate_bucket/deploy/as_nautilus
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{fathomscr:{full:4}}] summon minecraft:zombie_horse run function fathomscr:item/ornate_bucket/deploy/as_donkey
execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{fathomscr:{full:5}}] summon minecraft:zombie_horse run function fathomscr:item/ornate_bucket/deploy/as_mule
#execute if items entity @s weapon.mainhand minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{fathomscr:{full:6}}] summon minecraft:zombie_horse run function fathomscr:item/ornate_bucket/deploy/as_camel

item modify entity @s weapon.mainhand fathomscr:ornate_bucket/empty

playsound fathomscr:item.ornate_bucket.flute player @a
playsound fathomscr:item.ornate_bucket.summon player @a