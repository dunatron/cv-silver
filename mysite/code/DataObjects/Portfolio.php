<?php

use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\ORM\DataObject;
/**
 * Created by PhpStorm.
 * User: Heath
 * Date: 7/01/17
 * Time: 9:39 PM
 */
class Portfolio extends DataObject {
    private static $default_sort='SortOrder';

    public function canView($member = null)
    {
        return true;
    }

    private static $db = array(
        'SiteURL'  =>  'Text',
        'About' => 'HTMLText',
        'SortOrder'=>'Int'
    );

    private static $has_one = array(
        'BannerImage'   =>  Image::class
    );

    private static $many_many = array(
        'PortfolioImages' => Image::class
    );

    private static $summary_fields = array(
        'SiteURL'  =>  'SiteURL',
        'About' => 'About'
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $portfolioImage = UploadField::create('PortfolioImages', 'Site Images for portfolio Piece')
            ->setFolderName('Portfolio');

        $fields->addFieldToTab('Root.PortfolioImages', $portfolioImage);

        return $fields; // TODO: Change the autogenerated stub
    }

}