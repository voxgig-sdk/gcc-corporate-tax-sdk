import { GccCorporateTaxEntityBase } from '../GccCorporateTaxEntityBase';
import type { GccCorporateTaxSDK } from '../GccCorporateTaxSDK';
import type { Control } from '../types';
import type { Enquiry, EnquiryCreateData } from '../GccCorporateTaxTypes';
declare class EnquiryEntity extends GccCorporateTaxEntityBase<Enquiry> {
    constructor(client: GccCorporateTaxSDK, entopts: any);
    make(this: EnquiryEntity): EnquiryEntity;
    create(this: any, reqdata?: EnquiryCreateData, ctrl?: Control): Promise<EnquiryEntity>;
}
export { EnquiryEntity };
