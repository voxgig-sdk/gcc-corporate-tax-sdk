import { GccCorporateTaxEntityBase } from '../GccCorporateTaxEntityBase';
import type { GccCorporateTaxSDK } from '../GccCorporateTaxSDK';
import type { Control } from '../types';
import type { Mcp, McpLoadMatch, McpCreateData } from '../GccCorporateTaxTypes';
declare class McpEntity extends GccCorporateTaxEntityBase<Mcp> {
    constructor(client: GccCorporateTaxSDK, entopts: any);
    make(this: McpEntity): McpEntity;
    load(this: any, reqmatch?: McpLoadMatch, ctrl?: Control): Promise<McpEntity>;
    create(this: any, reqdata?: McpCreateData, ctrl?: Control): Promise<McpEntity>;
}
export { McpEntity };
