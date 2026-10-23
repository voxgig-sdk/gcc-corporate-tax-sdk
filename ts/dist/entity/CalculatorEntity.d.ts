import { GccCorporateTaxEntityBase } from '../GccCorporateTaxEntityBase';
import type { GccCorporateTaxSDK } from '../GccCorporateTaxSDK';
import type { Control } from '../types';
import type { Calculator, CalculatorCreateData } from '../GccCorporateTaxTypes';
declare class CalculatorEntity extends GccCorporateTaxEntityBase<Calculator> {
    constructor(client: GccCorporateTaxSDK, entopts: any);
    make(this: CalculatorEntity): CalculatorEntity;
    create(this: any, reqdata?: CalculatorCreateData, ctrl?: Control): Promise<CalculatorEntity>;
}
export { CalculatorEntity };
