# StarTrek Golang SDK



The Golang SDK for the StarTrek API — an entity-oriented client using standard Go conventions. No generics required; data flows as `map[string]any`.

It exposes the API as capitalised, semantic **Entities** — e.g. `client.Character(nil)` — each with the same small set of operations (`List`) instead of raw URL paths and query strings. You call meaning, not endpoints, which keeps the cognitive load low.

> Also generated from this model: `go-cli`, `go-mcp`, `lua`, `php`, `py`, `rb`, `ts` — see
> the [top-level README](../README.md).


## Install
```bash
go get github.com/voxgig-sdk/star-trek-sdk/go@latest
```

The Go module proxy resolves the version from the `go/vX.Y.Z` GitHub
release tag — see [Releases](https://github.com/voxgig-sdk/star-trek-sdk/releases) for the available versions.

To vendor from a local checkout instead, clone this repo alongside your
project and add a `replace` directive pointing at the checked-out
`go/` directory:

```bash
go mod edit -replace github.com/voxgig-sdk/star-trek-sdk/go=../star-trek-sdk/go
```


## Tutorial: your first API call

This tutorial walks through creating a client, listing entities, and
loading a specific record.

### Quickstart

A complete program: create a client, then call the entity operations.
Each operation returns `(value, error)` — the value is the data itself
(there is no `{ok, data}` wrapper), so check `err` and use the value
directly.

```go
package main

import (
    "fmt"
    sdk "github.com/voxgig-sdk/star-trek-sdk/go"
)

func main() {
    client := sdk.New()

    // List character records — the value is the array of records itself.
    characters, err := client.Character(nil).List(nil, nil)
    if err != nil {
        panic(err)
    }
    for _, item := range characters.([]any) {
        fmt.Println(item)
    }
}
```


## Error handling

Every entity operation returns `(value, error)`. Check `err` before
using the value — there is no exception to catch:

```go
characters, err := client.Character(nil).List(nil, nil)
if err != nil {
    // handle err
    return
}
_ = characters
```

`Direct` follows the same `(value, error)` convention:

```go
result, err := client.Direct(map[string]any{
    "path":   "/api/resource/{id}",
    "method": "GET",
    "params": map[string]any{"id": "example_id"},
})
if err != nil {
    // handle err
}
_ = result
```


## How-to guides

### Make a direct HTTP request

For endpoints not covered by entity methods:

```go
result, err := client.Direct(map[string]any{
    "path":   "/api/resource/{id}",
    "method": "GET",
    "params": map[string]any{"id": "example"},
})
if err != nil {
    panic(err)
}

if result["ok"] == true {
    fmt.Println(result["status"]) // 200
    fmt.Println(result["data"])   // response body
}
```

### Prepare a request without sending it

```go
fetchdef, err := client.Prepare(map[string]any{
    "path":   "/api/resource/{id}",
    "method": "DELETE",
    "params": map[string]any{"id": "example"},
})
if err != nil {
    panic(err)
}

fmt.Println(fetchdef["url"])
fmt.Println(fetchdef["method"])
fmt.Println(fetchdef["headers"])
```

### Use test mode

Create a mock client for unit testing — no server required:

```go
client := sdk.Test()

character, err := client.Character(nil).List(
    nil, nil,
)
if err != nil {
    panic(err)
}
fmt.Println(character) // the returned mock data
```

### Use a custom fetch function

Replace the HTTP transport with your own function:

```go
mockFetch := func(url string, init map[string]any) (map[string]any, error) {
    return map[string]any{
        "status":     200,
        "statusText": "OK",
        "headers":    map[string]any{},
        "json": (func() any)(func() any {
            return map[string]any{"id": "mock01"}
        }),
    }, nil
}

client := sdk.NewStarTrekSDK(map[string]any{
    "base": "http://localhost:8080",
    "system": map[string]any{
        "fetch": (func(string, map[string]any) (map[string]any, error))(mockFetch),
    },
})
```

### Run live tests

Create a `.env.local` file at the project root:

```
STAR_TREK_TEST_LIVE=TRUE
```

Then run:

```bash
cd go && go test ./test/...
```


## Reference

### NewStarTrekSDK

```go
func NewStarTrekSDK(options map[string]any) *StarTrekSDK
```

Creates a new SDK client.

| Option | Type | Description |
| --- | --- | --- |
| `"base"` | `string` | Base URL of the API server. |
| `"prefix"` | `string` | URL path prefix prepended to all requests. |
| `"suffix"` | `string` | URL path suffix appended to all requests. |
| `"feature"` | `map[string]any` | Feature activation flags. |
| `"extend"` | `[]any` | Additional Feature instances to load. |
| `"system"` | `map[string]any` | System overrides (e.g. custom `"fetch"` function). |

### TestSDK

```go
func TestSDK(testopts map[string]any, sdkopts map[string]any) *StarTrekSDK
```

Creates a test-mode client with mock transport. Both arguments may be `nil`.

### StarTrekSDK methods

| Method | Signature | Description |
| --- | --- | --- |
| `OptionsMap` | `() map[string]any` | Deep copy of current SDK options. |
| `GetUtility` | `() *Utility` | Copy of the SDK utility object. |
| `Prepare` | `(fetchargs map[string]any) (map[string]any, error)` | Build an HTTP request definition without sending. |
| `Direct` | `(fetchargs map[string]any) (map[string]any, error)` | Build and send an HTTP request. |
| `Character` | `(data map[string]any) StarTrekEntity` | Create a Character entity instance. |
| `Episode` | `(data map[string]any) StarTrekEntity` | Create an Episode entity instance. |
| `Spacecraft` | `(data map[string]any) StarTrekEntity` | Create a Spacecraft entity instance. |
| `Species` | `(data map[string]any) StarTrekEntity` | Create a Species entity instance. |

### Entity interface (StarTrekEntity)

All entities implement the `StarTrekEntity` interface.

| Method | Signature | Description |
| --- | --- | --- |
| `List` | `(reqmatch, ctrl map[string]any) (any, error)` | List entities matching the criteria. |
| `Data` | `(args ...any) any` | Get or set entity data. |
| `Match` | `(args ...any) any` | Get or set entity match criteria. |
| `Make` | `() Entity` | Create a new instance with the same options. |
| `GetName` | `() string` | Return the entity name. |

### Result shape

Entity operations return `(value, error)`. The `value` is the
operation's data **directly** — there is no wrapper:

| Operation | `value` |
| --- | --- |
| `List` | a `[]any` of entity records |

Check `err` first, then use the value directly (or the typed
`...Typed` variants, which return the entity's model struct and a typed
slice):

    character, err := client.Character(nil).List(map[string]any{/* fields */}, nil)
    if err != nil { /* handle */ }
    // character is the returned record

Only `Direct()` returns a response envelope — a `map[string]any` with
`"ok"`, `"status"`, `"headers"`, and `"data"` keys.

### Entities

#### Character

| Field | Description |
| --- | --- |
| `"deceased"` | Whether the character is deceased |
| `"fictionalCharacter"` | Whether this is a fictional character within Star Trek |
| `"gender"` | Character gender |
| `"height"` | Height in centimeters |
| `"hologram"` | Whether the character is a hologram |
| `"name"` | Character name |
| `"uid"` | Unique identifier |
| `"weight"` | Weight in kilograms |
| `"yearOfBirth"` | Year of birth |
| `"yearOfDeath"` | Year of death |

Operations: List.

API path: `/character/search`

#### Episode

| Field | Description |
| --- | --- |
| `"episodeNumber"` | Episode number |
| `"featureLength"` | Whether this is a feature length episode |
| `"productionSerialNumber"` | Production serial number |
| `"seasonNumber"` | Season number |
| `"stardateFrom"` | Starting stardate |
| `"stardateTo"` | Ending stardate |
| `"title"` | Episode title |
| `"uid"` | Unique identifier |
| `"usAirDate"` | US air date |
| `"yearFrom"` | Starting year |
| `"yearTo"` | Ending year |

Operations: List.

API path: `/episode/search`

#### Spacecraft

| Field | Description |
| --- | --- |
| `"dateStatus"` | Date of status |
| `"name"` | Spacecraft name |
| `"operator"` | Operating organization |
| `"owner"` | Owner organization |
| `"registry"` | Registry number |
| `"spacecraftClass"` | Class of spacecraft |
| `"status"` | Current status |
| `"uid"` | Unique identifier |

Operations: List.

API path: `/spacecraft/search`

#### Species

| Field | Description |
| --- | --- |
| `"extinctSpecies"` | Whether the species is extinct |
| `"extraGalacticSpecies"` | Whether the species is from outside the galaxy |
| `"homeworld"` | Name of homeworld |
| `"humanoidSpecies"` | Whether the species is humanoid |
| `"name"` | Species name |
| `"quadrant"` | Quadrant of origin |
| `"uid"` | Unique identifier |
| `"warpCapableSpecies"` | Whether the species is warp capable |

Operations: List.

API path: `/species/search`



## Entities


### Character

Create an instance: `character := client.Character(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `List(match, ctrl)` | List entities matching the criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `deceased` | `bool` | Whether the character is deceased |
| `fictionalCharacter` | `bool` | Whether this is a fictional character within Star Trek |
| `gender` | `string` | Character gender |
| `height` | `int` | Height in centimeters |
| `hologram` | `bool` | Whether the character is a hologram |
| `name` | `string` | Character name |
| `uid` | `string` | Unique identifier |
| `weight` | `int` | Weight in kilograms |
| `yearOfBirth` | `int` | Year of birth |
| `yearOfDeath` | `int` | Year of death |

#### Example: List

```go
characters, err := client.Character(nil).List(nil, nil)
if err != nil {
    panic(err)
}
fmt.Println(characters) // the array of records
```


### Episode

Create an instance: `episode := client.Episode(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `List(match, ctrl)` | List entities matching the criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `episodeNumber` | `int` | Episode number |
| `featureLength` | `bool` | Whether this is a feature length episode |
| `productionSerialNumber` | `string` | Production serial number |
| `seasonNumber` | `int` | Season number |
| `stardateFrom` | `float64` | Starting stardate |
| `stardateTo` | `float64` | Ending stardate |
| `title` | `string` | Episode title |
| `uid` | `string` | Unique identifier |
| `usAirDate` | `string` | US air date |
| `yearFrom` | `int` | Starting year |
| `yearTo` | `int` | Ending year |

#### Example: List

```go
episodes, err := client.Episode(nil).List(nil, nil)
if err != nil {
    panic(err)
}
fmt.Println(episodes) // the array of records
```


### Spacecraft

Create an instance: `spacecraft := client.Spacecraft(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `List(match, ctrl)` | List entities matching the criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `dateStatus` | `string` | Date of status |
| `name` | `string` | Spacecraft name |
| `operator` | `string` | Operating organization |
| `owner` | `string` | Owner organization |
| `registry` | `string` | Registry number |
| `spacecraftClass` | `string` | Class of spacecraft |
| `status` | `string` | Current status |
| `uid` | `string` | Unique identifier |

#### Example: List

```go
spacecrafts, err := client.Spacecraft(nil).List(nil, nil)
if err != nil {
    panic(err)
}
fmt.Println(spacecrafts) // the array of records
```


### Species

Create an instance: `species := client.Species(nil)`

#### Operations

| Method | Description |
| --- | --- |
| `List(match, ctrl)` | List entities matching the criteria. |

#### Fields

| Field | Type | Description |
| --- | --- | --- |
| `extinctSpecies` | `bool` | Whether the species is extinct |
| `extraGalacticSpecies` | `bool` | Whether the species is from outside the galaxy |
| `homeworld` | `string` | Name of homeworld |
| `humanoidSpecies` | `bool` | Whether the species is humanoid |
| `name` | `string` | Species name |
| `quadrant` | `string` | Quadrant of origin |
| `uid` | `string` | Unique identifier |
| `warpCapableSpecies` | `bool` | Whether the species is warp capable |

#### Example: List

```go
speciess, err := client.Species(nil).List(nil, nil)
if err != nil {
    panic(err)
}
fmt.Println(speciess) // the array of records
```

## Features

This SDK ships 1 optional features. Each is **inactive until you
switch it on**, so an SDK you have not configured behaves exactly as if none of
them existed — no retries, no cache, no logging, no measurable overhead.

Activate a feature by name in the client options, alongside the options shown
above:

| Feature | What it does |
|---|---|
| [`test`](#test) | In-memory mock transport for testing without a live server |

### test

In-memory mock transport for testing without a live server.

| Option | Default |
|---|---|
| `active` | `false` |

Set `feature.test.active` to enable it, then override any of the options above.


## Advanced

> The sections above cover everyday use. The material below explains the
> SDK's internals — useful when extending it with custom features, but not
> needed for normal use.

### The operation pipeline

Every entity operation follows a six-stage pipeline. Each stage fires a
feature hook before executing:

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

If any stage errors, the pipeline short-circuits and the error surfaces
to the caller — see [Error handling](#error-handling) for how that looks
in this language.

### Features and hooks

Features are the extension mechanism. A feature implements the
`Feature` interface and provides hooks — functions keyed by pipeline
stage names.

The SDK ships with built-in features:

- **TestFeature**: In-memory mock transport for testing without a live server

Features are initialized in order. Hooks fire in the order features
were added, so later features can override earlier ones.

### Data as maps

The Go SDK uses `map[string]any` throughout rather than typed structs.
This mirrors the dynamic nature of the API and keeps the SDK
flexible — no code generation is needed when the API schema changes.

Use `core.ToMapAny()` to safely cast results and nested data.

### Package structure

```
github.com/voxgig-sdk/star-trek-sdk/go/
├── star-trek.go        # Root package — type aliases and constructors
├── core/               # SDK core — client, types, pipeline
├── entity/             # Entity implementations
├── feature/            # Built-in features (Base, Test, Log)
├── utility/            # Utility functions and struct library
└── test/               # Test suites
```

The root package (`github.com/voxgig-sdk/star-trek-sdk/go`) re-exports everything needed
for normal use. Import sub-packages only when you need specific types
like `core.ToMapAny`.

### Entity state

Entity instances are stateful. After a successful `List`, the entity
stores the returned data and match criteria internally.

```go
character := client.Character(nil)
character.List(nil, nil)

// character.Data() now returns the character data from the last list
// character.Match() returns the last match criteria
```

Call `Make()` to create a fresh instance with the same configuration
but no stored state.

### Direct vs entity access

The entity interface handles URL construction, parameter placement,
and response parsing automatically. Use it for standard CRUD operations.

`Direct()` gives full control over the HTTP request. Use it for
non-standard endpoints, bulk operations, or any path not modelled as
an entity. `Prepare()` builds the request without sending it — useful
for debugging or custom transport.


## Full Reference

See [REFERENCE.md](REFERENCE.md) for complete API reference
documentation including all method signatures, entity field schemas,
and detailed usage examples.
