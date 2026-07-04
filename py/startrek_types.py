# Typed models for the StarTrek SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Field/param types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Do not edit by hand.
#
# These are TypedDicts, not dataclasses: the SDK ops return/accept plain dicts
# at runtime, and a TypedDict IS a dict shape, so the types match the runtime.
# Optional (req:false) keys are modelled as TypedDict key-optionality
# (total=False), split into a required base + total=False subclass when a type
# has both required and optional keys.

from __future__ import annotations

from typing import TypedDict, Any


class Character(TypedDict, total=False):
    deceased: bool
    fictional_character: bool
    gender: str
    height: int
    hologram: bool
    name: str
    uid: str
    weight: int
    year_of_birth: int
    year_of_death: int


class CharacterListMatch(TypedDict, total=False):
    deceased: bool
    fictional_character: bool
    gender: str
    height: int
    hologram: bool
    name: str
    uid: str
    weight: int
    year_of_birth: int
    year_of_death: int


class Episode(TypedDict, total=False):
    episode_number: int
    feature_length: bool
    production_serial_number: str
    season_number: int
    stardate_from: float
    stardate_to: float
    title: str
    uid: str
    us_air_date: str
    year_from: int
    year_to: int


class EpisodeListMatch(TypedDict, total=False):
    episode_number: int
    feature_length: bool
    production_serial_number: str
    season_number: int
    stardate_from: float
    stardate_to: float
    title: str
    uid: str
    us_air_date: str
    year_from: int
    year_to: int


class Spacecraft(TypedDict, total=False):
    date_status: str
    name: str
    operator: str
    owner: str
    registry: str
    spacecraft_class: str
    status: str
    uid: str


class SpacecraftListMatch(TypedDict, total=False):
    date_status: str
    name: str
    operator: str
    owner: str
    registry: str
    spacecraft_class: str
    status: str
    uid: str


class Species(TypedDict, total=False):
    extinct_species: bool
    extra_galactic_species: bool
    homeworld: str
    humanoid_species: bool
    name: str
    quadrant: str
    uid: str
    warp_capable_species: bool


class SpeciesListMatch(TypedDict, total=False):
    extinct_species: bool
    extra_galactic_species: bool
    homeworld: str
    humanoid_species: bool
    name: str
    quadrant: str
    uid: str
    warp_capable_species: bool
