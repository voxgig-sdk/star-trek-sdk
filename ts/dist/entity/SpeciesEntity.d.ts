import { StarTrekEntityBase } from '../StarTrekEntityBase';
import type { StarTrekSDK } from '../StarTrekSDK';
import type { Control } from '../types';
import type { Species, SpeciesListMatch } from '../StarTrekTypes';
declare class SpeciesEntity extends StarTrekEntityBase<Species> {
    constructor(client: StarTrekSDK, entopts: any);
    make(this: SpeciesEntity): SpeciesEntity;
    list(this: any, reqmatch?: SpeciesListMatch, ctrl?: Control): Promise<SpeciesEntity[]>;
}
export { SpeciesEntity };
