-- Typed models for the StarTrek SDK (LuaLS annotations).
--
-- GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
-- params (op.<name>.points[].args.params[]). Field/param types come from the
-- canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
-- @voxgig/apidef VALID_CANON). Annotations only — no runtime effect. Do not
-- edit by hand.

---@class Character
---@field deceased? boolean
---@field fictionalCharacter? boolean
---@field gender? string
---@field height? number
---@field hologram? boolean
---@field name? string
---@field uid? string
---@field weight? number
---@field yearOfBirth? number
---@field yearOfDeath? number

---@class CharacterListMatch
---@field deceased? boolean
---@field fictionalCharacter? boolean
---@field gender? string
---@field height? number
---@field hologram? boolean
---@field name? string
---@field uid? string
---@field weight? number
---@field yearOfBirth? number
---@field yearOfDeath? number

---@class Episode
---@field episodeNumber? number
---@field featureLength? boolean
---@field productionSerialNumber? string
---@field seasonNumber? number
---@field stardateFrom? number
---@field stardateTo? number
---@field title? string
---@field uid? string
---@field usAirDate? string
---@field yearFrom? number
---@field yearTo? number

---@class EpisodeListMatch
---@field episodeNumber? number
---@field featureLength? boolean
---@field productionSerialNumber? string
---@field seasonNumber? number
---@field stardateFrom? number
---@field stardateTo? number
---@field title? string
---@field uid? string
---@field usAirDate? string
---@field yearFrom? number
---@field yearTo? number

---@class Spacecraft
---@field dateStatus? string
---@field name? string
---@field operator? string
---@field owner? string
---@field registry? string
---@field spacecraftClass? string
---@field status? string
---@field uid? string

---@class SpacecraftListMatch
---@field dateStatus? string
---@field name? string
---@field operator? string
---@field owner? string
---@field registry? string
---@field spacecraftClass? string
---@field status? string
---@field uid? string

---@class Species
---@field extinctSpecies? boolean
---@field extraGalacticSpecies? boolean
---@field homeworld? string
---@field humanoidSpecies? boolean
---@field name? string
---@field quadrant? string
---@field uid? string
---@field warpCapableSpecies? boolean

---@class SpeciesListMatch
---@field extinctSpecies? boolean
---@field extraGalacticSpecies? boolean
---@field homeworld? string
---@field humanoidSpecies? boolean
---@field name? string
---@field quadrant? string
---@field uid? string
---@field warpCapableSpecies? boolean

local M = {}

return M
