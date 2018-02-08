<?php

use SilverStripe\Admin\ModelAdmin;

class EventAppAdmin extends ModelAdmin
{
    private static $managed_models = [
        Certificate::class,
    ];
    private static $url_segment = 'certificatesadmin';
    private static $menu_title = 'Certificates';
}