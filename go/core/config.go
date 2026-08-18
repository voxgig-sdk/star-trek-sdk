package core

import (
	"sync"
)

// MakeConfig builds a fresh, fully materialised config map. Every call
// rebuilds the whole structure, so prefer SharedConfig unless you need a
// private copy you intend to mutate.
func MakeConfig() map[string]any {
	return map[string]any{
		"main": map[string]any{
			"name": "StarTrek",
		},
		"feature": map[string]any{
			"test": map[string]any{
				"options": map[string]any{
					"active": false,
				},
			},
		},
		"options": map[string]any{
			"base": "https://stapi.co/api/v1/rest",
			"headers": map[string]any{
				"content-type": "application/json",
			},
			"entity": map[string]any{
				"character": map[string]any{},
				"episode": map[string]any{},
				"spacecraft": map[string]any{},
				"species": map[string]any{},
			},
		},
		"entity": map[string]any{
			"character": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "deceased",
						"type": "`$BOOLEAN`",
					},
					map[string]any{
						"name": "fictionalCharacter",
						"type": "`$BOOLEAN`",
					},
					map[string]any{
						"name": "gender",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "height",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "hologram",
						"type": "`$BOOLEAN`",
					},
					map[string]any{
						"name": "name",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "uid",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "weight",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "yearOfBirth",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "yearOfDeath",
						"type": "`$INTEGER`",
					},
				},
				"name": "character",
				"op": map[string]any{
					"list": map[string]any{
						"input": "data",
						"name": "list",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"query": []any{
										map[string]any{
											"kind": "query",
											"name": "gender",
											"orig": "gender",
											"type": "`$STRING`",
										},
										map[string]any{
											"kind": "query",
											"name": "name",
											"orig": "name",
											"type": "`$STRING`",
										},
										map[string]any{
											"example": 0,
											"kind": "query",
											"name": "page_number",
											"orig": "page_number",
											"type": "`$INTEGER`",
										},
										map[string]any{
											"example": 50,
											"kind": "query",
											"name": "page_size",
											"orig": "page_size",
											"type": "`$INTEGER`",
										},
									},
								},
								"kind": "http",
								"method": "GET",
								"orig": "/character/search",
								"parts": []any{
									"character",
									"search",
								},
								"select": map[string]any{
									"$action": "search",
									"exist": []any{
										"gender",
										"name",
										"page_number",
										"page_size",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"episode": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "episodeNumber",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "featureLength",
						"type": "`$BOOLEAN`",
					},
					map[string]any{
						"name": "productionSerialNumber",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "seasonNumber",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "stardateFrom",
						"type": "`$NUMBER`",
					},
					map[string]any{
						"name": "stardateTo",
						"type": "`$NUMBER`",
					},
					map[string]any{
						"name": "title",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "uid",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "usAirDate",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "yearFrom",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "yearTo",
						"type": "`$INTEGER`",
					},
				},
				"name": "episode",
				"op": map[string]any{
					"list": map[string]any{
						"input": "data",
						"name": "list",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"query": []any{
										map[string]any{
											"kind": "query",
											"name": "episode_number",
											"orig": "episode_number",
											"type": "`$INTEGER`",
										},
										map[string]any{
											"example": 0,
											"kind": "query",
											"name": "page_number",
											"orig": "page_number",
											"type": "`$INTEGER`",
										},
										map[string]any{
											"example": 50,
											"kind": "query",
											"name": "page_size",
											"orig": "page_size",
											"type": "`$INTEGER`",
										},
										map[string]any{
											"kind": "query",
											"name": "season_number",
											"orig": "season_number",
											"type": "`$INTEGER`",
										},
										map[string]any{
											"kind": "query",
											"name": "title",
											"orig": "title",
											"type": "`$STRING`",
										},
									},
								},
								"kind": "http",
								"method": "GET",
								"orig": "/episode/search",
								"parts": []any{
									"episode",
									"search",
								},
								"select": map[string]any{
									"$action": "search",
									"exist": []any{
										"episode_number",
										"page_number",
										"page_size",
										"season_number",
										"title",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body`",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"spacecraft": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "dateStatus",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "name",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "operator",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "owner",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "registry",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "spacecraftClass",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "status",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "uid",
						"type": "`$STRING`",
					},
				},
				"name": "spacecraft",
				"op": map[string]any{
					"list": map[string]any{
						"input": "data",
						"name": "list",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"query": []any{
										map[string]any{
											"kind": "query",
											"name": "name",
											"orig": "name",
											"type": "`$STRING`",
										},
										map[string]any{
											"example": 0,
											"kind": "query",
											"name": "page_number",
											"orig": "page_number",
											"type": "`$INTEGER`",
										},
										map[string]any{
											"example": 50,
											"kind": "query",
											"name": "page_size",
											"orig": "page_size",
											"type": "`$INTEGER`",
										},
									},
								},
								"kind": "http",
								"method": "GET",
								"orig": "/spacecraft/search",
								"parts": []any{
									"spacecraft",
									"search",
								},
								"select": map[string]any{
									"$action": "search",
									"exist": []any{
										"name",
										"page_number",
										"page_size",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body.spacecraft`",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"species": map[string]any{
				"fields": []any{
					map[string]any{
						"name": "extinctSpecies",
						"type": "`$BOOLEAN`",
					},
					map[string]any{
						"name": "extraGalacticSpecies",
						"type": "`$BOOLEAN`",
					},
					map[string]any{
						"name": "homeworld",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "humanoidSpecies",
						"type": "`$BOOLEAN`",
					},
					map[string]any{
						"name": "name",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "quadrant",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "uid",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "warpCapableSpecies",
						"type": "`$BOOLEAN`",
					},
				},
				"name": "species",
				"op": map[string]any{
					"list": map[string]any{
						"input": "data",
						"name": "list",
						"points": []any{
							map[string]any{
								"args": map[string]any{
									"query": []any{
										map[string]any{
											"kind": "query",
											"name": "name",
											"orig": "name",
											"type": "`$STRING`",
										},
										map[string]any{
											"example": 0,
											"kind": "query",
											"name": "page_number",
											"orig": "page_number",
											"type": "`$INTEGER`",
										},
										map[string]any{
											"example": 50,
											"kind": "query",
											"name": "page_size",
											"orig": "page_size",
											"type": "`$INTEGER`",
										},
									},
								},
								"kind": "http",
								"method": "GET",
								"orig": "/species/search",
								"parts": []any{
									"species",
									"search",
								},
								"select": map[string]any{
									"$action": "search",
									"exist": []any{
										"name",
										"page_number",
										"page_size",
									},
								},
								"transform": map[string]any{
									"req": "`reqdata`",
									"res": "`body.species`",
								},
							},
						},
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
		},
	}
}

var (
	sharedConfigOnce sync.Once
	sharedConfigVal  map[string]any
)

// SharedConfig returns the process-wide config, built once on first use.
// The SDK reads the config on every request and never writes to it, so one
// instance is shared by every client rather than rebuilt per client.
//
// The returned map is shared: treat it as read-only. Callers that need to
// mutate should use MakeConfig, which always returns a fresh copy.
func SharedConfig() map[string]any {
	sharedConfigOnce.Do(func() {
		sharedConfigVal = MakeConfig()
	})
	return sharedConfigVal
}

func makeFeature(name string) Feature {
	switch name {
	case "test":
		if NewTestFeatureFunc != nil {
			return NewTestFeatureFunc()
		}
	default:
		if NewBaseFeatureFunc != nil {
			return NewBaseFeatureFunc()
		}
	}
	return nil
}
