# StarTrek TypeScript SDK Reference

Complete API reference for the StarTrek TypeScript SDK.


## StarTrekSDK

### Constructor

```ts
new StarTrekSDK(options?: object)
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `options` | `object` | SDK configuration options. |
| `options.base` | `string` | Base URL for API requests. |
| `options.prefix` | `string` | URL prefix appended after base. |
| `options.suffix` | `string` | URL suffix appended after path. |
| `options.headers` | `object` | Custom headers for all requests. |
| `options.feature` | `object` | Feature configuration. |
| `options.system` | `object` | System overrides (e.g. custom fetch). |


### Static Methods

#### `StarTrekSDK.test(testopts?, sdkopts?)`

Create a test client with mock features active.

```ts
const client = StarTrekSDK.test()
```

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `testopts` | `object` | Test feature options. |
| `sdkopts` | `object` | Additional SDK options merged with test defaults. |

**Returns:** `StarTrekSDK` instance in test mode.


### Instance Methods

#### `Character(data?: object)`

Create a new `Character` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `CharacterEntity` instance.

#### `Episode(data?: object)`

Create a new `Episode` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `EpisodeEntity` instance.

#### `Spacecraft(data?: object)`

Create a new `Spacecraft` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `SpacecraftEntity` instance.

#### `Species(data?: object)`

Create a new `Species` entity instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `data` | `object` | Initial entity data. |

**Returns:** `SpeciesEntity` instance.

#### `options()`

Return a deep copy of the current SDK options.

**Returns:** `object`

#### `utility()`

Return a copy of the SDK utility object.

**Returns:** `object`

#### `direct(fetchargs?: object)`

Make a direct HTTP request to any API endpoint.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `fetchargs.path` | `string` | URL path with optional `{param}` placeholders. |
| `fetchargs.method` | `string` | HTTP method (default: `GET`). |
| `fetchargs.params` | `object` | Path parameter values for `{param}` substitution. |
| `fetchargs.query` | `object` | Query string parameters. |
| `fetchargs.headers` | `object` | Request headers (merged with defaults). |
| `fetchargs.body` | `any` | Request body (objects are JSON-serialized). |
| `fetchargs.ctrl` | `object` | Control options (e.g. `{ explain: true }`). |

**Returns:** `Promise<{ ok, status, headers, data } | Error>`

#### `prepare(fetchargs?: object)`

Prepare a fetch definition without sending the request. Accepts the
same parameters as `direct()`.

**Returns:** `Promise<{ url, method, headers, body } | Error>`

#### `tester(testopts?, sdkopts?)`

Alias for `StarTrekSDK.test()`.

**Returns:** `StarTrekSDK` instance in test mode.


---

## CharacterEntity

```ts
const character = client.character
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

#### `list(match: object, ctrl?: object)`

List entities matching the given criteria. Returns an array.

```ts
const results = await client.character.list()
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `CharacterEntity` instance with the same client and
options.

#### `client()`

Return the parent `StarTrekSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## EpisodeEntity

```ts
const episode = client.episode
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

#### `list(match: object, ctrl?: object)`

List entities matching the given criteria. Returns an array.

```ts
const results = await client.episode.list()
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `EpisodeEntity` instance with the same client and
options.

#### `client()`

Return the parent `StarTrekSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## SpacecraftEntity

```ts
const spacecraft = client.spacecraft
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

#### `list(match: object, ctrl?: object)`

List entities matching the given criteria. Returns an array.

```ts
const results = await client.spacecraft.list()
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `SpacecraftEntity` instance with the same client and
options.

#### `client()`

Return the parent `StarTrekSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## SpeciesEntity

```ts
const species = client.species
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

#### `list(match: object, ctrl?: object)`

List entities matching the given criteria. Returns an array.

```ts
const results = await client.species.list()
```

### Common Methods

#### `data(data?: object)`

Get or set the entity data. When called with data, sets the entity's
internal data and returns the current data. When called without
arguments, returns a copy of the current data.

#### `match(match?: object)`

Get or set the entity match criteria. Works the same as `data()`.

#### `make()`

Create a new `SpeciesEntity` instance with the same client and
options.

#### `client()`

Return the parent `StarTrekSDK` instance.

#### `entopts()`

Return a copy of the entity options.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```ts
const client = new StarTrekSDK({
  feature: {
    test: { active: true },
  }
})
```

