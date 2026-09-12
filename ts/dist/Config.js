"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.FEATURE_PLUGINS = exports.config = void 0;
const TestFeature_1 = require("./feature/test/TestFeature");
const FEATURE_CLASS = {
    test: TestFeature_1.TestFeature,
};
// Per-feature plugin DEFINITIONS (voxgig/plugin `Definition` values), from
// the model's active plugin groups. A feature that takes a `plugins` option
// (secrets over sekreto) reads its own entry; a feature with no plugins has
// none. Named imports above make each definition statically reachable, so
// an SDK carries exactly the plugin modules its model selects — the same
// leanness the old side-effect registry imports bought, without a registry.
const FEATURE_PLUGINS = {};
exports.FEATURE_PLUGINS = FEATURE_PLUGINS;
class Config {
    makeFeature(fn) {
        const fc = FEATURE_CLASS[fn];
        const fi = new fc();
        // TODO: errors etc
        return fi;
    }
    // False for a feature added at runtime via options.extend (station's
    // adopt path) - the constructor uses this to skip makeFeature for names
    // no generated class backs.
    hasFeature(fn) {
        return null != FEATURE_CLASS[fn];
    }
    main = {
        name: 'StarTrek',
        slug: "star-trek",
        version: "0.0.1",
        target: "ts",
    };
    feature = {
        test: {
            "options": {
                "active": false
            },
            "transport": "base"
        },
    };
    options = {
        base: "https://stapi.co/api/v1/rest",
        headers: {
            "content-type": "application/json"
        },
        entity: {
            character: {},
            episode: {},
            spacecraft: {},
            species: {},
        }
    };
    entity = {
        "character": {
            "fields": [
                {
                    "name": "deceased",
                    "short": "Whether the character is deceased",
                    "type": "`$BOOLEAN`"
                },
                {
                    "name": "fictionalCharacter",
                    "short": "Whether this is a fictional character within Star Trek",
                    "type": "`$BOOLEAN`"
                },
                {
                    "name": "gender",
                    "short": "Character gender",
                    "type": "`$STRING`"
                },
                {
                    "name": "height",
                    "short": "Height in centimeters",
                    "type": "`$INTEGER`"
                },
                {
                    "name": "hologram",
                    "short": "Whether the character is a hologram",
                    "type": "`$BOOLEAN`"
                },
                {
                    "name": "name",
                    "short": "Character name",
                    "type": "`$STRING`"
                },
                {
                    "name": "uid",
                    "short": "Unique identifier",
                    "type": "`$STRING`"
                },
                {
                    "name": "weight",
                    "short": "Weight in kilograms",
                    "type": "`$INTEGER`"
                },
                {
                    "name": "yearOfBirth",
                    "short": "Year of birth",
                    "type": "`$INTEGER`"
                },
                {
                    "name": "yearOfDeath",
                    "short": "Year of death",
                    "type": "`$INTEGER`"
                }
            ],
            "name": "character",
            "op": {
                "list": {
                    "input": "data",
                    "name": "list",
                    "points": [
                        {
                            "args": {
                                "query": [
                                    {
                                        "kind": "query",
                                        "name": "gender",
                                        "orig": "gender",
                                        "type": "`$STRING`"
                                    },
                                    {
                                        "kind": "query",
                                        "name": "name",
                                        "orig": "name",
                                        "type": "`$STRING`"
                                    },
                                    {
                                        "example": 0,
                                        "kind": "query",
                                        "name": "page_number",
                                        "orig": "page_number",
                                        "type": "`$INTEGER`"
                                    },
                                    {
                                        "example": 50,
                                        "kind": "query",
                                        "name": "page_size",
                                        "orig": "page_size",
                                        "type": "`$INTEGER`"
                                    }
                                ]
                            },
                            "kind": "http",
                            "method": "GET",
                            "orig": "/character/search",
                            "segments": [
                                {
                                    "lit": "character"
                                },
                                {
                                    "lit": "search"
                                }
                            ],
                            "select": {
                                "$action": "search",
                                "exist": [
                                    "gender",
                                    "name",
                                    "page_number",
                                    "page_size"
                                ]
                            },
                            "transform": {
                                "req": "`reqdata`",
                                "res": "`body`"
                            },
                            "parts": [
                                "character",
                                "search"
                            ]
                        }
                    ]
                }
            },
            "relations": {
                "ancestors": []
            }
        },
        "episode": {
            "fields": [
                {
                    "name": "episodeNumber",
                    "short": "Episode number",
                    "type": "`$INTEGER`"
                },
                {
                    "name": "featureLength",
                    "short": "Whether this is a feature length episode",
                    "type": "`$BOOLEAN`"
                },
                {
                    "name": "productionSerialNumber",
                    "short": "Production serial number",
                    "type": "`$STRING`"
                },
                {
                    "name": "seasonNumber",
                    "short": "Season number",
                    "type": "`$INTEGER`"
                },
                {
                    "format": "float",
                    "name": "stardateFrom",
                    "short": "Starting stardate",
                    "type": "`$NUMBER`"
                },
                {
                    "format": "float",
                    "name": "stardateTo",
                    "short": "Ending stardate",
                    "type": "`$NUMBER`"
                },
                {
                    "name": "title",
                    "short": "Episode title",
                    "type": "`$STRING`"
                },
                {
                    "name": "uid",
                    "short": "Unique identifier",
                    "type": "`$STRING`"
                },
                {
                    "format": "date",
                    "name": "usAirDate",
                    "short": "US air date",
                    "type": "`$STRING`"
                },
                {
                    "name": "yearFrom",
                    "short": "Starting year",
                    "type": "`$INTEGER`"
                },
                {
                    "name": "yearTo",
                    "short": "Ending year",
                    "type": "`$INTEGER`"
                }
            ],
            "name": "episode",
            "op": {
                "list": {
                    "input": "data",
                    "name": "list",
                    "points": [
                        {
                            "args": {
                                "query": [
                                    {
                                        "kind": "query",
                                        "name": "episode_number",
                                        "orig": "episode_number",
                                        "type": "`$INTEGER`"
                                    },
                                    {
                                        "example": 0,
                                        "kind": "query",
                                        "name": "page_number",
                                        "orig": "page_number",
                                        "type": "`$INTEGER`"
                                    },
                                    {
                                        "example": 50,
                                        "kind": "query",
                                        "name": "page_size",
                                        "orig": "page_size",
                                        "type": "`$INTEGER`"
                                    },
                                    {
                                        "kind": "query",
                                        "name": "season_number",
                                        "orig": "season_number",
                                        "type": "`$INTEGER`"
                                    },
                                    {
                                        "kind": "query",
                                        "name": "title",
                                        "orig": "title",
                                        "type": "`$STRING`"
                                    }
                                ]
                            },
                            "kind": "http",
                            "method": "GET",
                            "orig": "/episode/search",
                            "segments": [
                                {
                                    "lit": "episode"
                                },
                                {
                                    "lit": "search"
                                }
                            ],
                            "select": {
                                "$action": "search",
                                "exist": [
                                    "episode_number",
                                    "page_number",
                                    "page_size",
                                    "season_number",
                                    "title"
                                ]
                            },
                            "transform": {
                                "req": "`reqdata`",
                                "res": "`body`"
                            },
                            "parts": [
                                "episode",
                                "search"
                            ]
                        }
                    ]
                }
            },
            "relations": {
                "ancestors": []
            }
        },
        "spacecraft": {
            "fields": [
                {
                    "name": "dateStatus",
                    "short": "Date of status",
                    "type": "`$STRING`"
                },
                {
                    "name": "name",
                    "short": "Spacecraft name",
                    "type": "`$STRING`"
                },
                {
                    "name": "operator",
                    "short": "Operating organization",
                    "type": "`$STRING`"
                },
                {
                    "name": "owner",
                    "short": "Owner organization",
                    "type": "`$STRING`"
                },
                {
                    "name": "registry",
                    "short": "Registry number",
                    "type": "`$STRING`"
                },
                {
                    "name": "spacecraftClass",
                    "short": "Class of spacecraft",
                    "type": "`$STRING`"
                },
                {
                    "name": "status",
                    "short": "Current status",
                    "type": "`$STRING`"
                },
                {
                    "name": "uid",
                    "short": "Unique identifier",
                    "type": "`$STRING`"
                }
            ],
            "name": "spacecraft",
            "op": {
                "list": {
                    "input": "data",
                    "name": "list",
                    "points": [
                        {
                            "args": {
                                "query": [
                                    {
                                        "kind": "query",
                                        "name": "name",
                                        "orig": "name",
                                        "type": "`$STRING`"
                                    },
                                    {
                                        "example": 0,
                                        "kind": "query",
                                        "name": "page_number",
                                        "orig": "page_number",
                                        "type": "`$INTEGER`"
                                    },
                                    {
                                        "example": 50,
                                        "kind": "query",
                                        "name": "page_size",
                                        "orig": "page_size",
                                        "type": "`$INTEGER`"
                                    }
                                ]
                            },
                            "kind": "http",
                            "method": "GET",
                            "orig": "/spacecraft/search",
                            "segments": [
                                {
                                    "lit": "spacecraft"
                                },
                                {
                                    "lit": "search"
                                }
                            ],
                            "select": {
                                "$action": "search",
                                "exist": [
                                    "name",
                                    "page_number",
                                    "page_size"
                                ]
                            },
                            "transform": {
                                "req": "`reqdata`",
                                "res": "`body.spacecraft`"
                            },
                            "parts": [
                                "spacecraft",
                                "search"
                            ]
                        }
                    ]
                }
            },
            "relations": {
                "ancestors": []
            }
        },
        "species": {
            "fields": [
                {
                    "name": "extinctSpecies",
                    "short": "Whether the species is extinct",
                    "type": "`$BOOLEAN`"
                },
                {
                    "name": "extraGalacticSpecies",
                    "short": "Whether the species is from outside the galaxy",
                    "type": "`$BOOLEAN`"
                },
                {
                    "name": "homeworld",
                    "short": "Name of homeworld",
                    "type": "`$STRING`"
                },
                {
                    "name": "humanoidSpecies",
                    "short": "Whether the species is humanoid",
                    "type": "`$BOOLEAN`"
                },
                {
                    "name": "name",
                    "short": "Species name",
                    "type": "`$STRING`"
                },
                {
                    "name": "quadrant",
                    "short": "Quadrant of origin",
                    "type": "`$STRING`"
                },
                {
                    "name": "uid",
                    "short": "Unique identifier",
                    "type": "`$STRING`"
                },
                {
                    "name": "warpCapableSpecies",
                    "short": "Whether the species is warp capable",
                    "type": "`$BOOLEAN`"
                }
            ],
            "name": "species",
            "op": {
                "list": {
                    "input": "data",
                    "name": "list",
                    "points": [
                        {
                            "args": {
                                "query": [
                                    {
                                        "kind": "query",
                                        "name": "name",
                                        "orig": "name",
                                        "type": "`$STRING`"
                                    },
                                    {
                                        "example": 0,
                                        "kind": "query",
                                        "name": "page_number",
                                        "orig": "page_number",
                                        "type": "`$INTEGER`"
                                    },
                                    {
                                        "example": 50,
                                        "kind": "query",
                                        "name": "page_size",
                                        "orig": "page_size",
                                        "type": "`$INTEGER`"
                                    }
                                ]
                            },
                            "kind": "http",
                            "method": "GET",
                            "orig": "/species/search",
                            "segments": [
                                {
                                    "lit": "species"
                                },
                                {
                                    "lit": "search"
                                }
                            ],
                            "select": {
                                "$action": "search",
                                "exist": [
                                    "name",
                                    "page_number",
                                    "page_size"
                                ]
                            },
                            "transform": {
                                "req": "`reqdata`",
                                "res": "`body.species`"
                            },
                            "parts": [
                                "species",
                                "search"
                            ]
                        }
                    ]
                }
            },
            "relations": {
                "ancestors": []
            }
        }
    };
}
const config = new Config();
exports.config = config;
//# sourceMappingURL=Config.js.map