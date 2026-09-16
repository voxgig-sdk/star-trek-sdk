-- StarTrek SDK configuration

-- Build a fresh, fully materialised config table. Every call rebuilds the
-- whole structure, so prefer require("config_shared") unless you need a
-- private copy you intend to mutate.
local function make_config()
  return {
    main = {
      name = "StarTrek",
      slug = "star-trek",
      version = "0.0.1",
      target = "lua",
    },
    feature = {
      ["ratelimit"] = {
        ["options"] = {
          ["active"] = false,
          ["burst"] = 5,
          ["rate"] = 5,
        },
        ["optspec"] = {
          ["now"] = "`$FUNCTION`",
          ["sleep"] = "`$FUNCTION`",
        },
        ["strict"] = false,
        ["transport"] = "wrap",
      },
      ["retry"] = {
        ["options"] = {
          ["active"] = false,
          ["factor"] = 2,
          ["maxDelay"] = 2000,
          ["minDelay"] = 50,
          ["retries"] = 2,
          ["statuses"] = {
            408,
            425,
            429,
            500,
            502,
            503,
            504,
          },
        },
        ["optspec"] = {
          ["jitter"] = "`$BOOLEAN`",
          ["sleep"] = "`$FUNCTION`",
        },
        ["strict"] = false,
        ["transport"] = "wrap",
      },
      ["test"] = {
        ["options"] = {
          ["active"] = false,
        },
        ["optspec"] = {
          ["entity"] = "`$MAP`",
          ["net"] = "`$MAP`",
        },
        ["strict"] = false,
        ["transport"] = "base",
      },
      ["timeout"] = {
        ["options"] = {
          ["active"] = false,
          ["ms"] = 30000,
        },
        ["optspec"] = {
          ["clearTimer"] = "`$FUNCTION`",
          ["setTimer"] = "`$FUNCTION`",
        },
        ["strict"] = false,
        ["transport"] = "wrap",
      },
    },
    options = {
      base = "https://stapi.co/api/v1/rest",
      headers = {
        ["content-type"] = "application/json",
      },
      entity = {
        ["character"] = {},
        ["episode"] = {},
        ["spacecraft"] = {},
        ["species"] = {},
      },
    },
    entity = {
      ["character"] = {
        ["fields"] = {
          {
            ["name"] = "deceased",
            ["short"] = "Whether the character is deceased",
            ["type"] = "`$BOOLEAN`",
          },
          {
            ["name"] = "fictionalCharacter",
            ["short"] = "Whether this is a fictional character within Star Trek",
            ["type"] = "`$BOOLEAN`",
          },
          {
            ["name"] = "gender",
            ["short"] = "Character gender",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "height",
            ["short"] = "Height in centimeters",
            ["type"] = "`$INTEGER`",
          },
          {
            ["name"] = "hologram",
            ["short"] = "Whether the character is a hologram",
            ["type"] = "`$BOOLEAN`",
          },
          {
            ["name"] = "name",
            ["short"] = "Character name",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "uid",
            ["short"] = "Unique identifier",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "weight",
            ["short"] = "Weight in kilograms",
            ["type"] = "`$INTEGER`",
          },
          {
            ["name"] = "yearOfBirth",
            ["short"] = "Year of birth",
            ["type"] = "`$INTEGER`",
          },
          {
            ["name"] = "yearOfDeath",
            ["short"] = "Year of death",
            ["type"] = "`$INTEGER`",
          },
        },
        ["name"] = "character",
        ["op"] = {
          ["list"] = {
            ["input"] = "data",
            ["name"] = "list",
            ["points"] = {
              {
                ["args"] = {
                  ["query"] = {
                    {
                      ["kind"] = "query",
                      ["name"] = "gender",
                      ["orig"] = "gender",
                      ["type"] = "`$STRING`",
                    },
                    {
                      ["kind"] = "query",
                      ["name"] = "name",
                      ["orig"] = "name",
                      ["type"] = "`$STRING`",
                    },
                    {
                      ["example"] = 0,
                      ["kind"] = "query",
                      ["name"] = "page_number",
                      ["orig"] = "page_number",
                      ["type"] = "`$INTEGER`",
                    },
                    {
                      ["example"] = 50,
                      ["kind"] = "query",
                      ["name"] = "page_size",
                      ["orig"] = "page_size",
                      ["type"] = "`$INTEGER`",
                    },
                  },
                },
                ["kind"] = "http",
                ["method"] = "GET",
                ["orig"] = "/character/search",
                ["segments"] = {
                  {
                    ["lit"] = "character",
                  },
                  {
                    ["lit"] = "search",
                  },
                },
                ["select"] = {
                  ["$action"] = "search",
                  ["exist"] = {
                    "gender",
                    "name",
                    "page_number",
                    "page_size",
                  },
                },
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["parts"] = {
                  "character",
                  "search",
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["episode"] = {
        ["fields"] = {
          {
            ["name"] = "episodeNumber",
            ["short"] = "Episode number",
            ["type"] = "`$INTEGER`",
          },
          {
            ["name"] = "featureLength",
            ["short"] = "Whether this is a feature length episode",
            ["type"] = "`$BOOLEAN`",
          },
          {
            ["name"] = "productionSerialNumber",
            ["short"] = "Production serial number",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "seasonNumber",
            ["short"] = "Season number",
            ["type"] = "`$INTEGER`",
          },
          {
            ["format"] = "float",
            ["name"] = "stardateFrom",
            ["short"] = "Starting stardate",
            ["type"] = "`$NUMBER`",
          },
          {
            ["format"] = "float",
            ["name"] = "stardateTo",
            ["short"] = "Ending stardate",
            ["type"] = "`$NUMBER`",
          },
          {
            ["name"] = "title",
            ["short"] = "Episode title",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "uid",
            ["short"] = "Unique identifier",
            ["type"] = "`$STRING`",
          },
          {
            ["format"] = "date",
            ["name"] = "usAirDate",
            ["short"] = "US air date",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "yearFrom",
            ["short"] = "Starting year",
            ["type"] = "`$INTEGER`",
          },
          {
            ["name"] = "yearTo",
            ["short"] = "Ending year",
            ["type"] = "`$INTEGER`",
          },
        },
        ["name"] = "episode",
        ["op"] = {
          ["list"] = {
            ["input"] = "data",
            ["name"] = "list",
            ["points"] = {
              {
                ["args"] = {
                  ["query"] = {
                    {
                      ["kind"] = "query",
                      ["name"] = "episode_number",
                      ["orig"] = "episode_number",
                      ["type"] = "`$INTEGER`",
                    },
                    {
                      ["example"] = 0,
                      ["kind"] = "query",
                      ["name"] = "page_number",
                      ["orig"] = "page_number",
                      ["type"] = "`$INTEGER`",
                    },
                    {
                      ["example"] = 50,
                      ["kind"] = "query",
                      ["name"] = "page_size",
                      ["orig"] = "page_size",
                      ["type"] = "`$INTEGER`",
                    },
                    {
                      ["kind"] = "query",
                      ["name"] = "season_number",
                      ["orig"] = "season_number",
                      ["type"] = "`$INTEGER`",
                    },
                    {
                      ["kind"] = "query",
                      ["name"] = "title",
                      ["orig"] = "title",
                      ["type"] = "`$STRING`",
                    },
                  },
                },
                ["kind"] = "http",
                ["method"] = "GET",
                ["orig"] = "/episode/search",
                ["segments"] = {
                  {
                    ["lit"] = "episode",
                  },
                  {
                    ["lit"] = "search",
                  },
                },
                ["select"] = {
                  ["$action"] = "search",
                  ["exist"] = {
                    "episode_number",
                    "page_number",
                    "page_size",
                    "season_number",
                    "title",
                  },
                },
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["parts"] = {
                  "episode",
                  "search",
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["spacecraft"] = {
        ["fields"] = {
          {
            ["name"] = "dateStatus",
            ["short"] = "Date of status",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "name",
            ["short"] = "Spacecraft name",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "operator",
            ["short"] = "Operating organization",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "owner",
            ["short"] = "Owner organization",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "registry",
            ["short"] = "Registry number",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "spacecraftClass",
            ["short"] = "Class of spacecraft",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "status",
            ["short"] = "Current status",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "uid",
            ["short"] = "Unique identifier",
            ["type"] = "`$STRING`",
          },
        },
        ["name"] = "spacecraft",
        ["op"] = {
          ["list"] = {
            ["input"] = "data",
            ["name"] = "list",
            ["points"] = {
              {
                ["args"] = {
                  ["query"] = {
                    {
                      ["kind"] = "query",
                      ["name"] = "name",
                      ["orig"] = "name",
                      ["type"] = "`$STRING`",
                    },
                    {
                      ["example"] = 0,
                      ["kind"] = "query",
                      ["name"] = "page_number",
                      ["orig"] = "page_number",
                      ["type"] = "`$INTEGER`",
                    },
                    {
                      ["example"] = 50,
                      ["kind"] = "query",
                      ["name"] = "page_size",
                      ["orig"] = "page_size",
                      ["type"] = "`$INTEGER`",
                    },
                  },
                },
                ["kind"] = "http",
                ["method"] = "GET",
                ["orig"] = "/spacecraft/search",
                ["segments"] = {
                  {
                    ["lit"] = "spacecraft",
                  },
                  {
                    ["lit"] = "search",
                  },
                },
                ["select"] = {
                  ["$action"] = "search",
                  ["exist"] = {
                    "name",
                    "page_number",
                    "page_size",
                  },
                },
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body.spacecraft`",
                },
                ["parts"] = {
                  "spacecraft",
                  "search",
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
      ["species"] = {
        ["fields"] = {
          {
            ["name"] = "extinctSpecies",
            ["short"] = "Whether the species is extinct",
            ["type"] = "`$BOOLEAN`",
          },
          {
            ["name"] = "extraGalacticSpecies",
            ["short"] = "Whether the species is from outside the galaxy",
            ["type"] = "`$BOOLEAN`",
          },
          {
            ["name"] = "homeworld",
            ["short"] = "Name of homeworld",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "humanoidSpecies",
            ["short"] = "Whether the species is humanoid",
            ["type"] = "`$BOOLEAN`",
          },
          {
            ["name"] = "name",
            ["short"] = "Species name",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "quadrant",
            ["short"] = "Quadrant of origin",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "uid",
            ["short"] = "Unique identifier",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "warpCapableSpecies",
            ["short"] = "Whether the species is warp capable",
            ["type"] = "`$BOOLEAN`",
          },
        },
        ["name"] = "species",
        ["op"] = {
          ["list"] = {
            ["input"] = "data",
            ["name"] = "list",
            ["points"] = {
              {
                ["args"] = {
                  ["query"] = {
                    {
                      ["kind"] = "query",
                      ["name"] = "name",
                      ["orig"] = "name",
                      ["type"] = "`$STRING`",
                    },
                    {
                      ["example"] = 0,
                      ["kind"] = "query",
                      ["name"] = "page_number",
                      ["orig"] = "page_number",
                      ["type"] = "`$INTEGER`",
                    },
                    {
                      ["example"] = 50,
                      ["kind"] = "query",
                      ["name"] = "page_size",
                      ["orig"] = "page_size",
                      ["type"] = "`$INTEGER`",
                    },
                  },
                },
                ["kind"] = "http",
                ["method"] = "GET",
                ["orig"] = "/species/search",
                ["segments"] = {
                  {
                    ["lit"] = "species",
                  },
                  {
                    ["lit"] = "search",
                  },
                },
                ["select"] = {
                  ["$action"] = "search",
                  ["exist"] = {
                    "name",
                    "page_number",
                    "page_size",
                  },
                },
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body.species`",
                },
                ["parts"] = {
                  "species",
                  "search",
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
    },
  }
end


local function make_feature(name)
  local features = require("features")
  local factory = features[name]
  if factory ~= nil then
    return factory()
  end
  return features.base()
end


-- Attach make_feature to the SDK class
local function setup_sdk(SDK)
  SDK._make_feature = make_feature
end


return make_config
