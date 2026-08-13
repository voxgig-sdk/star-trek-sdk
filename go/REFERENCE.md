# StarTrek Golang SDK Reference

Complete API reference for the StarTrek Golang SDK.


## StarTrekSDK

### Constructor

```go
func NewStarTrekSDK(options map[string]any) *StarTrekSDK
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `map[string]any` | SDK configuration options. |
| `options["base"]` | `string` | Base URL for API requests. |
| `options["prefix"]` | `string` | URL prefix appended after base. |
| `options["suffix"]` | `string` | URL suffix appended after path. |
| `options["headers"]` | `map[string]any` | Custom headers for all requests. |
| `options["feature"]` | `map[string]any` | Feature configuration. |
| `options["system"]` | `map[string]any` | System overrides (e.g. custom fetch). |


### Static Methods

#### `Test() *StarTrekSDK`

No-arg convenience constructor for the common no-options test case.

```go
client := sdk.Test()
```

#### `TestSDK(testopts, sdkopts map[string]any) *StarTrekSDK`

Test client with options. Both arguments may be `nil`.

```go
client := sdk.TestSDK(testopts, sdkopts)
```


### Instance Methods

#### `Character(data map[string]any) StarTrekEntity`

Create a new `Character` entity instance. Pass `nil` for no initial data.

#### `Episode(data map[string]any) StarTrekEntity`

Create a new `Episode` entity instance. Pass `nil` for no initial data.

#### `Spacecraft(data map[string]any) StarTrekEntity`

Create a new `Spacecraft` entity instance. Pass `nil` for no initial data.

#### `Species(data map[string]any) StarTrekEntity`

Create a new `Species` entity instance. Pass `nil` for no initial data.

#### `OptionsMap() map[string]any`

Return a deep copy of the current SDK options.

#### `GetUtility() *Utility`

Return a copy of the SDK utility object.

#### `Direct(fetchargs map[string]any) (map[string]any, error)`

Make a direct HTTP request to any API endpoint.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs["path"]` | `string` | URL path with optional `{param}` placeholders. |
| `fetchargs["method"]` | `string` | HTTP method (default: `"GET"`). |
| `fetchargs["params"]` | `map[string]any` | Path parameter values for `{param}` substitution. |
| `fetchargs["query"]` | `map[string]any` | Query string parameters. |
| `fetchargs["headers"]` | `map[string]any` | Request headers (merged with defaults). |
| `fetchargs["body"]` | `any` | Request body (maps are JSON-serialized). |
| `fetchargs["ctrl"]` | `map[string]any` | Control options (e.g. `map[string]any{"explain": true}`). |

**Returns:** `(map[string]any, error)`

#### `Prepare(fetchargs map[string]any) (map[string]any, error)`

Prepare a fetch definition without sending the request. Accepts the
same parameters as `Direct()`.

**Returns:** `(map[string]any, error)`


---

## CharacterEntity

```go
character := client.Character(nil)
fmt.Println(character.GetName()) // "character"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `deceased` | `bool` | No |  |
| `fictionalCharacter` | `bool` | No |  |
| `gender` | `string` | No |  |
| `height` | `int` | No |  |
| `hologram` | `bool` | No |  |
| `name` | `string` | No |  |
| `uid` | `string` | No |  |
| `weight` | `int` | No |  |
| `yearOfBirth` | `int` | No |  |
| `yearOfDeath` | `int` | No |  |

### Operations

#### `List(reqmatch, ctrl map[string]any) (any, error)`

List entities matching the given criteria. Returns an array.

```go
results, err := client.Character(nil).List(nil, nil)
if err != nil {
    panic(err)
}
fmt.Println(results)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `CharacterEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## EpisodeEntity

```go
episode := client.Episode(nil)
fmt.Println(episode.GetName()) // "episode"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `episodeNumber` | `int` | No |  |
| `featureLength` | `bool` | No |  |
| `productionSerialNumber` | `string` | No |  |
| `seasonNumber` | `int` | No |  |
| `stardateFrom` | `float64` | No |  |
| `stardateTo` | `float64` | No |  |
| `title` | `string` | No |  |
| `uid` | `string` | No |  |
| `usAirDate` | `string` | No |  |
| `yearFrom` | `int` | No |  |
| `yearTo` | `int` | No |  |

### Operations

#### `List(reqmatch, ctrl map[string]any) (any, error)`

List entities matching the given criteria. Returns an array.

```go
results, err := client.Episode(nil).List(nil, nil)
if err != nil {
    panic(err)
}
fmt.Println(results)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `EpisodeEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## SpacecraftEntity

```go
spacecraft := client.Spacecraft(nil)
fmt.Println(spacecraft.GetName()) // "spacecraft"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `dateStatus` | `string` | No |  |
| `name` | `string` | No |  |
| `operator` | `string` | No |  |
| `owner` | `string` | No |  |
| `registry` | `string` | No |  |
| `spacecraftClass` | `string` | No |  |
| `status` | `string` | No |  |
| `uid` | `string` | No |  |

### Operations

#### `List(reqmatch, ctrl map[string]any) (any, error)`

List entities matching the given criteria. Returns an array.

```go
results, err := client.Spacecraft(nil).List(nil, nil)
if err != nil {
    panic(err)
}
fmt.Println(results)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `SpacecraftEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## SpeciesEntity

```go
species := client.Species(nil)
fmt.Println(species.GetName()) // "species"
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `extinctSpecies` | `bool` | No |  |
| `extraGalacticSpecies` | `bool` | No |  |
| `homeworld` | `string` | No |  |
| `humanoidSpecies` | `bool` | No |  |
| `name` | `string` | No |  |
| `quadrant` | `string` | No |  |
| `uid` | `string` | No |  |
| `warpCapableSpecies` | `bool` | No |  |

### Operations

#### `List(reqmatch, ctrl map[string]any) (any, error)`

List entities matching the given criteria. Returns an array.

```go
results, err := client.Species(nil).List(nil, nil)
if err != nil {
    panic(err)
}
fmt.Println(results)
```

### Common Methods

#### `Data(args ...any) any`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `Match(args ...any) any`

Get or set the entity match criteria. Works the same as `Data()`.

#### `Make() Entity`

Create a new `SpeciesEntity` instance with the same client and
options.

#### `GetName() string`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```go
client := sdk.NewStarTrekSDK(map[string]any{
    "feature": map[string]any{
        "test": map[string]any{"active": true},
    },
})
```

