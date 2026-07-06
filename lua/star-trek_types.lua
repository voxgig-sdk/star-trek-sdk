-- Typed models for the StarTrek SDK (LuaLS annotations).
--
-- GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
-- params (op.<name>.points[].args.params[]). Field/param types come from the
-- canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
-- @voxgig/apidef VALID_CANON). Annotations only — no runtime effect. Do not
-- edit by hand.

---@class Character
---@field deceased? boolean
---@field fictional_character? boolean
---@field gender? string
---@field height? number
---@field hologram? boolean
---@field name? string
---@field uid? string
---@field weight? number
---@field year_of_birth? number
---@field year_of_death? number

---@class CharacterListMatch
---@field deceased? boolean
---@field fictional_character? boolean
---@field gender? string
---@field height? number
---@field hologram? boolean
---@field name? string
---@field uid? string
---@field weight? number
---@field year_of_birth? number
---@field year_of_death? number

---@class Episode
---@field episode_number? number
---@field feature_length? boolean
---@field production_serial_number? string
---@field season_number? number
---@field stardate_from? number
---@field stardate_to? number
---@field title? string
---@field uid? string
---@field us_air_date? string
---@field year_from? number
---@field year_to? number

---@class EpisodeListMatch
---@field episode_number? number
---@field feature_length? boolean
---@field production_serial_number? string
---@field season_number? number
---@field stardate_from? number
---@field stardate_to? number
---@field title? string
---@field uid? string
---@field us_air_date? string
---@field year_from? number
---@field year_to? number

---@class Spacecraft
---@field date_status? string
---@field name? string
---@field operator? string
---@field owner? string
---@field registry? string
---@field spacecraft_class? string
---@field status? string
---@field uid? string

---@class SpacecraftListMatch
---@field date_status? string
---@field name? string
---@field operator? string
---@field owner? string
---@field registry? string
---@field spacecraft_class? string
---@field status? string
---@field uid? string

---@class Species
---@field extinct_species? boolean
---@field extra_galactic_species? boolean
---@field homeworld? string
---@field humanoid_species? boolean
---@field name? string
---@field quadrant? string
---@field uid? string
---@field warp_capable_species? boolean

---@class SpeciesListMatch
---@field extinct_species? boolean
---@field extra_galactic_species? boolean
---@field homeworld? string
---@field humanoid_species? boolean
---@field name? string
---@field quadrant? string
---@field uid? string
---@field warp_capable_species? boolean

local M = {}

return M
