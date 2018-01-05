<?php

use SilverStripe\Forms\TextField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

/**
 * Created by PhpStorm.
 * User: admin
 * Date: 17/10/16
 * Time: 1:34 PM
 */
class EducationPage extends Page
{

    private static $singular_name        = "Education Page";
    private static $plural_name          = "Education Pages";
    private static $db = array(
        'Achievement' => 'Text',
        'Year' => 'Varchar(4)',
        'EducationSummary'  =>  'HTMLText'
    );

    private static $defaults = array (
	    'ShowInMenus' => false,
	    'ShowInSearch' => false
    );
    
    private static $has_one = array(
        'LandingPage' => LandingPage::class
    );

    private static $has_many = array(
        'Subjects' => Subject::class
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
        $fields->removeByName('Content');
        $fields->addFieldToTab('Root.Main', TextField::create('Achievement', 'Achievement gained for this'));
        $fields->addFieldToTab('Root.Main', TextField::create('Year', 'Year this was achieved'));
        $fields->addFieldToTab('Root.Main', HtmlEditorField::create('EducationSummary', 'Summary about this year'));


        $fields->addFieldToTab('Root.Subjects', GridField::create(
            'Subjects',
            'Subjects done this year',
            $this->Subjects(),
            GridFieldConfig_RecordEditor::create()
        ));
        
        return $fields;
    }
    
}



