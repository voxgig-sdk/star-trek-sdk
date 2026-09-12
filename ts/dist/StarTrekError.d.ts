import { Context } from './Context';
declare class StarTrekError extends Error {
    isStarTrekError: boolean;
    sdk: string;
    code: string;
    ctx: Context;
    status: number;
    get notFound(): boolean;
    constructor(code: string, msg: string, ctx: Context);
}
export { StarTrekError };
