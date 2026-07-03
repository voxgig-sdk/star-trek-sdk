# StarTrek SDK configuration


def make_config():
    return {
        "main": {
            "name": "StarTrek",
        },
        "feature": {
            "test": {
        "options": {
          "active": False,
        },
      },
        },
        "options": {
            "base": "https://stapi.co/api/v1/rest",
            "auth": {
                "prefix": "Bearer",
            },
            "headers": {
        "content-type": "application/json",
      },
            "entity": {
                "character": {},
                "episode": {},
                "spacecraft": {},
                "species": {},
            },
        },
        "entity": {
      "character": {
        "fields": [
          {
            "active": True,
            "name": "deceased",
            "req": False,
            "type": "`$BOOLEAN`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "fictional_character",
            "req": False,
            "type": "`$BOOLEAN`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "gender",
            "req": False,
            "type": "`$STRING`",
            "index$": 2,
          },
          {
            "active": True,
            "name": "height",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 3,
          },
          {
            "active": True,
            "name": "hologram",
            "req": False,
            "type": "`$BOOLEAN`",
            "index$": 4,
          },
          {
            "active": True,
            "name": "name",
            "req": False,
            "type": "`$STRING`",
            "index$": 5,
          },
          {
            "active": True,
            "name": "uid",
            "req": False,
            "type": "`$STRING`",
            "index$": 6,
          },
          {
            "active": True,
            "name": "weight",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 7,
          },
          {
            "active": True,
            "name": "year_of_birth",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 8,
          },
          {
            "active": True,
            "name": "year_of_death",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 9,
          },
        ],
        "name": "character",
        "op": {
          "list": {
            "input": "data",
            "name": "list",
            "points": [
              {
                "active": True,
                "args": {
                  "query": [
                    {
                      "active": True,
                      "kind": "query",
                      "name": "gender",
                      "orig": "gender",
                      "reqd": False,
                      "type": "`$STRING`",
                    },
                    {
                      "active": True,
                      "kind": "query",
                      "name": "name",
                      "orig": "name",
                      "reqd": False,
                      "type": "`$STRING`",
                    },
                    {
                      "active": True,
                      "example": 0,
                      "kind": "query",
                      "name": "page_number",
                      "orig": "page_number",
                      "reqd": False,
                      "type": "`$INTEGER`",
                    },
                    {
                      "active": True,
                      "example": 50,
                      "kind": "query",
                      "name": "page_size",
                      "orig": "page_size",
                      "reqd": False,
                      "type": "`$INTEGER`",
                    },
                  ],
                },
                "method": "GET",
                "orig": "/character/search",
                "parts": [
                  "character",
                  "search",
                ],
                "select": {
                  "$action": "search",
                  "exist": [
                    "gender",
                    "name",
                    "page_number",
                    "page_size",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "list",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "episode": {
        "fields": [
          {
            "active": True,
            "name": "episode_number",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "feature_length",
            "req": False,
            "type": "`$BOOLEAN`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "production_serial_number",
            "req": False,
            "type": "`$STRING`",
            "index$": 2,
          },
          {
            "active": True,
            "name": "season_number",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 3,
          },
          {
            "active": True,
            "name": "stardate_from",
            "req": False,
            "type": "`$NUMBER`",
            "index$": 4,
          },
          {
            "active": True,
            "name": "stardate_to",
            "req": False,
            "type": "`$NUMBER`",
            "index$": 5,
          },
          {
            "active": True,
            "name": "title",
            "req": False,
            "type": "`$STRING`",
            "index$": 6,
          },
          {
            "active": True,
            "name": "uid",
            "req": False,
            "type": "`$STRING`",
            "index$": 7,
          },
          {
            "active": True,
            "name": "us_air_date",
            "req": False,
            "type": "`$STRING`",
            "index$": 8,
          },
          {
            "active": True,
            "name": "year_from",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 9,
          },
          {
            "active": True,
            "name": "year_to",
            "req": False,
            "type": "`$INTEGER`",
            "index$": 10,
          },
        ],
        "name": "episode",
        "op": {
          "list": {
            "input": "data",
            "name": "list",
            "points": [
              {
                "active": True,
                "args": {
                  "query": [
                    {
                      "active": True,
                      "kind": "query",
                      "name": "episode_number",
                      "orig": "episode_number",
                      "reqd": False,
                      "type": "`$INTEGER`",
                    },
                    {
                      "active": True,
                      "example": 0,
                      "kind": "query",
                      "name": "page_number",
                      "orig": "page_number",
                      "reqd": False,
                      "type": "`$INTEGER`",
                    },
                    {
                      "active": True,
                      "example": 50,
                      "kind": "query",
                      "name": "page_size",
                      "orig": "page_size",
                      "reqd": False,
                      "type": "`$INTEGER`",
                    },
                    {
                      "active": True,
                      "kind": "query",
                      "name": "season_number",
                      "orig": "season_number",
                      "reqd": False,
                      "type": "`$INTEGER`",
                    },
                    {
                      "active": True,
                      "kind": "query",
                      "name": "title",
                      "orig": "title",
                      "reqd": False,
                      "type": "`$STRING`",
                    },
                  ],
                },
                "method": "GET",
                "orig": "/episode/search",
                "parts": [
                  "episode",
                  "search",
                ],
                "select": {
                  "$action": "search",
                  "exist": [
                    "episode_number",
                    "page_number",
                    "page_size",
                    "season_number",
                    "title",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "index$": 0,
              },
            ],
            "key$": "list",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "spacecraft": {
        "fields": [
          {
            "active": True,
            "name": "date_status",
            "req": False,
            "type": "`$STRING`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "name",
            "req": False,
            "type": "`$STRING`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "operator",
            "req": False,
            "type": "`$STRING`",
            "index$": 2,
          },
          {
            "active": True,
            "name": "owner",
            "req": False,
            "type": "`$STRING`",
            "index$": 3,
          },
          {
            "active": True,
            "name": "registry",
            "req": False,
            "type": "`$STRING`",
            "index$": 4,
          },
          {
            "active": True,
            "name": "spacecraft_class",
            "req": False,
            "type": "`$STRING`",
            "index$": 5,
          },
          {
            "active": True,
            "name": "status",
            "req": False,
            "type": "`$STRING`",
            "index$": 6,
          },
          {
            "active": True,
            "name": "uid",
            "req": False,
            "type": "`$STRING`",
            "index$": 7,
          },
        ],
        "name": "spacecraft",
        "op": {
          "list": {
            "input": "data",
            "name": "list",
            "points": [
              {
                "active": True,
                "args": {
                  "query": [
                    {
                      "active": True,
                      "kind": "query",
                      "name": "name",
                      "orig": "name",
                      "reqd": False,
                      "type": "`$STRING`",
                    },
                    {
                      "active": True,
                      "example": 0,
                      "kind": "query",
                      "name": "page_number",
                      "orig": "page_number",
                      "reqd": False,
                      "type": "`$INTEGER`",
                    },
                    {
                      "active": True,
                      "example": 50,
                      "kind": "query",
                      "name": "page_size",
                      "orig": "page_size",
                      "reqd": False,
                      "type": "`$INTEGER`",
                    },
                  ],
                },
                "method": "GET",
                "orig": "/spacecraft/search",
                "parts": [
                  "spacecraft",
                  "search",
                ],
                "select": {
                  "$action": "search",
                  "exist": [
                    "name",
                    "page_number",
                    "page_size",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body.spacecraft`",
                },
                "index$": 0,
              },
            ],
            "key$": "list",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "species": {
        "fields": [
          {
            "active": True,
            "name": "extinct_species",
            "req": False,
            "type": "`$BOOLEAN`",
            "index$": 0,
          },
          {
            "active": True,
            "name": "extra_galactic_species",
            "req": False,
            "type": "`$BOOLEAN`",
            "index$": 1,
          },
          {
            "active": True,
            "name": "homeworld",
            "req": False,
            "type": "`$STRING`",
            "index$": 2,
          },
          {
            "active": True,
            "name": "humanoid_species",
            "req": False,
            "type": "`$BOOLEAN`",
            "index$": 3,
          },
          {
            "active": True,
            "name": "name",
            "req": False,
            "type": "`$STRING`",
            "index$": 4,
          },
          {
            "active": True,
            "name": "quadrant",
            "req": False,
            "type": "`$STRING`",
            "index$": 5,
          },
          {
            "active": True,
            "name": "uid",
            "req": False,
            "type": "`$STRING`",
            "index$": 6,
          },
          {
            "active": True,
            "name": "warp_capable_species",
            "req": False,
            "type": "`$BOOLEAN`",
            "index$": 7,
          },
        ],
        "name": "species",
        "op": {
          "list": {
            "input": "data",
            "name": "list",
            "points": [
              {
                "active": True,
                "args": {
                  "query": [
                    {
                      "active": True,
                      "kind": "query",
                      "name": "name",
                      "orig": "name",
                      "reqd": False,
                      "type": "`$STRING`",
                    },
                    {
                      "active": True,
                      "example": 0,
                      "kind": "query",
                      "name": "page_number",
                      "orig": "page_number",
                      "reqd": False,
                      "type": "`$INTEGER`",
                    },
                    {
                      "active": True,
                      "example": 50,
                      "kind": "query",
                      "name": "page_size",
                      "orig": "page_size",
                      "reqd": False,
                      "type": "`$INTEGER`",
                    },
                  ],
                },
                "method": "GET",
                "orig": "/species/search",
                "parts": [
                  "species",
                  "search",
                ],
                "select": {
                  "$action": "search",
                  "exist": [
                    "name",
                    "page_number",
                    "page_size",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body.species`",
                },
                "index$": 0,
              },
            ],
            "key$": "list",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
    },
    }
