<?php

use SilverStripe\ORM\DataObject;

/**
 * Created by PhpStorm.
 * User: daviddunlop
 * Date: 8/02/18
 * Time: 6:34 PM
 */
class Certificate extends DataObject {

    public function canView($member = null)
    {
        return true;
    }

    private static $db = array(
        'Title'  =>  'Text',
        'BadgeURL' => 'Text',
        'BadgeMarkup' => 'HTMLText'
    );

    private static $has_one = [
        'CertProvider' => CertificateProvider::class
    ];

    private static $summary_fields = array(
        'Title'  =>  'Title',
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        return $fields;
    }

}