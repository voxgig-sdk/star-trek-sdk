# ProjectName SDK exists test

import pytest
from startrek_sdk import StarTrekSDK


class TestExists:

    def test_should_create_test_sdk(self):
        testsdk = StarTrekSDK.test(None, None)
        assert testsdk is not None
