export interface Character {
    deceased?: boolean;
    fictionalCharacter?: boolean;
    gender?: string;
    height?: number;
    hologram?: boolean;
    name?: string;
    uid?: string;
    weight?: number;
    yearOfBirth?: number;
    yearOfDeath?: number;
}
export interface CharacterListMatch {
    gender?: string;
    name?: string;
    page_number?: number;
    page_size?: number;
    $action?: string;
    [action: string]: any;
}
export interface Episode {
    episodeNumber?: number;
    featureLength?: boolean;
    productionSerialNumber?: string;
    seasonNumber?: number;
    stardateFrom?: number;
    stardateTo?: number;
    title?: string;
    uid?: string;
    usAirDate?: string;
    yearFrom?: number;
    yearTo?: number;
}
export interface EpisodeListMatch {
    episode_number?: number;
    page_number?: number;
    page_size?: number;
    season_number?: number;
    title?: string;
    $action?: string;
    [action: string]: any;
}
export interface Spacecraft {
    dateStatus?: string;
    name?: string;
    operator?: string;
    owner?: string;
    registry?: string;
    spacecraftClass?: string;
    status?: string;
    uid?: string;
}
export interface SpacecraftListMatch {
    name?: string;
    page_number?: number;
    page_size?: number;
    $action?: string;
    [action: string]: any;
}
export interface Species {
    extinctSpecies?: boolean;
    extraGalacticSpecies?: boolean;
    homeworld?: string;
    humanoidSpecies?: boolean;
    name?: string;
    quadrant?: string;
    uid?: string;
    warpCapableSpecies?: boolean;
}
export interface SpeciesListMatch {
    name?: string;
    page_number?: number;
    page_size?: number;
    $action?: string;
    [action: string]: any;
}
