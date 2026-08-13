# StarTrek SDK configuration

module StarTrekConfig
  def self.make_config
    {
      "main" => {
        "name" => "StarTrek",
      },
      "feature" => {
        "test" => {
          "options" => {
            "active" => false,
          },
        },
      },
      "options" => {
        "base" => "https://stapi.co/api/v1/rest",
        "headers" => {
          "content-type" => "application/json",
        },
        "entity" => {
          "character" => {},
          "episode" => {},
          "spacecraft" => {},
          "species" => {},
        },
      },
      "entity" => {
        "character" => {
          "fields" => [
            {
              "active" => true,
              "name" => "deceased",
              "req" => false,
              "type" => "`$BOOLEAN`",
              "index$" => 0,
            },
            {
              "active" => true,
              "name" => "fictionalCharacter",
              "req" => false,
              "type" => "`$BOOLEAN`",
              "index$" => 1,
            },
            {
              "active" => true,
              "name" => "gender",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 2,
            },
            {
              "active" => true,
              "name" => "height",
              "req" => false,
              "type" => "`$INTEGER`",
              "index$" => 3,
            },
            {
              "active" => true,
              "name" => "hologram",
              "req" => false,
              "type" => "`$BOOLEAN`",
              "index$" => 4,
            },
            {
              "active" => true,
              "name" => "name",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 5,
            },
            {
              "active" => true,
              "name" => "uid",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 6,
            },
            {
              "active" => true,
              "name" => "weight",
              "req" => false,
              "type" => "`$INTEGER`",
              "index$" => 7,
            },
            {
              "active" => true,
              "name" => "yearOfBirth",
              "req" => false,
              "type" => "`$INTEGER`",
              "index$" => 8,
            },
            {
              "active" => true,
              "name" => "yearOfDeath",
              "req" => false,
              "type" => "`$INTEGER`",
              "index$" => 9,
            },
          ],
          "name" => "character",
          "op" => {
            "list" => {
              "input" => "data",
              "name" => "list",
              "points" => [
                {
                  "active" => true,
                  "args" => {
                    "query" => [
                      {
                        "active" => true,
                        "kind" => "query",
                        "name" => "gender",
                        "orig" => "gender",
                        "reqd" => false,
                        "type" => "`$STRING`",
                      },
                      {
                        "active" => true,
                        "kind" => "query",
                        "name" => "name",
                        "orig" => "name",
                        "reqd" => false,
                        "type" => "`$STRING`",
                      },
                      {
                        "active" => true,
                        "example" => 0,
                        "kind" => "query",
                        "name" => "page_number",
                        "orig" => "page_number",
                        "reqd" => false,
                        "type" => "`$INTEGER`",
                      },
                      {
                        "active" => true,
                        "example" => 50,
                        "kind" => "query",
                        "name" => "page_size",
                        "orig" => "page_size",
                        "reqd" => false,
                        "type" => "`$INTEGER`",
                      },
                    ],
                  },
                  "kind" => "http",
                  "method" => "GET",
                  "orig" => "/character/search",
                  "parts" => [
                    "character",
                    "search",
                  ],
                  "select" => {
                    "$action" => "search",
                    "exist" => [
                      "gender",
                      "name",
                      "page_number",
                      "page_size",
                    ],
                  },
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                  "index$" => 0,
                },
              ],
              "key$" => "list",
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
        "episode" => {
          "fields" => [
            {
              "active" => true,
              "name" => "episodeNumber",
              "req" => false,
              "type" => "`$INTEGER`",
              "index$" => 0,
            },
            {
              "active" => true,
              "name" => "featureLength",
              "req" => false,
              "type" => "`$BOOLEAN`",
              "index$" => 1,
            },
            {
              "active" => true,
              "name" => "productionSerialNumber",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 2,
            },
            {
              "active" => true,
              "name" => "seasonNumber",
              "req" => false,
              "type" => "`$INTEGER`",
              "index$" => 3,
            },
            {
              "active" => true,
              "name" => "stardateFrom",
              "req" => false,
              "type" => "`$NUMBER`",
              "index$" => 4,
            },
            {
              "active" => true,
              "name" => "stardateTo",
              "req" => false,
              "type" => "`$NUMBER`",
              "index$" => 5,
            },
            {
              "active" => true,
              "name" => "title",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 6,
            },
            {
              "active" => true,
              "name" => "uid",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 7,
            },
            {
              "active" => true,
              "name" => "usAirDate",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 8,
            },
            {
              "active" => true,
              "name" => "yearFrom",
              "req" => false,
              "type" => "`$INTEGER`",
              "index$" => 9,
            },
            {
              "active" => true,
              "name" => "yearTo",
              "req" => false,
              "type" => "`$INTEGER`",
              "index$" => 10,
            },
          ],
          "name" => "episode",
          "op" => {
            "list" => {
              "input" => "data",
              "name" => "list",
              "points" => [
                {
                  "active" => true,
                  "args" => {
                    "query" => [
                      {
                        "active" => true,
                        "kind" => "query",
                        "name" => "episode_number",
                        "orig" => "episode_number",
                        "reqd" => false,
                        "type" => "`$INTEGER`",
                      },
                      {
                        "active" => true,
                        "example" => 0,
                        "kind" => "query",
                        "name" => "page_number",
                        "orig" => "page_number",
                        "reqd" => false,
                        "type" => "`$INTEGER`",
                      },
                      {
                        "active" => true,
                        "example" => 50,
                        "kind" => "query",
                        "name" => "page_size",
                        "orig" => "page_size",
                        "reqd" => false,
                        "type" => "`$INTEGER`",
                      },
                      {
                        "active" => true,
                        "kind" => "query",
                        "name" => "season_number",
                        "orig" => "season_number",
                        "reqd" => false,
                        "type" => "`$INTEGER`",
                      },
                      {
                        "active" => true,
                        "kind" => "query",
                        "name" => "title",
                        "orig" => "title",
                        "reqd" => false,
                        "type" => "`$STRING`",
                      },
                    ],
                  },
                  "kind" => "http",
                  "method" => "GET",
                  "orig" => "/episode/search",
                  "parts" => [
                    "episode",
                    "search",
                  ],
                  "select" => {
                    "$action" => "search",
                    "exist" => [
                      "episode_number",
                      "page_number",
                      "page_size",
                      "season_number",
                      "title",
                    ],
                  },
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                  "index$" => 0,
                },
              ],
              "key$" => "list",
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
        "spacecraft" => {
          "fields" => [
            {
              "active" => true,
              "name" => "dateStatus",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 0,
            },
            {
              "active" => true,
              "name" => "name",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 1,
            },
            {
              "active" => true,
              "name" => "operator",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 2,
            },
            {
              "active" => true,
              "name" => "owner",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 3,
            },
            {
              "active" => true,
              "name" => "registry",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 4,
            },
            {
              "active" => true,
              "name" => "spacecraftClass",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 5,
            },
            {
              "active" => true,
              "name" => "status",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 6,
            },
            {
              "active" => true,
              "name" => "uid",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 7,
            },
          ],
          "name" => "spacecraft",
          "op" => {
            "list" => {
              "input" => "data",
              "name" => "list",
              "points" => [
                {
                  "active" => true,
                  "args" => {
                    "query" => [
                      {
                        "active" => true,
                        "kind" => "query",
                        "name" => "name",
                        "orig" => "name",
                        "reqd" => false,
                        "type" => "`$STRING`",
                      },
                      {
                        "active" => true,
                        "example" => 0,
                        "kind" => "query",
                        "name" => "page_number",
                        "orig" => "page_number",
                        "reqd" => false,
                        "type" => "`$INTEGER`",
                      },
                      {
                        "active" => true,
                        "example" => 50,
                        "kind" => "query",
                        "name" => "page_size",
                        "orig" => "page_size",
                        "reqd" => false,
                        "type" => "`$INTEGER`",
                      },
                    ],
                  },
                  "kind" => "http",
                  "method" => "GET",
                  "orig" => "/spacecraft/search",
                  "parts" => [
                    "spacecraft",
                    "search",
                  ],
                  "select" => {
                    "$action" => "search",
                    "exist" => [
                      "name",
                      "page_number",
                      "page_size",
                    ],
                  },
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body.spacecraft`",
                  },
                  "index$" => 0,
                },
              ],
              "key$" => "list",
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
        "species" => {
          "fields" => [
            {
              "active" => true,
              "name" => "extinctSpecies",
              "req" => false,
              "type" => "`$BOOLEAN`",
              "index$" => 0,
            },
            {
              "active" => true,
              "name" => "extraGalacticSpecies",
              "req" => false,
              "type" => "`$BOOLEAN`",
              "index$" => 1,
            },
            {
              "active" => true,
              "name" => "homeworld",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 2,
            },
            {
              "active" => true,
              "name" => "humanoidSpecies",
              "req" => false,
              "type" => "`$BOOLEAN`",
              "index$" => 3,
            },
            {
              "active" => true,
              "name" => "name",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 4,
            },
            {
              "active" => true,
              "name" => "quadrant",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 5,
            },
            {
              "active" => true,
              "name" => "uid",
              "req" => false,
              "type" => "`$STRING`",
              "index$" => 6,
            },
            {
              "active" => true,
              "name" => "warpCapableSpecies",
              "req" => false,
              "type" => "`$BOOLEAN`",
              "index$" => 7,
            },
          ],
          "name" => "species",
          "op" => {
            "list" => {
              "input" => "data",
              "name" => "list",
              "points" => [
                {
                  "active" => true,
                  "args" => {
                    "query" => [
                      {
                        "active" => true,
                        "kind" => "query",
                        "name" => "name",
                        "orig" => "name",
                        "reqd" => false,
                        "type" => "`$STRING`",
                      },
                      {
                        "active" => true,
                        "example" => 0,
                        "kind" => "query",
                        "name" => "page_number",
                        "orig" => "page_number",
                        "reqd" => false,
                        "type" => "`$INTEGER`",
                      },
                      {
                        "active" => true,
                        "example" => 50,
                        "kind" => "query",
                        "name" => "page_size",
                        "orig" => "page_size",
                        "reqd" => false,
                        "type" => "`$INTEGER`",
                      },
                    ],
                  },
                  "kind" => "http",
                  "method" => "GET",
                  "orig" => "/species/search",
                  "parts" => [
                    "species",
                    "search",
                  ],
                  "select" => {
                    "$action" => "search",
                    "exist" => [
                      "name",
                      "page_number",
                      "page_size",
                    ],
                  },
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body.species`",
                  },
                  "index$" => 0,
                },
              ],
              "key$" => "list",
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
      },
    }
  end


  def self.make_feature(name)
    require_relative 'features'
    StarTrekFeatures.make_feature(name)
  end
end
