<?php
/**
 * Created by PhpStorm.
 * User: admin
 * Date: 17/10/16
 * Time: 2:28 PM
 */
class Experience extends DataObject
{
    private static $db = array(
        'JobTitle'  =>  'Text',
        'IsCurrent' => 'Boolean',
        'StartDate' => 'Date',
        'EndDate' => 'Date',
        'Body' => 'HTMLText'
    );

    private static $summary_fields = array(
        'JobTitle'  =>  'JobTitle',
        'StartDate' => 'Start',
        'EndDate' => 'End',
        'Body' => 'Body'
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', DateField::create('EndDate', 'End Date')
            ->setConfig('dateformat', 'dd-MM-yyyy')
            ->setConfig('showcalendar', true), 'Body');

        $fields->addFieldToTab('Root.Main', DateField::create('StartDate', 'Start Date')
            ->setConfig('dateformat', 'dd-MM-yyyy')
            ->setConfig('showcalendar', true), 'EndDate');

        return $fields; // TODO: Change the autogenerated stub
    }

    public function DateRange()
    {
        $startDate = strtotime($this->StartDate);
        $formatStart = date("M Y", $startDate);

        if ($this->IsCurrent == true){
            $formatEnd = 'Present';
        } else {
            $endDate = strtotime($this->EndDate);
            $formatEnd = date("M Y", $endDate);
        }
        $fullDate = $formatStart . ' - ' . $formatEnd;
        return $fullDate;
    }
}
