<?php

require 'vendor/autoload.php';

use Aws\Sns\SnsClient;

$client = SnsClient::factory(array(
    'profile' => '<profile in your aws credentials file>',
    'region'  => '<region name>'
));
