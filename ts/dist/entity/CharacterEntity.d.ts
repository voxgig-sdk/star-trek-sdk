import { StarTrekEntityBase } from '../StarTrekEntityBase';
import type { StarTrekSDK } from '../StarTrekSDK';
import type { Control } from '../types';
import type { Character, CharacterListMatch } from '../StarTrekTypes';
declare class CharacterEntity extends StarTrekEntityBase<Character> {
    constructor(client: StarTrekSDK, entopts: any);
    make(this: CharacterEntity): CharacterEntity;
    list(this: any, reqmatch?: CharacterListMatch, ctrl?: Control): Promise<CharacterEntity[]>;
}
export { CharacterEntity };
