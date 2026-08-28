# StarTrek Ruby SDK Reference

Complete API reference for the StarTrek Ruby SDK.


## StarTrekSDK

### Constructor

```ruby
require_relative 'StarTrek_sdk'

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
character = client.Character
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `deceased` | `Boolean` | No | Whether the character is deceased |
| `fictionalCharacter` | `Boolean` | No | Whether this is a fictional character within Star Trek |
| `gender` | `String` | No | Character gender |
| `height` | `Integer` | No | Height in centimeters |
| `hologram` | `Boolean` | No | Whether the character is a hologram |
| `name` | `String` | No | Character name |
| `uid` | `String` | No | Unique identifier |
| `weight` | `Integer` | No | Weight in kilograms |
| `yearOfBirth` | `Integer` | No | Year of birth |
| `yearOfDeath` | `Integer` | No | Year of death |

### Operations

#### `list(reqmatch = nil, ctrl = nil) -> Array`

List entities matching the given criteria (call with no argument to list all). Returns an array. Raises on error.

```ruby
results = client.Character.list
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
episode = client.Episode
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `episodeNumber` | `Integer` | No | Episode number |
| `featureLength` | `Boolean` | No | Whether this is a feature length episode |
| `productionSerialNumber` | `String` | No | Production serial number |
| `seasonNumber` | `Integer` | No | Season number |
| `stardateFrom` | `Float` | No | Starting stardate |
| `stardateTo` | `Float` | No | Ending stardate |
| `title` | `String` | No | Episode title |
| `uid` | `String` | No | Unique identifier |
| `usAirDate` | `String` | No | US air date |
| `yearFrom` | `Integer` | No | Starting year |
| `yearTo` | `Integer` | No | Ending year |

### Operations

#### `list(reqmatch = nil, ctrl = nil) -> Array`

List entities matching the given criteria (call with no argument to list all). Returns an array. Raises on error.

```ruby
results = client.Episode.list
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
spacecraft = client.Spacecraft
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `dateStatus` | `String` | No | Date of status |
| `name` | `String` | No | Spacecraft name |
| `operator` | `String` | No | Operating organization |
| `owner` | `String` | No | Owner organization |
| `registry` | `String` | No | Registry number |
| `spacecraftClass` | `String` | No | Class of spacecraft |
| `status` | `String` | No | Current status |
| `uid` | `String` | No | Unique identifier |

### Operations

#### `list(reqmatch = nil, ctrl = nil) -> Array`

List entities matching the given criteria (call with no argument to list all). Returns an array. Raises on error.

```ruby
results = client.Spacecraft.list
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
species = client.Species
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `extinctSpecies` | `Boolean` | No | Whether the species is extinct |
| `extraGalacticSpecies` | `Boolean` | No | Whether the species is from outside the galaxy |
| `homeworld` | `String` | No | Name of homeworld |
| `humanoidSpecies` | `Boolean` | No | Whether the species is humanoid |
| `name` | `String` | No | Species name |
| `quadrant` | `String` | No | Quadrant of origin |
| `uid` | `String` | No | Unique identifier |
| `warpCapableSpecies` | `Boolean` | No | Whether the species is warp capable |

### Operations

#### `list(reqmatch = nil, ctrl = nil) -> Array`

List entities matching the given criteria (call with no argument to list all). Returns an array. Raises on error.

```ruby
results = client.Species.list
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


### Configuring features

Each feature is inactive until switched on, and an SDK with no feature
configured does no feature work at all. Every option below keeps its default
unless you name it.

The array form of \`feature\` is significant: several features wrap the
transport, and the order you list them in is the order they nest.

#### `test`

In-memory mock transport for testing without a live server.

**Configuration**

| Option | Default |
|---|---|
| `active` | `false` |

Options above are those the model carries a default for. A feature may
also accept callback options — a `sink` to receive each record, for
instance — which have no default and are covered in the full feature
reference.

**Usage**

Set `feature.test.active` to true in the client options, and override any option above in the same entry. Every option keeps
its default unless you name it.

**Considerations**

- Attaches to pipeline hooks, not the transport, so activation order does
  not change what it observes.
- Installs the BASE transport that the wrapping features wrap, so it must be
  activated before them.
- Inactive by default: leaving it out costs nothing at runtime.

