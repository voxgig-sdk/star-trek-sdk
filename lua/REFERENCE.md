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
| `options.apikey` | `string` | API key for authentication. |
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
| `deceased` | ``$BOOLEAN`` | No |  |
| `fictional_character` | ``$BOOLEAN`` | No |  |
| `gender` | ``$STRING`` | No |  |
| `height` | ``$INTEGER`` | No |  |
| `hologram` | ``$BOOLEAN`` | No |  |
| `name` | ``$STRING`` | No |  |
| `uid` | ``$STRING`` | No |  |
| `weight` | ``$INTEGER`` | No |  |
| `year_of_birth` | ``$INTEGER`` | No |  |
| `year_of_death` | ``$INTEGER`` | No |  |

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
| `episode_number` | ``$INTEGER`` | No |  |
| `feature_length` | ``$BOOLEAN`` | No |  |
| `production_serial_number` | ``$STRING`` | No |  |
| `season_number` | ``$INTEGER`` | No |  |
| `stardate_from` | ``$NUMBER`` | No |  |
| `stardate_to` | ``$NUMBER`` | No |  |
| `title` | ``$STRING`` | No |  |
| `uid` | ``$STRING`` | No |  |
| `us_air_date` | ``$STRING`` | No |  |
| `year_from` | ``$INTEGER`` | No |  |
| `year_to` | ``$INTEGER`` | No |  |

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
| `date_status` | ``$STRING`` | No |  |
| `name` | ``$STRING`` | No |  |
| `operator` | ``$STRING`` | No |  |
| `owner` | ``$STRING`` | No |  |
| `registry` | ``$STRING`` | No |  |
| `spacecraft_class` | ``$STRING`` | No |  |
| `status` | ``$STRING`` | No |  |
| `uid` | ``$STRING`` | No |  |

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
| `extinct_species` | ``$BOOLEAN`` | No |  |
| `extra_galactic_species` | ``$BOOLEAN`` | No |  |
| `homeworld` | ``$STRING`` | No |  |
| `humanoid_species` | ``$BOOLEAN`` | No |  |
| `name` | ``$STRING`` | No |  |
| `quadrant` | ``$STRING`` | No |  |
| `uid` | ``$STRING`` | No |  |
| `warp_capable_species` | ``$BOOLEAN`` | No |  |

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

