# StarTrek SDK configuration

module StarTrekConfig
  # Return the process-wide config, built once on first use. The SDK reads
  # the config on every request and never writes to it, so one instance is
  # shared by every client rather than rebuilt per client.
  #
  # The returned hash is shared: treat it as read-only. Callers that need to
  # mutate should use make_config, which always returns a fresh copy.
  def self.shared_config
    @shared_config ||= make_config
  end


  # Build a fresh, fully materialised config hash. Every call rebuilds the
  # whole structure, so prefer shared_config unless you need a private copy
  # you intend to mutate.
  def self.make_config
    {
      "main" => {
        "name" => "StarTrek",
        "slug" => "star-trek",
        "version" => "0.0.1",
        "target" => "rb",
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
              "name" => "deceased",
              "short" => "Whether the character is deceased",
              "type" => "`$BOOLEAN`",
            },
            {
              "name" => "fictionalCharacter",
              "short" => "Whether this is a fictional character within Star Trek",
              "type" => "`$BOOLEAN`",
            },
            {
              "name" => "gender",
              "short" => "Character gender",
              "type" => "`$STRING`",
            },
            {
              "name" => "height",
              "short" => "Height in centimeters",
              "type" => "`$INTEGER`",
            },
            {
              "name" => "hologram",
              "short" => "Whether the character is a hologram",
              "type" => "`$BOOLEAN`",
            },
            {
              "name" => "name",
              "short" => "Character name",
              "type" => "`$STRING`",
            },
            {
              "name" => "uid",
              "short" => "Unique identifier",
              "type" => "`$STRING`",
            },
            {
              "name" => "weight",
              "short" => "Weight in kilograms",
              "type" => "`$INTEGER`",
            },
            {
              "name" => "yearOfBirth",
              "short" => "Year of birth",
              "type" => "`$INTEGER`",
            },
            {
              "name" => "yearOfDeath",
              "short" => "Year of death",
              "type" => "`$INTEGER`",
            },
          ],
          "name" => "character",
          "op" => {
            "list" => {
              "input" => "data",
              "name" => "list",
              "points" => [
                {
                  "args" => {
                    "query" => [
                      {
                        "kind" => "query",
                        "name" => "gender",
                        "orig" => "gender",
                        "type" => "`$STRING`",
                      },
                      {
                        "kind" => "query",
                        "name" => "name",
                        "orig" => "name",
                        "type" => "`$STRING`",
                      },
                      {
                        "example" => 0,
                        "kind" => "query",
                        "name" => "page_number",
                        "orig" => "page_number",
                        "type" => "`$INTEGER`",
                      },
                      {
                        "example" => 50,
                        "kind" => "query",
                        "name" => "page_size",
                        "orig" => "page_size",
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
                },
              ],
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
        "episode" => {
          "fields" => [
            {
              "name" => "episodeNumber",
              "short" => "Episode number",
              "type" => "`$INTEGER`",
            },
            {
              "name" => "featureLength",
              "short" => "Whether this is a feature length episode",
              "type" => "`$BOOLEAN`",
            },
            {
              "name" => "productionSerialNumber",
              "short" => "Production serial number",
              "type" => "`$STRING`",
            },
            {
              "name" => "seasonNumber",
              "short" => "Season number",
              "type" => "`$INTEGER`",
            },
            {
              "name" => "stardateFrom",
              "short" => "Starting stardate",
              "type" => "`$NUMBER`",
            },
            {
              "name" => "stardateTo",
              "short" => "Ending stardate",
              "type" => "`$NUMBER`",
            },
            {
              "name" => "title",
              "short" => "Episode title",
              "type" => "`$STRING`",
            },
            {
              "name" => "uid",
              "short" => "Unique identifier",
              "type" => "`$STRING`",
            },
            {
              "name" => "usAirDate",
              "short" => "US air date",
              "type" => "`$STRING`",
            },
            {
              "name" => "yearFrom",
              "short" => "Starting year",
              "type" => "`$INTEGER`",
            },
            {
              "name" => "yearTo",
              "short" => "Ending year",
              "type" => "`$INTEGER`",
            },
          ],
          "name" => "episode",
          "op" => {
            "list" => {
              "input" => "data",
              "name" => "list",
              "points" => [
                {
                  "args" => {
                    "query" => [
                      {
                        "kind" => "query",
                        "name" => "episode_number",
                        "orig" => "episode_number",
                        "type" => "`$INTEGER`",
                      },
                      {
                        "example" => 0,
                        "kind" => "query",
                        "name" => "page_number",
                        "orig" => "page_number",
                        "type" => "`$INTEGER`",
                      },
                      {
                        "example" => 50,
                        "kind" => "query",
                        "name" => "page_size",
                        "orig" => "page_size",
                        "type" => "`$INTEGER`",
                      },
                      {
                        "kind" => "query",
                        "name" => "season_number",
                        "orig" => "season_number",
                        "type" => "`$INTEGER`",
                      },
                      {
                        "kind" => "query",
                        "name" => "title",
                        "orig" => "title",
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
                },
              ],
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
        "spacecraft" => {
          "fields" => [
            {
              "name" => "dateStatus",
              "short" => "Date of status",
              "type" => "`$STRING`",
            },
            {
              "name" => "name",
              "short" => "Spacecraft name",
              "type" => "`$STRING`",
            },
            {
              "name" => "operator",
              "short" => "Operating organization",
              "type" => "`$STRING`",
            },
            {
              "name" => "owner",
              "short" => "Owner organization",
              "type" => "`$STRING`",
            },
            {
              "name" => "registry",
              "short" => "Registry number",
              "type" => "`$STRING`",
            },
            {
              "name" => "spacecraftClass",
              "short" => "Class of spacecraft",
              "type" => "`$STRING`",
            },
            {
              "name" => "status",
              "short" => "Current status",
              "type" => "`$STRING`",
            },
            {
              "name" => "uid",
              "short" => "Unique identifier",
              "type" => "`$STRING`",
            },
          ],
          "name" => "spacecraft",
          "op" => {
            "list" => {
              "input" => "data",
              "name" => "list",
              "points" => [
                {
                  "args" => {
                    "query" => [
                      {
                        "kind" => "query",
                        "name" => "name",
                        "orig" => "name",
                        "type" => "`$STRING`",
                      },
                      {
                        "example" => 0,
                        "kind" => "query",
                        "name" => "page_number",
                        "orig" => "page_number",
                        "type" => "`$INTEGER`",
                      },
                      {
                        "example" => 50,
                        "kind" => "query",
                        "name" => "page_size",
                        "orig" => "page_size",
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
                },
              ],
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
        "species" => {
          "fields" => [
            {
              "name" => "extinctSpecies",
              "short" => "Whether the species is extinct",
              "type" => "`$BOOLEAN`",
            },
            {
              "name" => "extraGalacticSpecies",
              "short" => "Whether the species is from outside the galaxy",
              "type" => "`$BOOLEAN`",
            },
            {
              "name" => "homeworld",
              "short" => "Name of homeworld",
              "type" => "`$STRING`",
            },
            {
              "name" => "humanoidSpecies",
              "short" => "Whether the species is humanoid",
              "type" => "`$BOOLEAN`",
            },
            {
              "name" => "name",
              "short" => "Species name",
              "type" => "`$STRING`",
            },
            {
              "name" => "quadrant",
              "short" => "Quadrant of origin",
              "type" => "`$STRING`",
            },
            {
              "name" => "uid",
              "short" => "Unique identifier",
              "type" => "`$STRING`",
            },
            {
              "name" => "warpCapableSpecies",
              "short" => "Whether the species is warp capable",
              "type" => "`$BOOLEAN`",
            },
          ],
          "name" => "species",
          "op" => {
            "list" => {
              "input" => "data",
              "name" => "list",
              "points" => [
                {
                  "args" => {
                    "query" => [
                      {
                        "kind" => "query",
                        "name" => "name",
                        "orig" => "name",
                        "type" => "`$STRING`",
                      },
                      {
                        "example" => 0,
                        "kind" => "query",
                        "name" => "page_number",
                        "orig" => "page_number",
                        "type" => "`$INTEGER`",
                      },
                      {
                        "example" => 50,
                        "kind" => "query",
                        "name" => "page_size",
                        "orig" => "page_size",
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
                },
              ],
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
