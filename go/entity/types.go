// Typed models for the StarTrek SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.
package entity

import "encoding/json"

// Character is the typed data model for the character entity.
type Character struct {
	Deceased *bool `json:"deceased,omitempty"`
	FictionalCharacter *bool `json:"fictional_character,omitempty"`
	Gender *string `json:"gender,omitempty"`
	Height *int `json:"height,omitempty"`
	Hologram *bool `json:"hologram,omitempty"`
	Name *string `json:"name,omitempty"`
	Uid *string `json:"uid,omitempty"`
	Weight *int `json:"weight,omitempty"`
	YearOfBirth *int `json:"year_of_birth,omitempty"`
	YearOfDeath *int `json:"year_of_death,omitempty"`
}

// CharacterListMatch is the typed request payload for Character.ListTyped.
type CharacterListMatch struct {
	Deceased *bool `json:"deceased,omitempty"`
	FictionalCharacter *bool `json:"fictional_character,omitempty"`
	Gender *string `json:"gender,omitempty"`
	Height *int `json:"height,omitempty"`
	Hologram *bool `json:"hologram,omitempty"`
	Name *string `json:"name,omitempty"`
	Uid *string `json:"uid,omitempty"`
	Weight *int `json:"weight,omitempty"`
	YearOfBirth *int `json:"year_of_birth,omitempty"`
	YearOfDeath *int `json:"year_of_death,omitempty"`
}

// Episode is the typed data model for the episode entity.
type Episode struct {
	EpisodeNumber *int `json:"episode_number,omitempty"`
	FeatureLength *bool `json:"feature_length,omitempty"`
	ProductionSerialNumber *string `json:"production_serial_number,omitempty"`
	SeasonNumber *int `json:"season_number,omitempty"`
	StardateFrom *float64 `json:"stardate_from,omitempty"`
	StardateTo *float64 `json:"stardate_to,omitempty"`
	Title *string `json:"title,omitempty"`
	Uid *string `json:"uid,omitempty"`
	UsAirDate *string `json:"us_air_date,omitempty"`
	YearFrom *int `json:"year_from,omitempty"`
	YearTo *int `json:"year_to,omitempty"`
}

// EpisodeListMatch is the typed request payload for Episode.ListTyped.
type EpisodeListMatch struct {
	EpisodeNumber *int `json:"episode_number,omitempty"`
	FeatureLength *bool `json:"feature_length,omitempty"`
	ProductionSerialNumber *string `json:"production_serial_number,omitempty"`
	SeasonNumber *int `json:"season_number,omitempty"`
	StardateFrom *float64 `json:"stardate_from,omitempty"`
	StardateTo *float64 `json:"stardate_to,omitempty"`
	Title *string `json:"title,omitempty"`
	Uid *string `json:"uid,omitempty"`
	UsAirDate *string `json:"us_air_date,omitempty"`
	YearFrom *int `json:"year_from,omitempty"`
	YearTo *int `json:"year_to,omitempty"`
}

// Spacecraft is the typed data model for the spacecraft entity.
type Spacecraft struct {
	DateStatus *string `json:"date_status,omitempty"`
	Name *string `json:"name,omitempty"`
	Operator *string `json:"operator,omitempty"`
	Owner *string `json:"owner,omitempty"`
	Registry *string `json:"registry,omitempty"`
	SpacecraftClass *string `json:"spacecraft_class,omitempty"`
	Status *string `json:"status,omitempty"`
	Uid *string `json:"uid,omitempty"`
}

// SpacecraftListMatch is the typed request payload for Spacecraft.ListTyped.
type SpacecraftListMatch struct {
	DateStatus *string `json:"date_status,omitempty"`
	Name *string `json:"name,omitempty"`
	Operator *string `json:"operator,omitempty"`
	Owner *string `json:"owner,omitempty"`
	Registry *string `json:"registry,omitempty"`
	SpacecraftClass *string `json:"spacecraft_class,omitempty"`
	Status *string `json:"status,omitempty"`
	Uid *string `json:"uid,omitempty"`
}

// Species is the typed data model for the species entity.
type Species struct {
	ExtinctSpecies *bool `json:"extinct_species,omitempty"`
	ExtraGalacticSpecies *bool `json:"extra_galactic_species,omitempty"`
	Homeworld *string `json:"homeworld,omitempty"`
	HumanoidSpecies *bool `json:"humanoid_species,omitempty"`
	Name *string `json:"name,omitempty"`
	Quadrant *string `json:"quadrant,omitempty"`
	Uid *string `json:"uid,omitempty"`
	WarpCapableSpecies *bool `json:"warp_capable_species,omitempty"`
}

// SpeciesListMatch is the typed request payload for Species.ListTyped.
type SpeciesListMatch struct {
	ExtinctSpecies *bool `json:"extinct_species,omitempty"`
	ExtraGalacticSpecies *bool `json:"extra_galactic_species,omitempty"`
	Homeworld *string `json:"homeworld,omitempty"`
	HumanoidSpecies *bool `json:"humanoid_species,omitempty"`
	Name *string `json:"name,omitempty"`
	Quadrant *string `json:"quadrant,omitempty"`
	Uid *string `json:"uid,omitempty"`
	WarpCapableSpecies *bool `json:"warp_capable_species,omitempty"`
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

// typedFrom decodes a runtime value (a map[string]any produced by the op
// pipeline) into a typed model T via a JSON round-trip. On any error it
// returns the zero value of T; the op's own (value, error) tuple carries the
// real error.
func typedFrom[T any](v any) T {
	var out T
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

// typedSliceFrom decodes a runtime list value ([]any of maps) into a typed
// slice []T via a JSON round-trip, for list ops.
func typedSliceFrom[T any](v any) []T {
	var out []T
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
