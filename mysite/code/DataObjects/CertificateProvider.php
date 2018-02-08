<?php

use SilverStripe\ORM\DataObject;

/**
 * Created by PhpStorm.
 * User: daviddunlop
 * Date: 8/02/18
 * Time: 6:34 PM
 */
class CertificateProvider extends DataObject {

    public function canView($member = null)
    {
        return true;
    }

    private static $db = array(
        'Title'  =>  'Text',
        'ProviderURL' => 'Text'
    );

    private static $has_many = [
        'Certificates' => Certificate::class
    ];

    private static $summary_fields = array(
        'Title'  =>  'Title',
        'ProviderURL' => 'ProviderURL'
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        return $fields;
    }

}