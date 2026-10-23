# GccCorporateTax SDK exists test

import pytest
from gcccorporatetax_sdk import GccCorporateTaxSDK


class TestExists:

    def test_should_create_test_sdk(self):
        testsdk = GccCorporateTaxSDK.test(None, None)
        assert testsdk is not None
