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
			"slug": "star-trek",
			"version": "0.0.1",
			"target": "go",
		},
		"feature": map[string]any{
			"ratelimit": map[string]any{
				"options": map[string]any{
					"active": false,
					"burst": 5,
					"rate": 5,
				},
				"optspec": map[string]any{
					"now": "`$FUNCTION`",
					"sleep": "`$FUNCTION`",
				},
				"strict": false,
				"transport": "wrap",
			},
			"retry": map[string]any{
				"options": map[string]any{
					"active": false,
					"factor": 2,
					"maxDelay": 2000,
					"minDelay": 50,
					"retries": 2,
					"statuses": []any{
						408,
						425,
						429,
						500,
						502,
						503,
						504,
					},
				},
				"optspec": map[string]any{
					"jitter": "`$BOOLEAN`",
					"sleep": "`$FUNCTION`",
				},
				"strict": false,
				"transport": "wrap",
			},
			"test": map[string]any{
				"options": map[string]any{
					"active": false,
				},
				"optspec": map[string]any{
					"entity": "`$MAP`",
					"net": "`$MAP`",
				},
				"strict": false,
				"transport": "base",
			},
			"timeout": map[string]any{
				"options": map[string]any{
					"active": false,
					"ms": 30000,
				},
				"optspec": map[string]any{
					"clearTimer": "`$FUNCTION`",
					"setTimer": "`$FUNCTION`",
				},
				"strict": false,
				"transport": "wrap",
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
						"short": "Whether the character is deceased",
						"type": "`$BOOLEAN`",
					},
					map[string]any{
						"name": "fictionalCharacter",
						"short": "Whether this is a fictional character within Star Trek",
						"type": "`$BOOLEAN`",
					},
					map[string]any{
						"name": "gender",
						"short": "Character gender",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "height",
						"short": "Height in centimeters",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "hologram",
						"short": "Whether the character is a hologram",
						"type": "`$BOOLEAN`",
					},
					map[string]any{
						"name": "name",
						"short": "Character name",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "uid",
						"short": "Unique identifier",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "weight",
						"short": "Weight in kilograms",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "yearOfBirth",
						"short": "Year of birth",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "yearOfDeath",
						"short": "Year of death",
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
								"segments": []any{
									map[string]any{
										"lit": "character",
									},
									map[string]any{
										"lit": "search",
									},
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
								"parts": []any{
									"character",
									"search",
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
						"short": "Episode number",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "featureLength",
						"short": "Whether this is a feature length episode",
						"type": "`$BOOLEAN`",
					},
					map[string]any{
						"name": "productionSerialNumber",
						"short": "Production serial number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "seasonNumber",
						"short": "Season number",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"format": "float",
						"name": "stardateFrom",
						"short": "Starting stardate",
						"type": "`$NUMBER`",
					},
					map[string]any{
						"format": "float",
						"name": "stardateTo",
						"short": "Ending stardate",
						"type": "`$NUMBER`",
					},
					map[string]any{
						"name": "title",
						"short": "Episode title",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "uid",
						"short": "Unique identifier",
						"type": "`$STRING`",
					},
					map[string]any{
						"format": "date",
						"name": "usAirDate",
						"short": "US air date",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "yearFrom",
						"short": "Starting year",
						"type": "`$INTEGER`",
					},
					map[string]any{
						"name": "yearTo",
						"short": "Ending year",
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
								"segments": []any{
									map[string]any{
										"lit": "episode",
									},
									map[string]any{
										"lit": "search",
									},
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
								"parts": []any{
									"episode",
									"search",
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
						"short": "Date of status",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "name",
						"short": "Spacecraft name",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "operator",
						"short": "Operating organization",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "owner",
						"short": "Owner organization",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "registry",
						"short": "Registry number",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "spacecraftClass",
						"short": "Class of spacecraft",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "status",
						"short": "Current status",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "uid",
						"short": "Unique identifier",
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
								"segments": []any{
									map[string]any{
										"lit": "spacecraft",
									},
									map[string]any{
										"lit": "search",
									},
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
								"parts": []any{
									"spacecraft",
									"search",
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
						"short": "Whether the species is extinct",
						"type": "`$BOOLEAN`",
					},
					map[string]any{
						"name": "extraGalacticSpecies",
						"short": "Whether the species is from outside the galaxy",
						"type": "`$BOOLEAN`",
					},
					map[string]any{
						"name": "homeworld",
						"short": "Name of homeworld",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "humanoidSpecies",
						"short": "Whether the species is humanoid",
						"type": "`$BOOLEAN`",
					},
					map[string]any{
						"name": "name",
						"short": "Species name",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "quadrant",
						"short": "Quadrant of origin",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "uid",
						"short": "Unique identifier",
						"type": "`$STRING`",
					},
					map[string]any{
						"name": "warpCapableSpecies",
						"short": "Whether the species is warp capable",
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
								"segments": []any{
									map[string]any{
										"lit": "species",
									},
									map[string]any{
										"lit": "search",
									},
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
								"parts": []any{
									"species",
									"search",
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

// The plugin definitions the model selected per feature, as []any so a
// feature package can consume them without core naming its types. Empty
// when no active feature declares active plugin groups for this target.
var featurePlugins = map[string][]any{
}

// FeaturePlugins is the definitions list for one feature's chain.
func FeaturePlugins(name string) []any {
	return featurePlugins[name]
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
	case "ratelimit":
		if NewRatelimitFeatureFunc != nil {
			return NewRatelimitFeatureFunc()
		}
	case "retry":
		if NewRetryFeatureFunc != nil {
			return NewRetryFeatureFunc()
		}
	case "test":
		if NewTestFeatureFunc != nil {
			return NewTestFeatureFunc()
		}
	case "timeout":
		if NewTimeoutFeatureFunc != nil {
			return NewTimeoutFeatureFunc()
		}
	default:
		if NewBaseFeatureFunc != nil {
			return NewBaseFeatureFunc()
		}
	}
	return nil
}
