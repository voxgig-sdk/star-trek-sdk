<?php
declare(strict_types=1);

// StarTrek SDK exists test

require_once __DIR__ . '/../startrek_sdk.php';

use PHPUnit\Framework\TestCase;

class ExistsTest extends TestCase
{
    public function test_create_test_sdk(): void
    {
        $testsdk = StarTrekSDK::test(null, null);
        $this->assertNotNull($testsdk);
    }
}
