// Typed models for the StarTrek SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.
package entity

import (
	"encoding/json"

	"github.com/voxgig-sdk/star-trek-sdk/go/core"
)

// Character is the typed data model for the character entity.
type Character struct {
	Deceased *bool `json:"deceased,omitempty"`
	FictionalCharacter *bool `json:"fictionalCharacter,omitempty"`
	Gender *string `json:"gender,omitempty"`
	Height *int `json:"height,omitempty"`
	Hologram *bool `json:"hologram,omitempty"`
	Name *string `json:"name,omitempty"`
	Uid *string `json:"uid,omitempty"`
	Weight *int `json:"weight,omitempty"`
	YearOfBirth *int `json:"yearOfBirth,omitempty"`
	YearOfDeath *int `json:"yearOfDeath,omitempty"`
}

// CharacterListMatch is the typed request payload for Character.ListTyped.
type CharacterListMatch struct {
	Deceased *bool `json:"deceased,omitempty"`
	FictionalCharacter *bool `json:"fictionalCharacter,omitempty"`
	Gender *string `json:"gender,omitempty"`
	Height *int `json:"height,omitempty"`
	Hologram *bool `json:"hologram,omitempty"`
	Name *string `json:"name,omitempty"`
	Uid *string `json:"uid,omitempty"`
	Weight *int `json:"weight,omitempty"`
	YearOfBirth *int `json:"yearOfBirth,omitempty"`
	YearOfDeath *int `json:"yearOfDeath,omitempty"`
}

// Episode is the typed data model for the episode entity.
type Episode struct {
	EpisodeNumber *int `json:"episodeNumber,omitempty"`
	FeatureLength *bool `json:"featureLength,omitempty"`
	ProductionSerialNumber *string `json:"productionSerialNumber,omitempty"`
	SeasonNumber *int `json:"seasonNumber,omitempty"`
	StardateFrom *float64 `json:"stardateFrom,omitempty"`
	StardateTo *float64 `json:"stardateTo,omitempty"`
	Title *string `json:"title,omitempty"`
	Uid *string `json:"uid,omitempty"`
	UsAirDate *string `json:"usAirDate,omitempty"`
	YearFrom *int `json:"yearFrom,omitempty"`
	YearTo *int `json:"yearTo,omitempty"`
}

// EpisodeListMatch is the typed request payload for Episode.ListTyped.
type EpisodeListMatch struct {
	EpisodeNumber *int `json:"episodeNumber,omitempty"`
	FeatureLength *bool `json:"featureLength,omitempty"`
	ProductionSerialNumber *string `json:"productionSerialNumber,omitempty"`
	SeasonNumber *int `json:"seasonNumber,omitempty"`
	StardateFrom *float64 `json:"stardateFrom,omitempty"`
	StardateTo *float64 `json:"stardateTo,omitempty"`
	Title *string `json:"title,omitempty"`
	Uid *string `json:"uid,omitempty"`
	UsAirDate *string `json:"usAirDate,omitempty"`
	YearFrom *int `json:"yearFrom,omitempty"`
	YearTo *int `json:"yearTo,omitempty"`
}

// Spacecraft is the typed data model for the spacecraft entity.
type Spacecraft struct {
	DateStatus *string `json:"dateStatus,omitempty"`
	Name *string `json:"name,omitempty"`
	Operator *string `json:"operator,omitempty"`
	Owner *string `json:"owner,omitempty"`
	Registry *string `json:"registry,omitempty"`
	SpacecraftClass *string `json:"spacecraftClass,omitempty"`
	Status *string `json:"status,omitempty"`
	Uid *string `json:"uid,omitempty"`
}

// SpacecraftListMatch is the typed request payload for Spacecraft.ListTyped.
type SpacecraftListMatch struct {
	DateStatus *string `json:"dateStatus,omitempty"`
	Name *string `json:"name,omitempty"`
	Operator *string `json:"operator,omitempty"`
	Owner *string `json:"owner,omitempty"`
	Registry *string `json:"registry,omitempty"`
	SpacecraftClass *string `json:"spacecraftClass,omitempty"`
	Status *string `json:"status,omitempty"`
	Uid *string `json:"uid,omitempty"`
}

// Species is the typed data model for the species entity.
type Species struct {
	ExtinctSpecies *bool `json:"extinctSpecies,omitempty"`
	ExtraGalacticSpecies *bool `json:"extraGalacticSpecies,omitempty"`
	Homeworld *string `json:"homeworld,omitempty"`
	HumanoidSpecies *bool `json:"humanoidSpecies,omitempty"`
	Name *string `json:"name,omitempty"`
	Quadrant *string `json:"quadrant,omitempty"`
	Uid *string `json:"uid,omitempty"`
	WarpCapableSpecies *bool `json:"warpCapableSpecies,omitempty"`
}

// SpeciesListMatch is the typed request payload for Species.ListTyped.
type SpeciesListMatch struct {
	ExtinctSpecies *bool `json:"extinctSpecies,omitempty"`
	ExtraGalacticSpecies *bool `json:"extraGalacticSpecies,omitempty"`
	Homeworld *string `json:"homeworld,omitempty"`
	HumanoidSpecies *bool `json:"humanoidSpecies,omitempty"`
	Name *string `json:"name,omitempty"`
	Quadrant *string `json:"quadrant,omitempty"`
	Uid *string `json:"uid,omitempty"`
	WarpCapableSpecies *bool `json:"warpCapableSpecies,omitempty"`
}

// asMap turns a typed request/data struct into the map[string]any the
// runtime op pipeline consumes, honouring the json tags above.
func asMap(v any) map[string]any {
	out := map[string]any{}
	b, err := json.Marshal(v)
	if err != nil {
		return out
	}
	_ = json.Unmarshal(b, &out)
	return out
}

// entityData unwraps an entity to its data map.
//
// Operations resolve to the ENTITY, not the raw data (see AGENTS.md), and an
// entity's fields are UNEXPORTED — marshalling one directly yields `{}`, so
// every typed accessor would silently hand back a zero-valued struct. The
// typed boundary therefore takes the data hop first.
func entityData(v any) any {
	if ent, ok := v.(core.Entity); ok {
		return ent.Data()
	}
	return v
}

// typedFrom decodes a runtime value (an entity, or the map[string]any the op
// pipeline produced) into a typed model T via a JSON round-trip. On any error
// it returns the zero value of T; the op's own (value, error) tuple carries
// the real error.
func typedFrom[T any](v any) T {
	var out T
	v = entityData(v)
	if v == nil {
		return out
	}
	b, err := json.Marshal(v)
	if err != nil {
		return out
	}
	_ = json.Unmarshal(b, &out)
	return out
}

// typedSliceFrom decodes a runtime list value into a typed slice []T via a
// JSON round-trip, for list ops. `list` resolves to a slice of ENTITY
// instances, so each element takes the data hop.
func typedSliceFrom[T any](v any) []T {
	var out []T
	if v == nil {
		return out
	}
	if list, ok := v.([]any); ok {
		unwrapped := make([]any, 0, len(list))
		for _, item := range list {
			unwrapped = append(unwrapped, entityData(item))
		}
		v = unwrapped
	}
	b, err := json.Marshal(v)
	if err != nil {
		return out
	}
	_ = json.Unmarshal(b, &out)
	return out
}
