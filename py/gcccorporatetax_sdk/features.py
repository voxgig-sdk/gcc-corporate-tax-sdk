# GccCorporateTax SDK feature factory

from gcccorporatetax_sdk.feature.base_feature import GccCorporateTaxBaseFeature
from gcccorporatetax_sdk.feature.ratelimit_feature import GccCorporateTaxRatelimitFeature
from gcccorporatetax_sdk.feature.retry_feature import GccCorporateTaxRetryFeature
from gcccorporatetax_sdk.feature.test_feature import GccCorporateTaxTestFeature
from gcccorporatetax_sdk.feature.timeout_feature import GccCorporateTaxTimeoutFeature


_FEATURES = {
    "base": lambda: GccCorporateTaxBaseFeature(),
    "ratelimit": lambda: GccCorporateTaxRatelimitFeature(),
    "retry": lambda: GccCorporateTaxRetryFeature(),
    "test": lambda: GccCorporateTaxTestFeature(),
    "timeout": lambda: GccCorporateTaxTimeoutFeature(),
}


def _make_feature(name):
    factory = _FEATURES.get(name)
    if factory is not None:
        return factory()
    return _FEATURES["base"]()


# True when this SDK was generated with the named feature class - the
# constructor's tolerance for extend-carried features reads this (an
# active name with no generated class must not become a BaseFeature
# stray when an extend instance carries it).
def _has_feature(name):
    return name in _FEATURES
