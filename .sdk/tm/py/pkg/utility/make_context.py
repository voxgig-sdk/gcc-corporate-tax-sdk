# GccCorporateTax SDK utility: make_context

from projectname_sdk.core.context import GccCorporateTaxContext


def make_context_util(ctxmap, basectx):
    return GccCorporateTaxContext(ctxmap, basectx)
