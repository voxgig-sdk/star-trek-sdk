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
const character = client.Character()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `deceased` | `boolean` | No |  |
| `fictional_character` | `boolean` | No |  |
| `gender` | `string` | No |  |
| `height` | `number` | No |  |
| `hologram` | `boolean` | No |  |
| `name` | `string` | No |  |
| `uid` | `string` | No |  |
| `weight` | `number` | No |  |
| `year_of_birth` | `number` | No |  |
| `year_of_death` | `number` | No |  |

### Operations

#### `list(match: object, ctrl?: object)`

List entities matching the given criteria. Returns an array.

```ts
const results = await client.Character().list()
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
const episode = client.Episode()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `episode_number` | `number` | No |  |
| `feature_length` | `boolean` | No |  |
| `production_serial_number` | `string` | No |  |
| `season_number` | `number` | No |  |
| `stardate_from` | `number` | No |  |
| `stardate_to` | `number` | No |  |
| `title` | `string` | No |  |
| `uid` | `string` | No |  |
| `us_air_date` | `string` | No |  |
| `year_from` | `number` | No |  |
| `year_to` | `number` | No |  |

### Operations

#### `list(match: object, ctrl?: object)`

List entities matching the given criteria. Returns an array.

```ts
const results = await client.Episode().list()
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
const spacecraft = client.Spacecraft()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `date_status` | `string` | No |  |
| `name` | `string` | No |  |
| `operator` | `string` | No |  |
| `owner` | `string` | No |  |
| `registry` | `string` | No |  |
| `spacecraft_class` | `string` | No |  |
| `status` | `string` | No |  |
| `uid` | `string` | No |  |

### Operations

#### `list(match: object, ctrl?: object)`

List entities matching the given criteria. Returns an array.

```ts
const results = await client.Spacecraft().list()
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
const species = client.Species()
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `extinct_species` | `boolean` | No |  |
| `extra_galactic_species` | `boolean` | No |  |
| `homeworld` | `string` | No |  |
| `humanoid_species` | `boolean` | No |  |
| `name` | `string` | No |  |
| `quadrant` | `string` | No |  |
| `uid` | `string` | No |  |
| `warp_capable_species` | `boolean` | No |  |

### Operations

#### `list(match: object, ctrl?: object)`

List entities matching the given criteria. Returns an array.

```ts
const results = await client.Species().list()
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

