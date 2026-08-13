// Typed models for the StarTrek SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.

export interface Character {
  deceased?: boolean
  fictionalCharacter?: boolean
  gender?: string
  height?: number
  hologram?: boolean
  name?: string
  uid?: string
  weight?: number
  yearOfBirth?: number
  yearOfDeath?: number
}

export interface CharacterListMatch {
  deceased?: boolean
  fictionalCharacter?: boolean
  gender?: string
  height?: number
  hologram?: boolean
  name?: string
  uid?: string
  weight?: number
  yearOfBirth?: number
  yearOfDeath?: number

  // Selects a custom action instead of the plain list:
  //   'search'
  // The remaining keys are that action's own payload.
  $action?: string
  [action: string]: any
}

export interface Episode {
  episodeNumber?: number
  featureLength?: boolean
  productionSerialNumber?: string
  seasonNumber?: number
  stardateFrom?: number
  stardateTo?: number
  title?: string
  uid?: string
  usAirDate?: string
  yearFrom?: number
  yearTo?: number
}

export interface EpisodeListMatch {
  episodeNumber?: number
  featureLength?: boolean
  productionSerialNumber?: string
  seasonNumber?: number
  stardateFrom?: number
  stardateTo?: number
  title?: string
  uid?: string
  usAirDate?: string
  yearFrom?: number
  yearTo?: number

  // Selects a custom action instead of the plain list:
  //   'search'
  // The remaining keys are that action's own payload.
  $action?: string
  [action: string]: any
}

export interface Spacecraft {
  dateStatus?: string
  name?: string
  operator?: string
  owner?: string
  registry?: string
  spacecraftClass?: string
  status?: string
  uid?: string
}

export interface SpacecraftListMatch {
  dateStatus?: string
  name?: string
  operator?: string
  owner?: string
  registry?: string
  spacecraftClass?: string
  status?: string
  uid?: string

  // Selects a custom action instead of the plain list:
  //   'search'
  // The remaining keys are that action's own payload.
  $action?: string
  [action: string]: any
}

export interface Species {
  extinctSpecies?: boolean
  extraGalacticSpecies?: boolean
  homeworld?: string
  humanoidSpecies?: boolean
  name?: string
  quadrant?: string
  uid?: string
  warpCapableSpecies?: boolean
}

export interface SpeciesListMatch {
  extinctSpecies?: boolean
  extraGalacticSpecies?: boolean
  homeworld?: string
  humanoidSpecies?: boolean
  name?: string
  quadrant?: string
  uid?: string
  warpCapableSpecies?: boolean

  // Selects a custom action instead of the plain list:
  //   'search'
  // The remaining keys are that action's own payload.
  $action?: string
  [action: string]: any
}

