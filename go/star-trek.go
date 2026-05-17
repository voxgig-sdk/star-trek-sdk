package voxgigstartreksdk

import (
	"github.com/voxgig-sdk/star-trek-sdk/go/core"
	"github.com/voxgig-sdk/star-trek-sdk/go/entity"
	"github.com/voxgig-sdk/star-trek-sdk/go/feature"
	_ "github.com/voxgig-sdk/star-trek-sdk/go/utility"
)

// Type aliases preserve external API.
type StarTrekSDK = core.StarTrekSDK
type Context = core.Context
type Utility = core.Utility
type Feature = core.Feature
type Entity = core.Entity
type StarTrekEntity = core.StarTrekEntity
type FetcherFunc = core.FetcherFunc
type Spec = core.Spec
type Result = core.Result
type Response = core.Response
type Operation = core.Operation
type Control = core.Control
type StarTrekError = core.StarTrekError

// BaseFeature from feature package.
type BaseFeature = feature.BaseFeature

func init() {
	core.NewBaseFeatureFunc = func() core.Feature {
		return feature.NewBaseFeature()
	}
	core.NewTestFeatureFunc = func() core.Feature {
		return feature.NewTestFeature()
	}
	core.NewCharacterEntityFunc = func(client *core.StarTrekSDK, entopts map[string]any) core.StarTrekEntity {
		return entity.NewCharacterEntity(client, entopts)
	}
	core.NewEpisodeEntityFunc = func(client *core.StarTrekSDK, entopts map[string]any) core.StarTrekEntity {
		return entity.NewEpisodeEntity(client, entopts)
	}
	core.NewSpacecraftEntityFunc = func(client *core.StarTrekSDK, entopts map[string]any) core.StarTrekEntity {
		return entity.NewSpacecraftEntity(client, entopts)
	}
	core.NewSpeciesEntityFunc = func(client *core.StarTrekSDK, entopts map[string]any) core.StarTrekEntity {
		return entity.NewSpeciesEntity(client, entopts)
	}
}

// Constructor re-exports.
var NewStarTrekSDK = core.NewStarTrekSDK
var TestSDK = core.TestSDK
var NewContext = core.NewContext
var NewSpec = core.NewSpec
var NewResult = core.NewResult
var NewResponse = core.NewResponse
var NewOperation = core.NewOperation
var MakeConfig = core.MakeConfig
var NewBaseFeature = feature.NewBaseFeature
var NewTestFeature = feature.NewTestFeature
