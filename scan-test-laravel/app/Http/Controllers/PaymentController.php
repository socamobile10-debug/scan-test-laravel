<?php
class PaymentController extends Controller {
    public function charge() { return config('services.stripe.secret_key') ? 'ok' : 'no key'; }
}
