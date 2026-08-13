# frozen_string_literal: true

# Typed models for the StarTrek SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Member types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Ruby types are unenforced; these YARD
# annotations document the shapes. Do not edit by hand.

# Character entity data model.
#
# @!attribute [rw] deceased
#   @return [Boolean, nil]
#
# @!attribute [rw] fictionalCharacter
#   @return [Boolean, nil]
#
# @!attribute [rw] gender
#   @return [String, nil]
#
# @!attribute [rw] height
#   @return [Integer, nil]
#
# @!attribute [rw] hologram
#   @return [Boolean, nil]
#
# @!attribute [rw] name
#   @return [String, nil]
#
# @!attribute [rw] uid
#   @return [String, nil]
#
# @!attribute [rw] weight
#   @return [Integer, nil]
#
# @!attribute [rw] yearOfBirth
#   @return [Integer, nil]
#
# @!attribute [rw] yearOfDeath
#   @return [Integer, nil]
Character = Struct.new(
  :deceased,
  :fictionalCharacter,
  :gender,
  :height,
  :hologram,
  :name,
  :uid,
  :weight,
  :yearOfBirth,
  :yearOfDeath,
  keyword_init: true
)

# Request payload for Character#list.
#
# @!attribute [rw] deceased
#   @return [Boolean, nil]
#
# @!attribute [rw] fictionalCharacter
#   @return [Boolean, nil]
#
# @!attribute [rw] gender
#   @return [String, nil]
#
# @!attribute [rw] height
#   @return [Integer, nil]
#
# @!attribute [rw] hologram
#   @return [Boolean, nil]
#
# @!attribute [rw] name
#   @return [String, nil]
#
# @!attribute [rw] uid
#   @return [String, nil]
#
# @!attribute [rw] weight
#   @return [Integer, nil]
#
# @!attribute [rw] yearOfBirth
#   @return [Integer, nil]
#
# @!attribute [rw] yearOfDeath
#   @return [Integer, nil]
CharacterListMatch = Struct.new(
  :deceased,
  :fictionalCharacter,
  :gender,
  :height,
  :hologram,
  :name,
  :uid,
  :weight,
  :yearOfBirth,
  :yearOfDeath,
  keyword_init: true
)

# Episode entity data model.
#
# @!attribute [rw] episodeNumber
#   @return [Integer, nil]
#
# @!attribute [rw] featureLength
#   @return [Boolean, nil]
#
# @!attribute [rw] productionSerialNumber
#   @return [String, nil]
#
# @!attribute [rw] seasonNumber
#   @return [Integer, nil]
#
# @!attribute [rw] stardateFrom
#   @return [Float, nil]
#
# @!attribute [rw] stardateTo
#   @return [Float, nil]
#
# @!attribute [rw] title
#   @return [String, nil]
#
# @!attribute [rw] uid
#   @return [String, nil]
#
# @!attribute [rw] usAirDate
#   @return [String, nil]
#
# @!attribute [rw] yearFrom
#   @return [Integer, nil]
#
# @!attribute [rw] yearTo
#   @return [Integer, nil]
Episode = Struct.new(
  :episodeNumber,
  :featureLength,
  :productionSerialNumber,
  :seasonNumber,
  :stardateFrom,
  :stardateTo,
  :title,
  :uid,
  :usAirDate,
  :yearFrom,
  :yearTo,
  keyword_init: true
)

# Request payload for Episode#list.
#
# @!attribute [rw] episodeNumber
#   @return [Integer, nil]
#
# @!attribute [rw] featureLength
#   @return [Boolean, nil]
#
# @!attribute [rw] productionSerialNumber
#   @return [String, nil]
#
# @!attribute [rw] seasonNumber
#   @return [Integer, nil]
#
# @!attribute [rw] stardateFrom
#   @return [Float, nil]
#
# @!attribute [rw] stardateTo
#   @return [Float, nil]
#
# @!attribute [rw] title
#   @return [String, nil]
#
# @!attribute [rw] uid
#   @return [String, nil]
#
# @!attribute [rw] usAirDate
#   @return [String, nil]
#
# @!attribute [rw] yearFrom
#   @return [Integer, nil]
#
# @!attribute [rw] yearTo
#   @return [Integer, nil]
EpisodeListMatch = Struct.new(
  :episodeNumber,
  :featureLength,
  :productionSerialNumber,
  :seasonNumber,
  :stardateFrom,
  :stardateTo,
  :title,
  :uid,
  :usAirDate,
  :yearFrom,
  :yearTo,
  keyword_init: true
)

# Spacecraft entity data model.
#
# @!attribute [rw] dateStatus
#   @return [String, nil]
#
# @!attribute [rw] name
#   @return [String, nil]
#
# @!attribute [rw] operator
#   @return [String, nil]
#
# @!attribute [rw] owner
#   @return [String, nil]
#
# @!attribute [rw] registry
#   @return [String, nil]
#
# @!attribute [rw] spacecraftClass
#   @return [String, nil]
#
# @!attribute [rw] status
#   @return [String, nil]
#
# @!attribute [rw] uid
#   @return [String, nil]
Spacecraft = Struct.new(
  :dateStatus,
  :name,
  :operator,
  :owner,
  :registry,
  :spacecraftClass,
  :status,
  :uid,
  keyword_init: true
)

# Request payload for Spacecraft#list.
#
# @!attribute [rw] dateStatus
#   @return [String, nil]
#
# @!attribute [rw] name
#   @return [String, nil]
#
# @!attribute [rw] operator
#   @return [String, nil]
#
# @!attribute [rw] owner
#   @return [String, nil]
#
# @!attribute [rw] registry
#   @return [String, nil]
#
# @!attribute [rw] spacecraftClass
#   @return [String, nil]
#
# @!attribute [rw] status
#   @return [String, nil]
#
# @!attribute [rw] uid
#   @return [String, nil]
SpacecraftListMatch = Struct.new(
  :dateStatus,
  :name,
  :operator,
  :owner,
  :registry,
  :spacecraftClass,
  :status,
  :uid,
  keyword_init: true
)

# Species entity data model.
#
# @!attribute [rw] extinctSpecies
#   @return [Boolean, nil]
#
# @!attribute [rw] extraGalacticSpecies
#   @return [Boolean, nil]
#
# @!attribute [rw] homeworld
#   @return [String, nil]
#
# @!attribute [rw] humanoidSpecies
#   @return [Boolean, nil]
#
# @!attribute [rw] name
#   @return [String, nil]
#
# @!attribute [rw] quadrant
#   @return [String, nil]
#
# @!attribute [rw] uid
#   @return [String, nil]
#
# @!attribute [rw] warpCapableSpecies
#   @return [Boolean, nil]
Species = Struct.new(
  :extinctSpecies,
  :extraGalacticSpecies,
  :homeworld,
  :humanoidSpecies,
  :name,
  :quadrant,
  :uid,
  :warpCapableSpecies,
  keyword_init: true
)

# Request payload for Species#list.
#
# @!attribute [rw] extinctSpecies
#   @return [Boolean, nil]
#
# @!attribute [rw] extraGalacticSpecies
#   @return [Boolean, nil]
#
# @!attribute [rw] homeworld
#   @return [String, nil]
#
# @!attribute [rw] humanoidSpecies
#   @return [Boolean, nil]
#
# @!attribute [rw] name
#   @return [String, nil]
#
# @!attribute [rw] quadrant
#   @return [String, nil]
#
# @!attribute [rw] uid
#   @return [String, nil]
#
# @!attribute [rw] warpCapableSpecies
#   @return [Boolean, nil]
SpeciesListMatch = Struct.new(
  :extinctSpecies,
  :extraGalacticSpecies,
  :homeworld,
  :humanoidSpecies,
  :name,
  :quadrant,
  :uid,
  :warpCapableSpecies,
  keyword_init: true
)

