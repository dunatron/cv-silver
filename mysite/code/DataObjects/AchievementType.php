<?php
/**
 * Created by PhpStorm.
 * User: admin
 * Date: 21/12/16
 * Time: 12:23 PM
 */
class AchievementType extends DataObject
{
    private static $db = array(
        'Title' => 'Text'
    );

    private static $summary_fields = array(
        'Title' => 'Title'
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        return $fields; // TODO: Change the autogenerated stub
    }

    public function AssociatedAchievements()
    {
        $achievements = Achievement::get()->filter(array(
            'Type'  =>  $this->ID
        ));
        return $achievements;
    }
}