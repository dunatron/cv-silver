<?php

use SilverStripe\Admin\ModelAdmin;

class CertificateProviderAdmin extends ModelAdmin
{
    private static $managed_models = [
        CertificateProvider::class,
    ];
    private static $url_segment = 'certificateprovidersadmin';
    private static $menu_title = 'Cert Provider';
}