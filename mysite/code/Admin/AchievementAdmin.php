<?php

use SilverStripe\Forms\GridField\GridFieldPaginator;
use SilverStripe\Forms\GridField\GridFieldDataColumns;
use SilverStripe\ORM\FieldType\DBDate;
use SilverStripe\Admin\ModelAdmin;
/**
 * Created by PhpStorm.
 * User: admin
 * Date: 17/10/16
 * Time: 4:21 PM
 */

class AchievementAdmin extends ModelAdmin
{
    /**
     * @var array
     */
    private static $managed_models = array('Achievement');

    /**
     * @var string
     */
    private static $url_segment = 'Achievements';

    /**
     * @var string
     */
    private static $menu_title = 'Achievements';

    /**
     * @param null $id
     * @param null $fields
     * @return \Form
     */
    public function getEditForm($id = null, $fields = null)
    {
        $form = parent::getEditForm($id, $fields);

        $gridField = $form->Fields()
            ->fieldByName($this->sanitiseClassName($this->modelClass));

        $config = $gridField->getConfig();

        $config->getComponentByType(GridFieldPaginator::class)->setItemsPerPage(20);
        $config->getComponentByType(GridFieldDataColumns::class)
            ->setDisplayFields(array(
                'Date'  => DBDate::class,
                'AchievementText' => 'Text'
            ));
//        $config->getComponentByType('GridFieldDataColumns')
//            ->setFieldFormatting(array(
//                'Logo' => function ($val, $obj) {
//                    if (method_exists($obj, 'getThumbnail')) {
//                        return $obj->getThumbnail();
//                    } else {
//                        return $obj;
//                    }
//                },
//            ));

        return $form;
    }
}