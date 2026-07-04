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
    public ?bool $fictional_character = null;
    public ?string $gender = null;
    public ?int $height = null;
    public ?bool $hologram = null;
    public ?string $name = null;
    public ?string $uid = null;
    public ?int $weight = null;
    public ?int $year_of_birth = null;
    public ?int $year_of_death = null;
}

/** Match filter for Character#list (any subset of Character fields). */
class CharacterListMatch
{
    public ?bool $deceased = null;
    public ?bool $fictional_character = null;
    public ?string $gender = null;
    public ?int $height = null;
    public ?bool $hologram = null;
    public ?string $name = null;
    public ?string $uid = null;
    public ?int $weight = null;
    public ?int $year_of_birth = null;
    public ?int $year_of_death = null;
}

/** Episode entity data model. */
class Episode
{
    public ?int $episode_number = null;
    public ?bool $feature_length = null;
    public ?string $production_serial_number = null;
    public ?int $season_number = null;
    public ?float $stardate_from = null;
    public ?float $stardate_to = null;
    public ?string $title = null;
    public ?string $uid = null;
    public ?string $us_air_date = null;
    public ?int $year_from = null;
    public ?int $year_to = null;
}

/** Match filter for Episode#list (any subset of Episode fields). */
class EpisodeListMatch
{
    public ?int $episode_number = null;
    public ?bool $feature_length = null;
    public ?string $production_serial_number = null;
    public ?int $season_number = null;
    public ?float $stardate_from = null;
    public ?float $stardate_to = null;
    public ?string $title = null;
    public ?string $uid = null;
    public ?string $us_air_date = null;
    public ?int $year_from = null;
    public ?int $year_to = null;
}

/** Spacecraft entity data model. */
class Spacecraft
{
    public ?string $date_status = null;
    public ?string $name = null;
    public ?string $operator = null;
    public ?string $owner = null;
    public ?string $registry = null;
    public ?string $spacecraft_class = null;
    public ?string $status = null;
    public ?string $uid = null;
}

/** Match filter for Spacecraft#list (any subset of Spacecraft fields). */
class SpacecraftListMatch
{
    public ?string $date_status = null;
    public ?string $name = null;
    public ?string $operator = null;
    public ?string $owner = null;
    public ?string $registry = null;
    public ?string $spacecraft_class = null;
    public ?string $status = null;
    public ?string $uid = null;
}

/** Species entity data model. */
class Species
{
    public ?bool $extinct_species = null;
    public ?bool $extra_galactic_species = null;
    public ?string $homeworld = null;
    public ?bool $humanoid_species = null;
    public ?string $name = null;
    public ?string $quadrant = null;
    public ?string $uid = null;
    public ?bool $warp_capable_species = null;
}

/** Match filter for Species#list (any subset of Species fields). */
class SpeciesListMatch
{
    public ?bool $extinct_species = null;
    public ?bool $extra_galactic_species = null;
    public ?string $homeworld = null;
    public ?bool $humanoid_species = null;
    public ?string $name = null;
    public ?string $quadrant = null;
    public ?string $uid = null;
    public ?bool $warp_capable_species = null;
}

