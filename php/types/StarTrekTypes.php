<?php
declare(strict_types=1);

// Typed models for the StarTrek SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.
//
// These are documentation-grade value objects (PHP 8 typed properties),
// registered on the composer classmap autoload. The SDK boundary exchanges
// assoc-arrays; these classes name the shapes for tooling and typed callers.

/** Character entity data model. */
class Character
{
    public ?bool $deceased = null;
    public ?bool $fictionalCharacter = null;
    public ?string $gender = null;
    public ?int $height = null;
    public ?bool $hologram = null;
    public ?string $name = null;
    public ?string $uid = null;
    public ?int $weight = null;
    public ?int $yearOfBirth = null;
    public ?int $yearOfDeath = null;
}

/** Request payload for Character#list. */
class CharacterListMatch
{
    public ?bool $deceased = null;
    public ?bool $fictionalCharacter = null;
    public ?string $gender = null;
    public ?int $height = null;
    public ?bool $hologram = null;
    public ?string $name = null;
    public ?string $uid = null;
    public ?int $weight = null;
    public ?int $yearOfBirth = null;
    public ?int $yearOfDeath = null;
}

/** Episode entity data model. */
class Episode
{
    public ?int $episodeNumber = null;
    public ?bool $featureLength = null;
    public ?string $productionSerialNumber = null;
    public ?int $seasonNumber = null;
    public ?float $stardateFrom = null;
    public ?float $stardateTo = null;
    public ?string $title = null;
    public ?string $uid = null;
    public ?string $usAirDate = null;
    public ?int $yearFrom = null;
    public ?int $yearTo = null;
}

/** Request payload for Episode#list. */
class EpisodeListMatch
{
    public ?int $episodeNumber = null;
    public ?bool $featureLength = null;
    public ?string $productionSerialNumber = null;
    public ?int $seasonNumber = null;
    public ?float $stardateFrom = null;
    public ?float $stardateTo = null;
    public ?string $title = null;
    public ?string $uid = null;
    public ?string $usAirDate = null;
    public ?int $yearFrom = null;
    public ?int $yearTo = null;
}

/** Spacecraft entity data model. */
class Spacecraft
{
    public ?string $dateStatus = null;
    public ?string $name = null;
    public ?string $operator = null;
    public ?string $owner = null;
    public ?string $registry = null;
    public ?string $spacecraftClass = null;
    public ?string $status = null;
    public ?string $uid = null;
}

/** Request payload for Spacecraft#list. */
class SpacecraftListMatch
{
    public ?string $dateStatus = null;
    public ?string $name = null;
    public ?string $operator = null;
    public ?string $owner = null;
    public ?string $registry = null;
    public ?string $spacecraftClass = null;
    public ?string $status = null;
    public ?string $uid = null;
}

/** Species entity data model. */
class Species
{
    public ?bool $extinctSpecies = null;
    public ?bool $extraGalacticSpecies = null;
    public ?string $homeworld = null;
    public ?bool $humanoidSpecies = null;
    public ?string $name = null;
    public ?string $quadrant = null;
    public ?string $uid = null;
    public ?bool $warpCapableSpecies = null;
}

/** Request payload for Species#list. */
class SpeciesListMatch
{
    public ?bool $extinctSpecies = null;
    public ?bool $extraGalacticSpecies = null;
    public ?string $homeworld = null;
    public ?bool $humanoidSpecies = null;
    public ?string $name = null;
    public ?string $quadrant = null;
    public ?string $uid = null;
    public ?bool $warpCapableSpecies = null;
}

