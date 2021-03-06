import crafttweaker.item.IItemStack;

//remove
mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:material:101>);
mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:material:102>);
mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:material:103>);
mods.thermalexpansion.Compactor.removeStorageRecipe(<techreborn:ingot:22>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:sand>, <minecraft:iron_ingot> * 2);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:866>, <thermalfoundation:ore:5>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:866>, <thermalfoundation:ore:7>);
mods.thermalexpansion.Pulverizer.removeRecipe(<thermalfoundation:ore:5>);
mods.thermalexpansion.Pulverizer.removeRecipe(<thermalfoundation:ore:7>);


//add
var coils = [<thermalfoundation:material:513>, <thermalfoundation:material:514>, <thermalfoundation:material:515>] as IItemStack[];
for coil in coils {
    recipes.replaceAllOccurences(<ore:dustRedstone>, <ore:ingotRedstoneAlloy>, coil);
}
recipes.replaceAllOccurences(<ore:gearTin>, <ore:itemMachineChassi>, <thermalexpansion:frame>);
recipes.replaceAllOccurences(<ore:gearCopper>, <ore:itemMachineChassi>, <thermalexpansion:frame:64>);
recipes.replaceAllOccurences(<ore:dustRedstone>, <contenttweaker:dynamo_frame>, <thermalexpansion:dynamo:*>);
recipes.addShaped(<contenttweaker:dynamo_frame>, [[<ore:ingotAluminum>, <ore:blockGlass>, <ore:ingotAluminum>],[<ore:blockGlass>, <ore:itemMachineChassi>, <ore:blockGlass>], [<ore:ingotAluminum>, <ore:blockGlass>, <ore:ingotAluminum>]]);

//Remove platinum from nickel & iridium
mods.thermalexpansion.Pulverizer.addRecipe(<thermalfoundation:material:69> * 2, <thermalfoundation:ore:5>, 4000);
mods.thermalexpansion.Pulverizer.addRecipe(<thermalfoundation:material:71> * 2, <thermalfoundation:ore:7>, 4000);
mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:69> * 3, <thermalfoundation:material:866>, <thermalfoundation:ore:5>, 4000);
mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:material:71> * 3, <thermalfoundation:material:866>, <thermalfoundation:ore:7>, 4000);

//Ore excavation integration
mods.thermalexpansion.Enchanter.addRecipe(<minecraft:enchanted_book>.withTag(<enchantment:oeintegration:oreexcavation>.makeEnchantment(1).makeTag()), <minecraft:book>, <oeintegration:excavatemodifier> * 5, 36000, 4000, false);

//Fix water bottle
mods.thermalexpansion.Transposer.removeFillRecipe(<minecraft:glass_bottle>, <liquid:water> * 250);
mods.thermalexpansion.Transposer.removeExtractRecipe(<minecraft:potion>.withTag({Potion: "minecraft:water"}));

//No Steel
mods.thermalexpansion.InductionSmelter.removeRecipe(<techreborn:dust:13> * 4, <minecraft:iron_ingot>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<techreborn:dust:13> * 4, <techreborn:dust:27>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<techreborn:dust:9> * 4, <minecraft:iron_ingot>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<techreborn:dust:9> * 4, <techreborn:dust:27>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<immersiveengineering:material:6>, <minecraft:iron_ingot>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<immersiveengineering:material:6>, <techreborn:dust:27>);