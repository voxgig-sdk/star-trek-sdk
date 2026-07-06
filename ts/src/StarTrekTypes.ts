// Typed models for the StarTrek SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.

export interface Character {
  deceased?: boolean
  fictional_character?: boolean
  gender?: string
  height?: number
  hologram?: boolean
  name?: string
  uid?: string
  weight?: number
  year_of_birth?: number
  year_of_death?: number
}

export interface CharacterListMatch {
  deceased?: boolean
  fictional_character?: boolean
  gender?: string
  height?: number
  hologram?: boolean
  name?: string
  uid?: string
  weight?: number
  year_of_birth?: number
  year_of_death?: number
}

export interface Episode {
  episode_number?: number
  feature_length?: boolean
  production_serial_number?: string
  season_number?: number
  stardate_from?: number
  stardate_to?: number
  title?: string
  uid?: string
  us_air_date?: string
  year_from?: number
  year_to?: number
}

export interface EpisodeListMatch {
  episode_number?: number
  feature_length?: boolean
  production_serial_number?: string
  season_number?: number
  stardate_from?: number
  stardate_to?: number
  title?: string
  uid?: string
  us_air_date?: string
  year_from?: number
  year_to?: number
}

export interface Spacecraft {
  date_status?: string
  name?: string
  operator?: string
  owner?: string
  registry?: string
  spacecraft_class?: string
  status?: string
  uid?: string
}

export interface SpacecraftListMatch {
  date_status?: string
  name?: string
  operator?: string
  owner?: string
  registry?: string
  spacecraft_class?: string
  status?: string
  uid?: string
}

export interface Species {
  extinct_species?: boolean
  extra_galactic_species?: boolean
  homeworld?: string
  humanoid_species?: boolean
  name?: string
  quadrant?: string
  uid?: string
  warp_capable_species?: boolean
}

export interface SpeciesListMatch {
  extinct_species?: boolean
  extra_galactic_species?: boolean
  homeworld?: string
  humanoid_species?: boolean
  name?: string
  quadrant?: string
  uid?: string
  warp_capable_species?: boolean
}

