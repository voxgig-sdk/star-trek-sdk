# StarTrek Python SDK Reference

Complete API reference for the StarTrek Python SDK.


## StarTrekSDK

### Constructor

```python
from star-trek_sdk import StarTrekSDK

client = StarTrekSDK(options)
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `dict` | SDK configuration options. |
| `options["base"]` | `str` | Base URL for API requests. |
| `options["prefix"]` | `str` | URL prefix appended after base. |
| `options["suffix"]` | `str` | URL suffix appended after path. |
| `options["headers"]` | `dict` | Custom headers for all requests. |
| `options["feature"]` | `dict` | Feature configuration. |
| `options["system"]` | `dict` | System overrides (e.g. custom fetch). |


### Static Methods

#### `StarTrekSDK.test(testopts=None, sdkopts=None)`

Create a test client with mock features active. Both arguments may be `None`.

```python
client = StarTrekSDK.test()
```


### Instance Methods

#### `Character(data=None)`

Create a new `CharacterEntity` instance. Pass `None` for no initial data.

#### `Episode(data=None)`

Create a new `EpisodeEntity` instance. Pass `None` for no initial data.

#### `Spacecraft(data=None)`

Create a new `SpacecraftEntity` instance. Pass `None` for no initial data.

#### `Species(data=None)`

Create a new `SpeciesEntity` instance. Pass `None` for no initial data.

#### `options_map() -> dict`

Return a deep copy of the current SDK options.

#### `get_utility() -> Utility`

Return a copy of the SDK utility object.

#### `direct(fetchargs=None) -> dict`

Make a direct HTTP request to any API endpoint. Returns a result `dict` with `ok`, `status`, `headers`, and `data` (or `err` on failure). This escape hatch never raises — branch on `result["ok"]`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs["path"]` | `str` | URL path with optional `{param}` placeholders. |
| `fetchargs["method"]` | `str` | HTTP method (default: `"GET"`). |
| `fetchargs["params"]` | `dict` | Path parameter values. |
| `fetchargs["query"]` | `dict` | Query string parameters. |
| `fetchargs["headers"]` | `dict` | Request headers (merged with defaults). |
| `fetchargs["body"]` | `any` | Request body (dicts are JSON-serialized). |

**Returns:** `result_dict`

#### `prepare(fetchargs=None) -> dict`

Prepare a fetch definition without sending. Returns the `fetchdef` and raises on error.


---

## CharacterEntity

```python
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

#### `list(reqmatch, ctrl=None) -> list`

List entities matching the given criteria. Returns a list and raises on error.

```python
results = client.character.list({})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `CharacterEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## EpisodeEntity

```python
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

#### `list(reqmatch, ctrl=None) -> list`

List entities matching the given criteria. Returns a list and raises on error.

```python
results = client.episode.list({})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `EpisodeEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## SpacecraftEntity

```python
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

#### `list(reqmatch, ctrl=None) -> list`

List entities matching the given criteria. Returns a list and raises on error.

```python
results = client.spacecraft.list({})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `SpacecraftEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## SpeciesEntity

```python
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

#### `list(reqmatch, ctrl=None) -> list`

List entities matching the given criteria. Returns a list and raises on error.

```python
results = client.species.list({})
```

### Common Methods

#### `data_get() -> dict`

Get the entity data.

#### `data_set(data)`

Set the entity data.

#### `match_get() -> dict`

Get the entity match criteria.

#### `match_set(match)`

Set the entity match criteria.

#### `make() -> Entity`

Create a new `SpeciesEntity` instance with the same options.

#### `get_name() -> str`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```python
client = StarTrekSDK({
    "feature": {
        "test": {"active": True},
    },
})
```

