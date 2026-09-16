# StarTrek SDK feature factory

from startrek_sdk.feature.base_feature import StarTrekBaseFeature
from startrek_sdk.feature.ratelimit_feature import StarTrekRatelimitFeature
from startrek_sdk.feature.retry_feature import StarTrekRetryFeature
from startrek_sdk.feature.test_feature import StarTrekTestFeature
from startrek_sdk.feature.timeout_feature import StarTrekTimeoutFeature


_FEATURES = {
    "base": lambda: StarTrekBaseFeature(),
    "ratelimit": lambda: StarTrekRatelimitFeature(),
    "retry": lambda: StarTrekRetryFeature(),
    "test": lambda: StarTrekTestFeature(),
    "timeout": lambda: StarTrekTimeoutFeature(),
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
