# StarTrek TypeScript SDK



The TypeScript SDK for the StarTrek API — a type-safe, entity-oriented client with full async/await support.

> Other languages, the CLI, and MCP server live alongside this one — see
> the [top-level README](../README.md).


## Install
This package is not yet published to npm. Install it from the GitHub
release tag (`ts/vX.Y.Z`):

- Releases: [https://github.com/voxgig-sdk/star-trek-sdk/releases](https://github.com/voxgig-sdk/star-trek-sdk/releases)


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### 1. Create a client

```ts
import { StarTrekSDK } from '@voxgig-sdk/star-trek'

const client = new StarTrekSDK()
```

### 2. List character records

`list()` resolves to an array of Character objects — iterate it directly:

```ts
const characters = await client.Character().list()

for (const character of characters) {
  console.log(character)
}
```


## How-to guides

### Make a direct HTTP request

For endpoints not covered by entity methods:

```ts
const result = await client.direct({
  path: '/api/resource/{id}',
  method: 'GET',
  params: { id: 'example' },
})

if (result instanceof Error) {
  throw result
}
if (result.ok) {
  console.log(result.status)  // 200
  console.log(result.data)    // response body
}
```

### Prepare a request without sending it

```ts
const fetchdef = await client.prepare({
  path: '/api/resource/{id}',
  method: 'DELETE',
  params: { id: 'example' },
})

// Inspect before sending
console.log(fetchdef.url)
console.log(fetchdef.method)
console.log(fetchdef.headers)
```

### Use test mode

Create a mock client for unit testing — no server required:

```ts
const client = StarTrekSDK.test()

const character = await client.Character().load({ id: 'test01' })
// character is a bare entity populated with mock response data
console.log(character)
```

You can also use the instance method:

```ts
const client = new StarTrekSDK()
const testClient = client.tester()
```

### Retain entity state across calls

Entity instances remember their last match and data:

```ts
const entity = client.Character()

// First call sets internal match
await entity.load({ id: 'example' })

// Subsequent calls reuse the stored match
const data = entity.data()
console.log(data.id) // 'example'
```

### Add custom middleware

Pass features via the `extend` option:

```ts
const logger = {
  hooks: {
    PreRequest: (ctx: any) => {
      console.log('Requesting:', ctx.spec.method, ctx.spec.path)
    },
    PreResponse: (ctx: any) => {
      console.log('Status:', ctx.out.request?.status)
    },
  },
}

const client = new StarTrekSDK({
  extend: [logger],
})
```

### Run live tests

Create a `.env.local` file at the project root:

```
STAR_TREK_TEST_LIVE=TRUE
```

Then run:

```bash
cd ts && npm test
```


## Reference

### StarTrekSDK

#### Constructor

```ts
new StarTrekSDK(options?: {
  base?: string
  prefix?: string
  suffix?: string
  feature?: Record<string, { active: boolean }>
  extend?: Feature[]
})
```

| Option | Type | Description |
| --- | --- | --- |
| `base` | `string` | Base URL of the API server. |
| `prefix` | `string` | URL path prefix prepended to all requests. |
| `suffix` | `string` | URL path suffix appended to all requests. |
| `feature` | `object` | Feature activation flags (e.g. `{ test: { active: true } }`). |
| `extend` | `Feature[]` | Additional feature instances to load. |

#### Methods

| Method | Returns | Description |
| --- | --- | --- |
| `options()` | `object` | Deep copy of current SDK options. |
| `utility()` | `Utility` | Deep copy of the SDK utility object. |
| `prepare(fetchargs?)` | `Promise<FetchDef>` | Build an HTTP request definition without sending it. |
| `direct(fetchargs?)` | `Promise<DirectResult>` | Build and send an HTTP request. |
| `Character(data?)` | `CharacterEntity` | Create a Character entity instance. |
| `Episode(data?)` | `EpisodeEntity` | Create an Episode entity instance. |
| `Spacecraft(data?)` | `SpacecraftEntity` | Create a Spacecraft entity instance. |
| `Species(data?)` | `SpeciesEntity` | Create a Species entity instance. |
| `tester(testopts?, sdkopts?)` | `StarTrekSDK` | Create a test-mode client instance. |

#### Static methods

| Method | Returns | Description |
| --- | --- | --- |
| `StarTrekSDK.test(testopts?, sdkopts?)` | `StarTrekSDK` | Create a test-mode client. |

### Entity interface

All entities share the same interface.

#### Methods

| Method | Signature | Description |
| --- | --- | --- |
| `load` | `load(reqmatch?, ctrl?): Promise<Entity>` | Load a single entity by match criteria. |
| `list` | `list(reqmatch?, ctrl?): Promise<Entity[]>` | List entities matching the criteria. |
| `create` | `create(reqdata?, ctrl?): Promise<Entity>` | Create a new entity. |
| `update` | `update(reqdata?, ctrl?): Promise<Entity>` | Update an existing entity. |
| `remove` | `remove(reqmatch?, ctrl?): Promise<void>` | Remove an entity. |
| `data` | `data(data?): any` | Get or set entity data. |
| `match` | `match(match?): any` | Get or set entity match criteria. |
| `make` | `make(): Entity` | Create a new instance with the same options. |
| `client` | `client(): StarTrekSDK` | Return the parent SDK client. |
| `entopts` | `entopts(): object` | Return a copy of the entity options. |

#### Return values

Entity operations resolve to the entity data directly — there is no
result envelope:

- `load`, `create` and `update` resolve to a single entity object.
- `list` resolves to an **array** of entity objects (iterate it directly;
  there is no `.data` and no `.ok`).
- `remove` resolves to `void`.

On a failed request these methods **throw**, so wrap calls in
`try`/`catch` to handle errors. Only `direct()` returns the result
envelope described below.

### DirectResult shape

The `direct()` method returns:

```ts
{
  ok: boolean
  status: number
  headers: object
  data: any
}
```

On error, `ok` is `false` and an `err` property contains the error.

### FetchDef shape

The `prepare()` method returns:

```ts
{
  url: string
  method: string
  headers: Record<string, string>
  body?: any
}
```

### Entities

#### Character

| Field | Description |
| --- | --- |
| `deceased` |  |
| `fictional_character` |  |
| `gender` |  |
| `height` |  |
| `hologram` |  |
| `name` |  |
| `uid` |  |
| `weight` |  |
| `year_of_birth` |  |
| `year_of_death` |  |

Operations: list.

API path: `/character/search`

#### Episode

| Field | Description |
| --- | --- |
| `episode_number` |  |
| `feature_length` |  |
| `production_serial_number` |  |
| `season_number` |  |
| `stardate_from` |  |
| `stardate_to` |  |
| `title` |  |
| `uid` |  |
| `us_air_date` |  |
| `year_from` |  |
| `year_to` |  |

Operations: list.

API path: `/episode/search`

#### Spacecraft

| Field | Description |
| --- | --- |
| `date_status` |  |
| `name` |  |
| `operator` |  |
| `owner` |  |
| `registry` |  |
| `spacecraft_class` |  |
| `status` |  |
| `uid` |  |

Operations: list.

API path: `/spacecraft/search`

#### Species

| Field | Description |
| --- | --- |
| `extinct_species` |  |
| `extra_galactic_species` |  |
| `homeworld` |  |
| `humanoid_species` |  |
| `name` |  |
| `quadrant` |  |
| `uid` |  |
| `warp_capable_species` |  |

Operations: list.

API path: `/species/search`



## Entities


### Character

Create an instance: `const character = client.Character()`

#### Operations

| Method | Description |
| --- | --- |
| `list(match)` | List entities matching the criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `deceased` | ``$BOOLEAN`` |  |
| `fictional_character` | ``$BOOLEAN`` |  |
| `gender` | ``$STRING`` |  |
| `height` | ``$INTEGER`` |  |
| `hologram` | ``$BOOLEAN`` |  |
| `name` | ``$STRING`` |  |
| `uid` | ``$STRING`` |  |
| `weight` | ``$INTEGER`` |  |
| `year_of_birth` | ``$INTEGER`` |  |
| `year_of_death` | ``$INTEGER`` |  |

#### Example: List

```ts
const characters = await client.Character().list()
```


### Episode

Create an instance: `const episode = client.Episode()`

#### Operations

| Method | Description |
| --- | --- |
| `list(match)` | List entities matching the criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `episode_number` | ``$INTEGER`` |  |
| `feature_length` | ``$BOOLEAN`` |  |
| `production_serial_number` | ``$STRING`` |  |
| `season_number` | ``$INTEGER`` |  |
| `stardate_from` | ``$NUMBER`` |  |
| `stardate_to` | ``$NUMBER`` |  |
| `title` | ``$STRING`` |  |
| `uid` | ``$STRING`` |  |
| `us_air_date` | ``$STRING`` |  |
| `year_from` | ``$INTEGER`` |  |
| `year_to` | ``$INTEGER`` |  |

#### Example: List

```ts
const episodes = await client.Episode().list()
```


### Spacecraft

Create an instance: `const spacecraft = client.Spacecraft()`

#### Operations

| Method | Description |
| --- | --- |
| `list(match)` | List entities matching the criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `date_status` | ``$STRING`` |  |
| `name` | ``$STRING`` |  |
| `operator` | ``$STRING`` |  |
| `owner` | ``$STRING`` |  |
| `registry` | ``$STRING`` |  |
| `spacecraft_class` | ``$STRING`` |  |
| `status` | ``$STRING`` |  |
| `uid` | ``$STRING`` |  |

#### Example: List

```ts
const spacecrafts = await client.Spacecraft().list()
```


### Species

Create an instance: `const species = client.Species()`

#### Operations

| Method | Description |
| --- | --- |
| `list(match)` | List entities matching the criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `extinct_species` | ``$BOOLEAN`` |  |
| `extra_galactic_species` | ``$BOOLEAN`` |  |
| `homeworld` | ``$STRING`` |  |
| `humanoid_species` | ``$BOOLEAN`` |  |
| `name` | ``$STRING`` |  |
| `quadrant` | ``$STRING`` |  |
| `uid` | ``$STRING`` |  |
| `warp_capable_species` | ``$BOOLEAN`` |  |

#### Example: List

```ts
const speciess = await client.Species().list()
```


## Explanation

### The operation pipeline

Every entity operation (load, list, create, update, remove) follows a
six-stage pipeline. Each stage fires a feature hook before executing:

```
PrePoint → PreSpec → PreRequest → PreResponse → PreResult → PreDone
```

- **PrePoint**: Resolves which API endpoint to call based on the
  operation name and entity configuration.
- **PreSpec**: Builds the HTTP spec — URL, method, headers, body —
  from the resolved point and the caller's parameters.
- **PreRequest**: Sends the HTTP request. Features can intercept here
  to replace the transport (as TestFeature does with mocks).
- **PreResponse**: Parses the raw HTTP response.
- **PreResult**: Extracts the business data from the parsed response.
- **PreDone**: Final stage before returning to the caller. Entity
  state (match, data) is updated here.

If any stage returns an error, the pipeline short-circuits and the
error is returned to the caller.

An unexpected exception triggers the `PreUnexpected` hook before
propagating.

### Features and hooks

Features are the extension mechanism. A feature is an object with a
`hooks` map. Each hook key is a pipeline stage name, and the value is
a function that receives the context.

The SDK ships with built-in features:

- **TestFeature**: In-memory mock transport for testing without a live server

Features are initialized in order. Hooks fire in the order features
were added, so later features can override earlier ones.

### Module structure

```
star-trek/
├── src/
│   ├── StarTrekSDK.ts        # Main SDK class
│   ├── entity/             # Entity implementations
│   ├── feature/            # Built-in features (Base, Test, Log)
│   └── utility/            # Utility functions
├── test/                   # Test suites
└── dist/                   # Compiled output
```

Import the SDK from the package root:

```ts
import { StarTrekSDK } from '@voxgig-sdk/star-trek'
```

### Entity state

Entity instances are stateful. After a successful `load`, the entity
stores the returned data and match criteria internally. Subsequent
calls on the same instance can rely on this state.

```ts
const character = client.Character()
await character.load({ id: "example_id" })

// character.data() now returns the loaded character data
// character.match() returns { id: "example_id" }
```

Call `make()` to create a fresh instance with the same configuration
but no stored state.

### Direct vs entity access

The entity interface handles URL construction, parameter placement,
and response parsing automatically. Use it for standard CRUD operations.

The `direct` method gives full control over the HTTP request. Use it
for non-standard endpoints, bulk operations, or any path not modelled
as an entity. The `prepare` method is useful for debugging — it
shows exactly what `direct` would send.


## Full Reference

See [REFERENCE.md](REFERENCE.md) for complete API reference
documentation including all method signatures, entity field schemas,
and detailed usage examples.
