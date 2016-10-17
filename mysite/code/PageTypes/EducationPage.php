<?php
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
        'Year' => 'Varchar(4)'
    );
    
    static $defaults = array (
	    'ShowInMenus' => false,
	    'ShowInSearch' => false
    );
    
    private static $has_one = array(
        'LandingPage' => 'LandingPage'
    );

    private static $has_many = array(
        'Subjects' => 'Subject'
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

        $fields->addFieldToTab('Root.Subjects', GridField::create(
            'Subjects',
            'Subjects done this year',
            $this->Subjects(),
            GridFieldConfig_RecordEditor::create()
        ));
        
        return $fields;
    }
    
}
class EducationPage_Controller extends Page_Controller
{

    /**
     * array (
     *     'action', // anyone can access this action
     *     'action' => true, // same as above
     *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
     *     'action' => '->checkAction' // you can only access this action if >checkAction() returns true
     * );
     * @var array
     */
    private static $allowed_actions = array();

    public function init()
    {
        parent::init();
    }
}


