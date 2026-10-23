-- GccCorporateTax SDK exists test

local sdk = require("gcc-corporate-tax_sdk")

describe("GccCorporateTaxSDK", function()
  it("should create test SDK", function()
    local testsdk = sdk.test(nil, nil)
    assert.is_not_nil(testsdk)
  end)
end)
