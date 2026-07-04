package core

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
						"active": true,
						"name": "deceased",
						"req": false,
						"type": "`$BOOLEAN`",
						"index$": 0,
					},
					map[string]any{
						"active": true,
						"name": "fictional_character",
						"req": false,
						"type": "`$BOOLEAN`",
						"index$": 1,
					},
					map[string]any{
						"active": true,
						"name": "gender",
						"req": false,
						"type": "`$STRING`",
						"index$": 2,
					},
					map[string]any{
						"active": true,
						"name": "height",
						"req": false,
						"type": "`$INTEGER`",
						"index$": 3,
					},
					map[string]any{
						"active": true,
						"name": "hologram",
						"req": false,
						"type": "`$BOOLEAN`",
						"index$": 4,
					},
					map[string]any{
						"active": true,
						"name": "name",
						"req": false,
						"type": "`$STRING`",
						"index$": 5,
					},
					map[string]any{
						"active": true,
						"name": "uid",
						"req": false,
						"type": "`$STRING`",
						"index$": 6,
					},
					map[string]any{
						"active": true,
						"name": "weight",
						"req": false,
						"type": "`$INTEGER`",
						"index$": 7,
					},
					map[string]any{
						"active": true,
						"name": "year_of_birth",
						"req": false,
						"type": "`$INTEGER`",
						"index$": 8,
					},
					map[string]any{
						"active": true,
						"name": "year_of_death",
						"req": false,
						"type": "`$INTEGER`",
						"index$": 9,
					},
				},
				"name": "character",
				"op": map[string]any{
					"list": map[string]any{
						"input": "data",
						"name": "list",
						"points": []any{
							map[string]any{
								"active": true,
								"args": map[string]any{
									"query": []any{
										map[string]any{
											"active": true,
											"kind": "query",
											"name": "gender",
											"orig": "gender",
											"reqd": false,
											"type": "`$STRING`",
										},
										map[string]any{
											"active": true,
											"kind": "query",
											"name": "name",
											"orig": "name",
											"reqd": false,
											"type": "`$STRING`",
										},
										map[string]any{
											"active": true,
											"example": 0,
											"kind": "query",
											"name": "page_number",
											"orig": "page_number",
											"reqd": false,
											"type": "`$INTEGER`",
										},
										map[string]any{
											"active": true,
											"example": 50,
											"kind": "query",
											"name": "page_size",
											"orig": "page_size",
											"reqd": false,
											"type": "`$INTEGER`",
										},
									},
								},
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
								"index$": 0,
							},
						},
						"key$": "list",
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"episode": map[string]any{
				"fields": []any{
					map[string]any{
						"active": true,
						"name": "episode_number",
						"req": false,
						"type": "`$INTEGER`",
						"index$": 0,
					},
					map[string]any{
						"active": true,
						"name": "feature_length",
						"req": false,
						"type": "`$BOOLEAN`",
						"index$": 1,
					},
					map[string]any{
						"active": true,
						"name": "production_serial_number",
						"req": false,
						"type": "`$STRING`",
						"index$": 2,
					},
					map[string]any{
						"active": true,
						"name": "season_number",
						"req": false,
						"type": "`$INTEGER`",
						"index$": 3,
					},
					map[string]any{
						"active": true,
						"name": "stardate_from",
						"req": false,
						"type": "`$NUMBER`",
						"index$": 4,
					},
					map[string]any{
						"active": true,
						"name": "stardate_to",
						"req": false,
						"type": "`$NUMBER`",
						"index$": 5,
					},
					map[string]any{
						"active": true,
						"name": "title",
						"req": false,
						"type": "`$STRING`",
						"index$": 6,
					},
					map[string]any{
						"active": true,
						"name": "uid",
						"req": false,
						"type": "`$STRING`",
						"index$": 7,
					},
					map[string]any{
						"active": true,
						"name": "us_air_date",
						"req": false,
						"type": "`$STRING`",
						"index$": 8,
					},
					map[string]any{
						"active": true,
						"name": "year_from",
						"req": false,
						"type": "`$INTEGER`",
						"index$": 9,
					},
					map[string]any{
						"active": true,
						"name": "year_to",
						"req": false,
						"type": "`$INTEGER`",
						"index$": 10,
					},
				},
				"name": "episode",
				"op": map[string]any{
					"list": map[string]any{
						"input": "data",
						"name": "list",
						"points": []any{
							map[string]any{
								"active": true,
								"args": map[string]any{
									"query": []any{
										map[string]any{
											"active": true,
											"kind": "query",
											"name": "episode_number",
											"orig": "episode_number",
											"reqd": false,
											"type": "`$INTEGER`",
										},
										map[string]any{
											"active": true,
											"example": 0,
											"kind": "query",
											"name": "page_number",
											"orig": "page_number",
											"reqd": false,
											"type": "`$INTEGER`",
										},
										map[string]any{
											"active": true,
											"example": 50,
											"kind": "query",
											"name": "page_size",
											"orig": "page_size",
											"reqd": false,
											"type": "`$INTEGER`",
										},
										map[string]any{
											"active": true,
											"kind": "query",
											"name": "season_number",
											"orig": "season_number",
											"reqd": false,
											"type": "`$INTEGER`",
										},
										map[string]any{
											"active": true,
											"kind": "query",
											"name": "title",
											"orig": "title",
											"reqd": false,
											"type": "`$STRING`",
										},
									},
								},
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
								"index$": 0,
							},
						},
						"key$": "list",
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"spacecraft": map[string]any{
				"fields": []any{
					map[string]any{
						"active": true,
						"name": "date_status",
						"req": false,
						"type": "`$STRING`",
						"index$": 0,
					},
					map[string]any{
						"active": true,
						"name": "name",
						"req": false,
						"type": "`$STRING`",
						"index$": 1,
					},
					map[string]any{
						"active": true,
						"name": "operator",
						"req": false,
						"type": "`$STRING`",
						"index$": 2,
					},
					map[string]any{
						"active": true,
						"name": "owner",
						"req": false,
						"type": "`$STRING`",
						"index$": 3,
					},
					map[string]any{
						"active": true,
						"name": "registry",
						"req": false,
						"type": "`$STRING`",
						"index$": 4,
					},
					map[string]any{
						"active": true,
						"name": "spacecraft_class",
						"req": false,
						"type": "`$STRING`",
						"index$": 5,
					},
					map[string]any{
						"active": true,
						"name": "status",
						"req": false,
						"type": "`$STRING`",
						"index$": 6,
					},
					map[string]any{
						"active": true,
						"name": "uid",
						"req": false,
						"type": "`$STRING`",
						"index$": 7,
					},
				},
				"name": "spacecraft",
				"op": map[string]any{
					"list": map[string]any{
						"input": "data",
						"name": "list",
						"points": []any{
							map[string]any{
								"active": true,
								"args": map[string]any{
									"query": []any{
										map[string]any{
											"active": true,
											"kind": "query",
											"name": "name",
											"orig": "name",
											"reqd": false,
											"type": "`$STRING`",
										},
										map[string]any{
											"active": true,
											"example": 0,
											"kind": "query",
											"name": "page_number",
											"orig": "page_number",
											"reqd": false,
											"type": "`$INTEGER`",
										},
										map[string]any{
											"active": true,
											"example": 50,
											"kind": "query",
											"name": "page_size",
											"orig": "page_size",
											"reqd": false,
											"type": "`$INTEGER`",
										},
									},
								},
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
								"index$": 0,
							},
						},
						"key$": "list",
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
			"species": map[string]any{
				"fields": []any{
					map[string]any{
						"active": true,
						"name": "extinct_species",
						"req": false,
						"type": "`$BOOLEAN`",
						"index$": 0,
					},
					map[string]any{
						"active": true,
						"name": "extra_galactic_species",
						"req": false,
						"type": "`$BOOLEAN`",
						"index$": 1,
					},
					map[string]any{
						"active": true,
						"name": "homeworld",
						"req": false,
						"type": "`$STRING`",
						"index$": 2,
					},
					map[string]any{
						"active": true,
						"name": "humanoid_species",
						"req": false,
						"type": "`$BOOLEAN`",
						"index$": 3,
					},
					map[string]any{
						"active": true,
						"name": "name",
						"req": false,
						"type": "`$STRING`",
						"index$": 4,
					},
					map[string]any{
						"active": true,
						"name": "quadrant",
						"req": false,
						"type": "`$STRING`",
						"index$": 5,
					},
					map[string]any{
						"active": true,
						"name": "uid",
						"req": false,
						"type": "`$STRING`",
						"index$": 6,
					},
					map[string]any{
						"active": true,
						"name": "warp_capable_species",
						"req": false,
						"type": "`$BOOLEAN`",
						"index$": 7,
					},
				},
				"name": "species",
				"op": map[string]any{
					"list": map[string]any{
						"input": "data",
						"name": "list",
						"points": []any{
							map[string]any{
								"active": true,
								"args": map[string]any{
									"query": []any{
										map[string]any{
											"active": true,
											"kind": "query",
											"name": "name",
											"orig": "name",
											"reqd": false,
											"type": "`$STRING`",
										},
										map[string]any{
											"active": true,
											"example": 0,
											"kind": "query",
											"name": "page_number",
											"orig": "page_number",
											"reqd": false,
											"type": "`$INTEGER`",
										},
										map[string]any{
											"active": true,
											"example": 50,
											"kind": "query",
											"name": "page_size",
											"orig": "page_size",
											"reqd": false,
											"type": "`$INTEGER`",
										},
									},
								},
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
								"index$": 0,
							},
						},
						"key$": "list",
					},
				},
				"relations": map[string]any{
					"ancestors": []any{},
				},
			},
		},
	}
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
