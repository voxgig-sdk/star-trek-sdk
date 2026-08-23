# StarTrek Lua SDK Reference

Complete API reference for the StarTrek Lua SDK.


## StarTrekSDK

### Constructor

```lua
local sdk = require("star-trek_sdk")
local client = sdk.new(options)
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `table` | SDK configuration options. |
| `options.base` | `string` | Base URL for API requests. |
| `options.prefix` | `string` | URL prefix appended after base. |
| `options.suffix` | `string` | URL suffix appended after path. |
| `options.headers` | `table` | Custom headers for all requests. |
| `options.feature` | `table` | Feature configuration. |
| `options.system` | `table` | System overrides (e.g. custom fetch). |


### Static Methods

#### `sdk.test(testopts?, sdkopts?)`

Create a test client with mock features active. Both arguments are optional.

```lua
local client = sdk.test()
```


### Instance Methods

#### `Character(data)`

Create a new `Character` entity instance. Pass `nil` for no initial data.

#### `Episode(data)`

Create a new `Episode` entity instance. Pass `nil` for no initial data.

#### `Spacecraft(data)`

Create a new `Spacecraft` entity instance. Pass `nil` for no initial data.

#### `Species(data)`

Create a new `Species` entity instance. Pass `nil` for no initial data.

#### `options_map() -> table`

Return a deep copy of the current SDK options.

#### `get_utility() -> Utility`

Return a copy of the SDK utility object.

#### `direct(fetchargs) -> table, err`

Make a direct HTTP request to any API endpoint.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs.path` | `string` | URL path with optional `{param}` placeholders. |
| `fetchargs.method` | `string` | HTTP method (default: `"GET"`). |
| `fetchargs.params` | `table` | Path parameter values for `{param}` substitution. |
| `fetchargs.query` | `table` | Query string parameters. |
| `fetchargs.headers` | `table` | Request headers (merged with defaults). |
| `fetchargs.body` | `any` | Request body (tables are JSON-serialized). |
| `fetchargs.ctrl` | `table` | Control options (e.g. `{ explain = true }`). |

**Returns:** `table, err`

#### `prepare(fetchargs) -> table, err`

Prepare a fetch definition without sending the request. Accepts the
same parameters as `direct()`.

**Returns:** `table, err`


---

## CharacterEntity

```lua
local character = client:Character(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `deceased` | `boolean` | No | Whether the character is deceased |
| `fictionalCharacter` | `boolean` | No | Whether this is a fictional character within Star Trek |
| `gender` | `string` | No | Character gender |
| `height` | `number` | No | Height in centimeters |
| `hologram` | `boolean` | No | Whether the character is a hologram |
| `name` | `string` | No | Character name |
| `uid` | `string` | No | Unique identifier |
| `weight` | `number` | No | Weight in kilograms |
| `yearOfBirth` | `number` | No | Year of birth |
| `yearOfDeath` | `number` | No | Year of death |

### Operations

#### `list(reqmatch, ctrl) -> any, err`

List entities matching the given criteria. Returns an array.

```lua
local results, err = client:Character():list()
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `CharacterEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## EpisodeEntity

```lua
local episode = client:Episode(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `episodeNumber` | `number` | No | Episode number |
| `featureLength` | `boolean` | No | Whether this is a feature length episode |
| `productionSerialNumber` | `string` | No | Production serial number |
| `seasonNumber` | `number` | No | Season number |
| `stardateFrom` | `number` | No | Starting stardate |
| `stardateTo` | `number` | No | Ending stardate |
| `title` | `string` | No | Episode title |
| `uid` | `string` | No | Unique identifier |
| `usAirDate` | `string` | No | US air date |
| `yearFrom` | `number` | No | Starting year |
| `yearTo` | `number` | No | Ending year |

### Operations

#### `list(reqmatch, ctrl) -> any, err`

List entities matching the given criteria. Returns an array.

```lua
local results, err = client:Episode():list()
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `EpisodeEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## SpacecraftEntity

```lua
local spacecraft = client:Spacecraft(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `dateStatus` | `string` | No | Date of status |
| `name` | `string` | No | Spacecraft name |
| `operator` | `string` | No | Operating organization |
| `owner` | `string` | No | Owner organization |
| `registry` | `string` | No | Registry number |
| `spacecraftClass` | `string` | No | Class of spacecraft |
| `status` | `string` | No | Current status |
| `uid` | `string` | No | Unique identifier |

### Operations

#### `list(reqmatch, ctrl) -> any, err`

List entities matching the given criteria. Returns an array.

```lua
local results, err = client:Spacecraft():list()
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `SpacecraftEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## SpeciesEntity

```lua
local species = client:Species(nil)
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `extinctSpecies` | `boolean` | No | Whether the species is extinct |
| `extraGalacticSpecies` | `boolean` | No | Whether the species is from outside the galaxy |
| `homeworld` | `string` | No | Name of homeworld |
| `humanoidSpecies` | `boolean` | No | Whether the species is humanoid |
| `name` | `string` | No | Species name |
| `quadrant` | `string` | No | Quadrant of origin |
| `uid` | `string` | No | Unique identifier |
| `warpCapableSpecies` | `boolean` | No | Whether the species is warp capable |

### Operations

#### `list(reqmatch, ctrl) -> any, err`

List entities matching the given criteria. Returns an array.

```lua
local results, err = client:Species():list()
```

### Common Methods

#### `data_get() -> table`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> table`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `SpeciesEntity` instance with the same client and
options.

#### `get_name() -> string`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```lua
local client = sdk.new({
  feature = {
    test = { active = true },
  },
})
```

