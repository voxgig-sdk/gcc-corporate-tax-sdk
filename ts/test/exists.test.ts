
import { test, describe } from 'node:test'
import { equal } from 'node:assert'


import { GccCorporateTaxSDK } from '..'


describe('exists', async () => {

  test('test-mode', () => {
    const testsdk = GccCorporateTaxSDK.test()
    equal(testsdk instanceof GccCorporateTaxSDK, true,
      'GccCorporateTaxSDK.test() must return a client synchronously')
  })

})
