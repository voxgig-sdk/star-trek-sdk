import { StarTrekEntityBase } from '../StarTrekEntityBase';
import type { StarTrekSDK } from '../StarTrekSDK';
import type { Control } from '../types';
import type { Spacecraft, SpacecraftListMatch } from '../StarTrekTypes';
declare class SpacecraftEntity extends StarTrekEntityBase<Spacecraft> {
    constructor(client: StarTrekSDK, entopts: any);
    make(this: SpacecraftEntity): SpacecraftEntity;
    list(this: any, reqmatch?: SpacecraftListMatch, ctrl?: Control): Promise<SpacecraftEntity[]>;
}
export { SpacecraftEntity };
