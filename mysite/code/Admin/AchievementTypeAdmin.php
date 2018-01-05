<?php

use SilverStripe\Forms\GridField\GridFieldPaginator;
use SilverStripe\Forms\GridField\GridFieldDataColumns;
use SilverStripe\Admin\ModelAdmin;

/**
 * Created by PhpStorm.
 * User: admin
 * Date: 21/12/16
 * Time: 12:36 PM
 */
class AchievementTypeAdmin extends ModelAdmin
{
    /**
     * @var array
     */
    private static $managed_models = array('AchievementType');

    /**
     * @var string
     */
    private static $url_segment = 'AchievementTypes';

    /**
     * @var string
     */
    private static $menu_title = 'AchievementTypes';

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
                'Title'  => 'Text'
            ));

        return $form;
    }
}