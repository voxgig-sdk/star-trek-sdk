package core

var UtilityRegistrar func(u *Utility)

var NewBaseFeatureFunc func() Feature

var NewTestFeatureFunc func() Feature

var NewCharacterEntityFunc func(client *StarTrekSDK, entopts map[string]any) StarTrekEntity

var NewEpisodeEntityFunc func(client *StarTrekSDK, entopts map[string]any) StarTrekEntity

var NewSpacecraftEntityFunc func(client *StarTrekSDK, entopts map[string]any) StarTrekEntity

var NewSpeciesEntityFunc func(client *StarTrekSDK, entopts map[string]any) StarTrekEntity

