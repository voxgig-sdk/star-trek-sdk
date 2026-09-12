import { StarTrekEntityBase } from '../StarTrekEntityBase';
import type { StarTrekSDK } from '../StarTrekSDK';
import type { Control } from '../types';
import type { Episode, EpisodeListMatch } from '../StarTrekTypes';
declare class EpisodeEntity extends StarTrekEntityBase<Episode> {
    constructor(client: StarTrekSDK, entopts: any);
    make(this: EpisodeEntity): EpisodeEntity;
    list(this: any, reqmatch?: EpisodeListMatch, ctrl?: Control): Promise<EpisodeEntity[]>;
}
export { EpisodeEntity };
