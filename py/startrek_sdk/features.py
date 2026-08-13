# StarTrek SDK feature factory

from startrek_sdk.feature.base_feature import StarTrekBaseFeature
from startrek_sdk.feature.test_feature import StarTrekTestFeature


def _make_feature(name):
    features = {
        "base": lambda: StarTrekBaseFeature(),
        "test": lambda: StarTrekTestFeature(),
    }
    factory = features.get(name)
    if factory is not None:
        return factory()
    return features["base"]()
