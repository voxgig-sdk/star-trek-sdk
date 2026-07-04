# Typed models for the StarTrek SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Field/param types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Do not edit by hand.

from __future__ import annotations

from dataclasses import dataclass
from typing import Optional, Any


@dataclass
class Character:
    deceased: Optional[bool] = None
    fictional_character: Optional[bool] = None
    gender: Optional[str] = None
    height: Optional[int] = None
    hologram: Optional[bool] = None
    name: Optional[str] = None
    uid: Optional[str] = None
    weight: Optional[int] = None
    year_of_birth: Optional[int] = None
    year_of_death: Optional[int] = None


@dataclass
class CharacterListMatch:
    deceased: Optional[bool] = None
    fictional_character: Optional[bool] = None
    gender: Optional[str] = None
    height: Optional[int] = None
    hologram: Optional[bool] = None
    name: Optional[str] = None
    uid: Optional[str] = None
    weight: Optional[int] = None
    year_of_birth: Optional[int] = None
    year_of_death: Optional[int] = None


@dataclass
class Episode:
    episode_number: Optional[int] = None
    feature_length: Optional[bool] = None
    production_serial_number: Optional[str] = None
    season_number: Optional[int] = None
    stardate_from: Optional[float] = None
    stardate_to: Optional[float] = None
    title: Optional[str] = None
    uid: Optional[str] = None
    us_air_date: Optional[str] = None
    year_from: Optional[int] = None
    year_to: Optional[int] = None


@dataclass
class EpisodeListMatch:
    episode_number: Optional[int] = None
    feature_length: Optional[bool] = None
    production_serial_number: Optional[str] = None
    season_number: Optional[int] = None
    stardate_from: Optional[float] = None
    stardate_to: Optional[float] = None
    title: Optional[str] = None
    uid: Optional[str] = None
    us_air_date: Optional[str] = None
    year_from: Optional[int] = None
    year_to: Optional[int] = None


@dataclass
class Spacecraft:
    date_status: Optional[str] = None
    name: Optional[str] = None
    operator: Optional[str] = None
    owner: Optional[str] = None
    registry: Optional[str] = None
    spacecraft_class: Optional[str] = None
    status: Optional[str] = None
    uid: Optional[str] = None


@dataclass
class SpacecraftListMatch:
    date_status: Optional[str] = None
    name: Optional[str] = None
    operator: Optional[str] = None
    owner: Optional[str] = None
    registry: Optional[str] = None
    spacecraft_class: Optional[str] = None
    status: Optional[str] = None
    uid: Optional[str] = None


@dataclass
class Species:
    extinct_species: Optional[bool] = None
    extra_galactic_species: Optional[bool] = None
    homeworld: Optional[str] = None
    humanoid_species: Optional[bool] = None
    name: Optional[str] = None
    quadrant: Optional[str] = None
    uid: Optional[str] = None
    warp_capable_species: Optional[bool] = None


@dataclass
class SpeciesListMatch:
    extinct_species: Optional[bool] = None
    extra_galactic_species: Optional[bool] = None
    homeworld: Optional[str] = None
    humanoid_species: Optional[bool] = None
    name: Optional[str] = None
    quadrant: Optional[str] = None
    uid: Optional[str] = None
    warp_capable_species: Optional[bool] = None

