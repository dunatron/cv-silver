<?php
/**
 * Created by PhpStorm.
 * User: admin
 * Date: 17/10/16
 * Time: 4:12 PM
 */
class Skill extends DataObject
{
    public static $default_sort='SortOrder';

    private static $db = array(
        'Title' => 'Text',
        'Color' => 'Varchar(10)',
        'Percentage' => 'Double',
        'SortOrder'=>'Int'
    );

    private static $summary_fields = array(
        'Title' => 'Title',
        'Color' => 'Color',
        'Percentage' => 'Percentage'
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        return $fields; // TODO: Change the autogenerated stub
    }


}
