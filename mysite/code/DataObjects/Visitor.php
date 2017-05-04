<?php
/**
 * Created by PhpStorm.
 * User: Heath
 * Date: 11/03/17
 * Time: 5:13 PM
 */
class Visitor extends DataObject
{
    private static $db = array(
        'Title' =>  'Text',
        'IPAddress' =>  'Varchar(20)',
        'Host'  =>  'Text',
        'Name'  =>  'Text'
    );

    private static $has_one = array();

    private static $many_many = array();

    private static $summary_fields = array(
        'Title'  =>  'Title',
        'IPAddress' => 'IPAddress',
        'Host'  =>  'Host',
        'Name'  =>  'Name'
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $ipAddress = TextField::create('IPAddress', 'IP Address of visitor');

        $fields->addFieldToTab('Root.Main', $ipAddress);

        return $fields; // TODO: Change the autogenerated stub
    }
}