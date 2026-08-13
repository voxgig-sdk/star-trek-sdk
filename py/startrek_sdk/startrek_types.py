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
    fictionalCharacter: bool
    gender: str
    height: int
    hologram: bool
    name: str
    uid: str
    weight: int
    yearOfBirth: int
    yearOfDeath: int


class CharacterListMatch(TypedDict, total=False):
    deceased: bool
    fictionalCharacter: bool
    gender: str
    height: int
    hologram: bool
    name: str
    uid: str
    weight: int
    yearOfBirth: int
    yearOfDeath: int


class Episode(TypedDict, total=False):
    episodeNumber: int
    featureLength: bool
    productionSerialNumber: str
    seasonNumber: int
    stardateFrom: float
    stardateTo: float
    title: str
    uid: str
    usAirDate: str
    yearFrom: int
    yearTo: int


class EpisodeListMatch(TypedDict, total=False):
    episodeNumber: int
    featureLength: bool
    productionSerialNumber: str
    seasonNumber: int
    stardateFrom: float
    stardateTo: float
    title: str
    uid: str
    usAirDate: str
    yearFrom: int
    yearTo: int


class Spacecraft(TypedDict, total=False):
    dateStatus: str
    name: str
    operator: str
    owner: str
    registry: str
    spacecraftClass: str
    status: str
    uid: str


class SpacecraftListMatch(TypedDict, total=False):
    dateStatus: str
    name: str
    operator: str
    owner: str
    registry: str
    spacecraftClass: str
    status: str
    uid: str


class Species(TypedDict, total=False):
    extinctSpecies: bool
    extraGalacticSpecies: bool
    homeworld: str
    humanoidSpecies: bool
    name: str
    quadrant: str
    uid: str
    warpCapableSpecies: bool


class SpeciesListMatch(TypedDict, total=False):
    extinctSpecies: bool
    extraGalacticSpecies: bool
    homeworld: str
    humanoidSpecies: bool
    name: str
    quadrant: str
    uid: str
    warpCapableSpecies: bool
