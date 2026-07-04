# StarTrek Ruby SDK Reference

Complete API reference for the StarTrek Ruby SDK.


## StarTrekSDK

### Constructor

```ruby
require_relative 'star-trek_sdk'

client = StarTrekSDK.new(options)
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `Hash` | SDK configuration options. |
| `options["base"]` | `String` | Base URL for API requests. |
| `options["prefix"]` | `String` | URL prefix appended after base. |
| `options["suffix"]` | `String` | URL suffix appended after path. |
| `options["headers"]` | `Hash` | Custom headers for all requests. |
| `options["feature"]` | `Hash` | Feature configuration. |
| `options["system"]` | `Hash` | System overrides (e.g. custom fetch). |


### Static Methods

#### `StarTrekSDK.test(testopts = nil, sdkopts = nil)`

Create a test client with mock features active. Both arguments may be `nil`.

```ruby
client = StarTrekSDK.test
```


### Instance Methods

#### `Character(data = nil)`

Create a new `Character` entity instance. Pass `nil` for no initial data.

#### `Episode(data = nil)`

Create a new `Episode` entity instance. Pass `nil` for no initial data.

#### `Spacecraft(data = nil)`

Create a new `Spacecraft` entity instance. Pass `nil` for no initial data.

#### `Species(data = nil)`

Create a new `Species` entity instance. Pass `nil` for no initial data.

#### `options_map -> Hash`

Return a deep copy of the current SDK options.

#### `get_utility -> Utility`

Return a copy of the SDK utility object.

#### `direct(fetchargs = {}) -> Hash`

Make a direct HTTP request to any API endpoint. Returns a result hash
(`{ "ok" => ..., "status" => ..., "data" => ..., "err" => ... }`); it
does not raise — inspect `result["ok"]`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs["path"]` | `String` | URL path with optional `{param}` placeholders. |
| `fetchargs["method"]` | `String` | HTTP method (default: `"GET"`). |
| `fetchargs["params"]` | `Hash` | Path parameter values for `{param}` substitution. |
| `fetchargs["query"]` | `Hash` | Query string parameters. |
| `fetchargs["headers"]` | `Hash` | Request headers (merged with defaults). |
| `fetchargs["body"]` | `any` | Request body (hashes are JSON-serialized). |
| `fetchargs["ctrl"]` | `Hash` | Control options (e.g. `{ "explain" => true }`). |

**Returns:** `Hash`

#### `prepare(fetchargs = {}) -> Hash`

Prepare a fetch definition without sending the request. Accepts the
same parameters as `direct()`. Raises on error.

**Returns:** `Hash` (the fetch definition; raises on error)


---

## CharacterEntity

```ruby
character = client.character
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

#### `list(reqmatch, ctrl = nil) -> Array`

List entities matching the given criteria. Returns an array. Raises on error.

```ruby
results = client.character.list(nil)
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `CharacterEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## EpisodeEntity

```ruby
episode = client.episode
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

#### `list(reqmatch, ctrl = nil) -> Array`

List entities matching the given criteria. Returns an array. Raises on error.

```ruby
results = client.episode.list(nil)
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `EpisodeEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## SpacecraftEntity

```ruby
spacecraft = client.spacecraft
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

#### `list(reqmatch, ctrl = nil) -> Array`

List entities matching the given criteria. Returns an array. Raises on error.

```ruby
results = client.spacecraft.list(nil)
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `SpacecraftEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## SpeciesEntity

```ruby
species = client.species
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

#### `list(reqmatch, ctrl = nil) -> Array`

List entities matching the given criteria. Returns an array. Raises on error.

```ruby
results = client.species.list(nil)
```

### Common Methods

#### `data_get -> Hash`

Get the entity data. Returns a copy of the current data.

#### `data_set(data)`

Set the entity data.

#### `match_get -> Hash`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make -> Entity`

Create a new `SpeciesEntity` instance with the same client and
options.

#### `get_name -> String`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```ruby
client = StarTrekSDK.new({
  "feature" => {
    "test" => { "active" => true },
  },
})
```

