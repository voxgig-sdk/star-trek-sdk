# StarTrek SDK configuration


_shared_config = None


def shared_config():
    """Return the process-wide config, built once on first use.

    The SDK reads the config on every request and never writes to it, so one
    instance is shared by every client rather than rebuilt per client.

    The returned dict is shared: treat it as read-only. Callers that need to
    mutate should use make_config, which always returns a fresh copy.
    """
    global _shared_config
    if _shared_config is None:
        _shared_config = make_config()
    return _shared_config


def make_config():
    """Build a fresh, fully materialised config dict.

    Every call rebuilds the whole structure, so prefer shared_config unless
    you need a private copy you intend to mutate.
    """
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
            "name": "deceased",
            "type": "`$BOOLEAN`",
          },
          {
            "name": "fictionalCharacter",
            "type": "`$BOOLEAN`",
          },
          {
            "name": "gender",
            "type": "`$STRING`",
          },
          {
            "name": "height",
            "type": "`$INTEGER`",
          },
          {
            "name": "hologram",
            "type": "`$BOOLEAN`",
          },
          {
            "name": "name",
            "type": "`$STRING`",
          },
          {
            "name": "uid",
            "type": "`$STRING`",
          },
          {
            "name": "weight",
            "type": "`$INTEGER`",
          },
          {
            "name": "yearOfBirth",
            "type": "`$INTEGER`",
          },
          {
            "name": "yearOfDeath",
            "type": "`$INTEGER`",
          },
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
                      "type": "`$STRING`",
                    },
                    {
                      "kind": "query",
                      "name": "name",
                      "orig": "name",
                      "type": "`$STRING`",
                    },
                    {
                      "example": 0,
                      "kind": "query",
                      "name": "page_number",
                      "orig": "page_number",
                      "type": "`$INTEGER`",
                    },
                    {
                      "example": 50,
                      "kind": "query",
                      "name": "page_size",
                      "orig": "page_size",
                      "type": "`$INTEGER`",
                    },
                  ],
                },
                "kind": "http",
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
              },
            ],
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "episode": {
        "fields": [
          {
            "name": "episodeNumber",
            "type": "`$INTEGER`",
          },
          {
            "name": "featureLength",
            "type": "`$BOOLEAN`",
          },
          {
            "name": "productionSerialNumber",
            "type": "`$STRING`",
          },
          {
            "name": "seasonNumber",
            "type": "`$INTEGER`",
          },
          {
            "name": "stardateFrom",
            "type": "`$NUMBER`",
          },
          {
            "name": "stardateTo",
            "type": "`$NUMBER`",
          },
          {
            "name": "title",
            "type": "`$STRING`",
          },
          {
            "name": "uid",
            "type": "`$STRING`",
          },
          {
            "name": "usAirDate",
            "type": "`$STRING`",
          },
          {
            "name": "yearFrom",
            "type": "`$INTEGER`",
          },
          {
            "name": "yearTo",
            "type": "`$INTEGER`",
          },
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
                      "type": "`$INTEGER`",
                    },
                    {
                      "example": 0,
                      "kind": "query",
                      "name": "page_number",
                      "orig": "page_number",
                      "type": "`$INTEGER`",
                    },
                    {
                      "example": 50,
                      "kind": "query",
                      "name": "page_size",
                      "orig": "page_size",
                      "type": "`$INTEGER`",
                    },
                    {
                      "kind": "query",
                      "name": "season_number",
                      "orig": "season_number",
                      "type": "`$INTEGER`",
                    },
                    {
                      "kind": "query",
                      "name": "title",
                      "orig": "title",
                      "type": "`$STRING`",
                    },
                  ],
                },
                "kind": "http",
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
              },
            ],
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "spacecraft": {
        "fields": [
          {
            "name": "dateStatus",
            "type": "`$STRING`",
          },
          {
            "name": "name",
            "type": "`$STRING`",
          },
          {
            "name": "operator",
            "type": "`$STRING`",
          },
          {
            "name": "owner",
            "type": "`$STRING`",
          },
          {
            "name": "registry",
            "type": "`$STRING`",
          },
          {
            "name": "spacecraftClass",
            "type": "`$STRING`",
          },
          {
            "name": "status",
            "type": "`$STRING`",
          },
          {
            "name": "uid",
            "type": "`$STRING`",
          },
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
                      "type": "`$STRING`",
                    },
                    {
                      "example": 0,
                      "kind": "query",
                      "name": "page_number",
                      "orig": "page_number",
                      "type": "`$INTEGER`",
                    },
                    {
                      "example": 50,
                      "kind": "query",
                      "name": "page_size",
                      "orig": "page_size",
                      "type": "`$INTEGER`",
                    },
                  ],
                },
                "kind": "http",
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
              },
            ],
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
      "species": {
        "fields": [
          {
            "name": "extinctSpecies",
            "type": "`$BOOLEAN`",
          },
          {
            "name": "extraGalacticSpecies",
            "type": "`$BOOLEAN`",
          },
          {
            "name": "homeworld",
            "type": "`$STRING`",
          },
          {
            "name": "humanoidSpecies",
            "type": "`$BOOLEAN`",
          },
          {
            "name": "name",
            "type": "`$STRING`",
          },
          {
            "name": "quadrant",
            "type": "`$STRING`",
          },
          {
            "name": "uid",
            "type": "`$STRING`",
          },
          {
            "name": "warpCapableSpecies",
            "type": "`$BOOLEAN`",
          },
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
                      "type": "`$STRING`",
                    },
                    {
                      "example": 0,
                      "kind": "query",
                      "name": "page_number",
                      "orig": "page_number",
                      "type": "`$INTEGER`",
                    },
                    {
                      "example": 50,
                      "kind": "query",
                      "name": "page_size",
                      "orig": "page_size",
                      "type": "`$INTEGER`",
                    },
                  ],
                },
                "kind": "http",
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
              },
            ],
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
    },
    }
