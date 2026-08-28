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
| `deceased` | `bool` | No | Whether the character is deceased |
| `fictionalCharacter` | `bool` | No | Whether this is a fictional character within Star Trek |
| `gender` | `string` | No | Character gender |
| `height` | `int` | No | Height in centimeters |
| `hologram` | `bool` | No | Whether the character is a hologram |
| `name` | `string` | No | Character name |
| `uid` | `string` | No | Unique identifier |
| `weight` | `int` | No | Weight in kilograms |
| `yearOfBirth` | `int` | No | Year of birth |
| `yearOfDeath` | `int` | No | Year of death |

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
| `episodeNumber` | `int` | No | Episode number |
| `featureLength` | `bool` | No | Whether this is a feature length episode |
| `productionSerialNumber` | `string` | No | Production serial number |
| `seasonNumber` | `int` | No | Season number |
| `stardateFrom` | `float` | No | Starting stardate |
| `stardateTo` | `float` | No | Ending stardate |
| `title` | `string` | No | Episode title |
| `uid` | `string` | No | Unique identifier |
| `usAirDate` | `string` | No | US air date |
| `yearFrom` | `int` | No | Starting year |
| `yearTo` | `int` | No | Ending year |

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
| `dateStatus` | `string` | No | Date of status |
| `name` | `string` | No | Spacecraft name |
| `operator` | `string` | No | Operating organization |
| `owner` | `string` | No | Owner organization |
| `registry` | `string` | No | Registry number |
| `spacecraftClass` | `string` | No | Class of spacecraft |
| `status` | `string` | No | Current status |
| `uid` | `string` | No | Unique identifier |

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
| `extinctSpecies` | `bool` | No | Whether the species is extinct |
| `extraGalacticSpecies` | `bool` | No | Whether the species is from outside the galaxy |
| `homeworld` | `string` | No | Name of homeworld |
| `humanoidSpecies` | `bool` | No | Whether the species is humanoid |
| `name` | `string` | No | Species name |
| `quadrant` | `string` | No | Quadrant of origin |
| `uid` | `string` | No | Unique identifier |
| `warpCapableSpecies` | `bool` | No | Whether the species is warp capable |

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

