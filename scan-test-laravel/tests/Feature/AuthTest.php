<?php
class AuthTest extends TestCase {
    public function test_login() {
        $this->withHeaders(['token' => 'test-token-123'])->get('/api/me')->assertOk();
    }
}
