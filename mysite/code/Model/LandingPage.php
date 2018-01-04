<?php

use SilverStripe\Assets\Image;
use SilverStripe\Forms\TextField;
use SilverStripe\Control\Email\Email;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

/**
 * Created by PhpStorm.
 * User: admin
 * Date: 17/10/16
 * Time: 1:30 PM
 */
class LandingPage extends Page
{

    private static $singular_name        = "Landing Page";
    private static $plural_name          = "Landing Pages";
    private static $db = array(
        'Phone' => 'Varchar(30)',
        'Email' => 'Varchar(60)',
        'Intro' => 'HTMLText'
    );

    private static $defaults = array (
	    'ShowInMenus' => true,
	    'ShowInSearch' => true
    );
    
    private static $has_one = array(
        'ProfileImage' => Image::class
    );

    private static $has_many = array(
        'EducationPages' => EducationPage::class
    );

    private static $many_many = array();

    private static $belongs_many_many = array();

    private static $many_many_extraFields = array();

    private static $casting = array();

    private static $default_sort = '';

    private static $field_labels = array();

    private static $summary_fields = array();

    private static $required_fields = array(); //enforced through the "validate" method

    private static $searchable_fields = array();

    private static $default_child = "";

    private static $can_be_root = true;

    private static $hide_ancestor = null;
    
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', TextField::create('Phone', 'Phone number'), 'Metadata');
        $fields->addFieldToTab('Root.Main', TextField::create(Email::class, 'Email address'), 'Metadata');
        $fields->addFieldToTab('Root.Main', HTMLEditorField::create('Intro', 'Intro statement'), 'Metadata');
        $fields->addFieldToTab('Root.Main', UploadField::create('ProfileImage', 'Profile Photo'), 'Intro');
        
        $fields->removeByName('Content');
        return $fields; // TODO: Change the autogenerated stub
    }
    
}