<?php
declare(strict_types=1);

// GccCorporateTax SDK exists test

require_once __DIR__ . '/../gcccorporatetax_sdk.php';

use PHPUnit\Framework\TestCase;

class ExistsTest extends TestCase
{
    public function test_create_test_sdk(): void
    {
        $testsdk = GccCorporateTaxSDK::test(null, null);
        $this->assertNotNull($testsdk);
    }
}
