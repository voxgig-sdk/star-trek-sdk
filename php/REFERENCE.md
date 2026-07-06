# StarTrek PHP SDK Reference

Complete API reference for the StarTrek PHP SDK.


## StarTrekSDK

### Constructor

```php
require_once __DIR__ . '/startrek_sdk.php';

$client = new StarTrekSDK($options);
```

Create a new SDK client instance.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `$options` | `array` | SDK configuration options. |
| `$options["base"]` | `string` | Base URL for API requests. |
| `$options["prefix"]` | `string` | URL prefix appended after base. |
| `$options["suffix"]` | `string` | URL suffix appended after path. |
| `$options["headers"]` | `array` | Custom headers for all requests. |
| `$options["feature"]` | `array` | Feature configuration. |
| `$options["system"]` | `array` | System overrides (e.g. custom fetch). |


### Static Methods

#### `StarTrekSDK::test($testopts = null, $sdkopts = null)`

Create a test client with mock features active. Both arguments may be `null`.

```php
$client = StarTrekSDK::test();
```


### Instance Methods

#### `Character($data = null)`

Create a new `CharacterEntity` instance. Pass `null` for no initial data.

#### `Episode($data = null)`

Create a new `EpisodeEntity` instance. Pass `null` for no initial data.

#### `Spacecraft($data = null)`

Create a new `SpacecraftEntity` instance. Pass `null` for no initial data.

#### `Species($data = null)`

Create a new `SpeciesEntity` instance. Pass `null` for no initial data.

#### `options_map(): array`

Return a deep copy of the current SDK options.

#### `get_utility(): StarTrekUtility`

Return a copy of the SDK utility object.

#### `direct(array $fetchargs = []): array`

Make a direct HTTP request to any API endpoint. This is the raw-HTTP escape
hatch: it does **not** throw. It returns a result array
`["ok" => bool, "status" => int, "headers" => array, "data" => mixed]`, or
`["ok" => false, "err" => \Exception]` on failure. Branch on `$result["ok"]`.

**Parameters:**

| Name | Type | Description |
| --- | --- | --- |
| `$fetchargs["path"]` | `string` | URL path with optional `{param}` placeholders. |
| `$fetchargs["method"]` | `string` | HTTP method (default: `"GET"`). |
| `$fetchargs["params"]` | `array` | Path parameter values for `{param}` substitution. |
| `$fetchargs["query"]` | `array` | Query string parameters. |
| `$fetchargs["headers"]` | `array` | Request headers (merged with defaults). |
| `$fetchargs["body"]` | `mixed` | Request body (arrays are JSON-serialized). |
| `$fetchargs["ctrl"]` | `array` | Control options. |

**Returns:** `array` — the result dict (see above); never throws.

#### `prepare(array $fetchargs = []): mixed`

Prepare a fetch definition without sending the request. Returns the
`$fetchdef` array. Throws on error.


---

## CharacterEntity

```php
$character = $client->Character();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `deceased` | `bool` | No |  |
| `fictional_character` | `bool` | No |  |
| `gender` | `string` | No |  |
| `height` | `int` | No |  |
| `hologram` | `bool` | No |  |
| `name` | `string` | No |  |
| `uid` | `string` | No |  |
| `weight` | `int` | No |  |
| `year_of_birth` | `int` | No |  |
| `year_of_death` | `int` | No |  |

### Operations

#### `list(?array $reqmatch = null, ?array $ctrl = null): mixed`

List entities matching the given criteria (call with no argument to list all). Returns an array. Throws on error.

```php
$results = $client->Character()->list();
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): CharacterEntity`

Create a new `CharacterEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## EpisodeEntity

```php
$episode = $client->Episode();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `episode_number` | `int` | No |  |
| `feature_length` | `bool` | No |  |
| `production_serial_number` | `string` | No |  |
| `season_number` | `int` | No |  |
| `stardate_from` | `float` | No |  |
| `stardate_to` | `float` | No |  |
| `title` | `string` | No |  |
| `uid` | `string` | No |  |
| `us_air_date` | `string` | No |  |
| `year_from` | `int` | No |  |
| `year_to` | `int` | No |  |

### Operations

#### `list(?array $reqmatch = null, ?array $ctrl = null): mixed`

List entities matching the given criteria (call with no argument to list all). Returns an array. Throws on error.

```php
$results = $client->Episode()->list();
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): EpisodeEntity`

Create a new `EpisodeEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## SpacecraftEntity

```php
$spacecraft = $client->Spacecraft();
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

#### `list(?array $reqmatch = null, ?array $ctrl = null): mixed`

List entities matching the given criteria (call with no argument to list all). Returns an array. Throws on error.

```php
$results = $client->Spacecraft()->list();
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): SpacecraftEntity`

Create a new `SpacecraftEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## SpeciesEntity

```php
$species = $client->Species();
```

### Fields

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `extinct_species` | `bool` | No |  |
| `extra_galactic_species` | `bool` | No |  |
| `homeworld` | `string` | No |  |
| `humanoid_species` | `bool` | No |  |
| `name` | `string` | No |  |
| `quadrant` | `string` | No |  |
| `uid` | `string` | No |  |
| `warp_capable_species` | `bool` | No |  |

### Operations

#### `list(?array $reqmatch = null, ?array $ctrl = null): mixed`

List entities matching the given criteria (call with no argument to list all). Returns an array. Throws on error.

```php
$results = $client->Species()->list();
```

### Common Methods

#### `data_get(): array`

Get the entity data. Returns a copy of the current data.

#### `data_set($data): void`

Set the entity data.

#### `match_get(): array`

Get the entity match criteria.

#### `match_set($match): void`

Set the entity match criteria.

#### `make(): SpeciesEntity`

Create a new `SpeciesEntity` instance with the same client and
options.

#### `get_name(): string`

Return the entity name.


---

## Features

| Feature | Version | Description |
| --- | --- | --- |
| `test` | 0.0.1 | In-memory mock transport for testing without a live server |


Features are activated via the `feature` option:

```php
$client = new StarTrekSDK([
  "feature" => [
    "test" => ["active" => true],
  ],
]);
```

