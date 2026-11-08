#say hiii :333
#$say $(offset)
#$say $(slot)
#$say $(modifier)
#$say $(translation_key)
#$say $(with)
$item modify entity @s $(slot) {type:"minecraft:set_lore",entity:"this",lore:[$(modifier)],mode:"replace_section",offset:$(offset)}