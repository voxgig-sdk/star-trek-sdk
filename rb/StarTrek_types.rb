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
# @!attribute [rw] fictional_character
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
# @!attribute [rw] year_of_birth
#   @return [Integer, nil]
#
# @!attribute [rw] year_of_death
#   @return [Integer, nil]
Character = Struct.new(
  :deceased,
  :fictional_character,
  :gender,
  :height,
  :hologram,
  :name,
  :uid,
  :weight,
  :year_of_birth,
  :year_of_death,
  keyword_init: true
)

# Match filter for Character#list (any subset of Character fields).
#
# @!attribute [rw] deceased
#   @return [Boolean, nil]
#
# @!attribute [rw] fictional_character
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
# @!attribute [rw] year_of_birth
#   @return [Integer, nil]
#
# @!attribute [rw] year_of_death
#   @return [Integer, nil]
CharacterListMatch = Struct.new(
  :deceased,
  :fictional_character,
  :gender,
  :height,
  :hologram,
  :name,
  :uid,
  :weight,
  :year_of_birth,
  :year_of_death,
  keyword_init: true
)

# Episode entity data model.
#
# @!attribute [rw] episode_number
#   @return [Integer, nil]
#
# @!attribute [rw] feature_length
#   @return [Boolean, nil]
#
# @!attribute [rw] production_serial_number
#   @return [String, nil]
#
# @!attribute [rw] season_number
#   @return [Integer, nil]
#
# @!attribute [rw] stardate_from
#   @return [Float, nil]
#
# @!attribute [rw] stardate_to
#   @return [Float, nil]
#
# @!attribute [rw] title
#   @return [String, nil]
#
# @!attribute [rw] uid
#   @return [String, nil]
#
# @!attribute [rw] us_air_date
#   @return [String, nil]
#
# @!attribute [rw] year_from
#   @return [Integer, nil]
#
# @!attribute [rw] year_to
#   @return [Integer, nil]
Episode = Struct.new(
  :episode_number,
  :feature_length,
  :production_serial_number,
  :season_number,
  :stardate_from,
  :stardate_to,
  :title,
  :uid,
  :us_air_date,
  :year_from,
  :year_to,
  keyword_init: true
)

# Match filter for Episode#list (any subset of Episode fields).
#
# @!attribute [rw] episode_number
#   @return [Integer, nil]
#
# @!attribute [rw] feature_length
#   @return [Boolean, nil]
#
# @!attribute [rw] production_serial_number
#   @return [String, nil]
#
# @!attribute [rw] season_number
#   @return [Integer, nil]
#
# @!attribute [rw] stardate_from
#   @return [Float, nil]
#
# @!attribute [rw] stardate_to
#   @return [Float, nil]
#
# @!attribute [rw] title
#   @return [String, nil]
#
# @!attribute [rw] uid
#   @return [String, nil]
#
# @!attribute [rw] us_air_date
#   @return [String, nil]
#
# @!attribute [rw] year_from
#   @return [Integer, nil]
#
# @!attribute [rw] year_to
#   @return [Integer, nil]
EpisodeListMatch = Struct.new(
  :episode_number,
  :feature_length,
  :production_serial_number,
  :season_number,
  :stardate_from,
  :stardate_to,
  :title,
  :uid,
  :us_air_date,
  :year_from,
  :year_to,
  keyword_init: true
)

# Spacecraft entity data model.
#
# @!attribute [rw] date_status
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
# @!attribute [rw] spacecraft_class
#   @return [String, nil]
#
# @!attribute [rw] status
#   @return [String, nil]
#
# @!attribute [rw] uid
#   @return [String, nil]
Spacecraft = Struct.new(
  :date_status,
  :name,
  :operator,
  :owner,
  :registry,
  :spacecraft_class,
  :status,
  :uid,
  keyword_init: true
)

# Match filter for Spacecraft#list (any subset of Spacecraft fields).
#
# @!attribute [rw] date_status
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
# @!attribute [rw] spacecraft_class
#   @return [String, nil]
#
# @!attribute [rw] status
#   @return [String, nil]
#
# @!attribute [rw] uid
#   @return [String, nil]
SpacecraftListMatch = Struct.new(
  :date_status,
  :name,
  :operator,
  :owner,
  :registry,
  :spacecraft_class,
  :status,
  :uid,
  keyword_init: true
)

# Species entity data model.
#
# @!attribute [rw] extinct_species
#   @return [Boolean, nil]
#
# @!attribute [rw] extra_galactic_species
#   @return [Boolean, nil]
#
# @!attribute [rw] homeworld
#   @return [String, nil]
#
# @!attribute [rw] humanoid_species
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
# @!attribute [rw] warp_capable_species
#   @return [Boolean, nil]
Species = Struct.new(
  :extinct_species,
  :extra_galactic_species,
  :homeworld,
  :humanoid_species,
  :name,
  :quadrant,
  :uid,
  :warp_capable_species,
  keyword_init: true
)

# Match filter for Species#list (any subset of Species fields).
#
# @!attribute [rw] extinct_species
#   @return [Boolean, nil]
#
# @!attribute [rw] extra_galactic_species
#   @return [Boolean, nil]
#
# @!attribute [rw] homeworld
#   @return [String, nil]
#
# @!attribute [rw] humanoid_species
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
# @!attribute [rw] warp_capable_species
#   @return [Boolean, nil]
SpeciesListMatch = Struct.new(
  :extinct_species,
  :extra_galactic_species,
  :homeworld,
  :humanoid_species,
  :name,
  :quadrant,
  :uid,
  :warp_capable_species,
  keyword_init: true
)

