<?php

use SilverStripe\Forms\GridField\GridFieldPaginator;
use SilverStripe\Forms\GridField\GridFieldDataColumns;
use SilverStripe\ORM\FieldType\DBDate;
use SilverStripe\Admin\ModelAdmin;
/**
 * Created by PhpStorm.
 * User: admin
 * Date: 17/10/16
 * Time: 4:49 PM
 */
class ReferenceAdmin extends ModelAdmin
{
    /**
     * @var array
     */
    private static $managed_models = array('Reference');

    /**
     * @var string
     */
    private static $url_segment = 'References';

    /**
     * @var string
     */
    private static $menu_title = 'References';

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
                'Name'  => DBDate::class,
                'Position' => 'Text',
                'Rating' => 'Rating'
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