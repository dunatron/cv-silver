<?php
/**
 * Created by PhpStorm.
 * User: admin
 * Date: 17/10/16
 * Time: 2:30 PM
 */

class ExperienceAdmin extends ModelAdmin
{
    /**
     * @var array
     */
    private static $managed_models = array('Experience');

    /**
     * @var string
     */
    private static $url_segment = 'Experiences';

    /**
     * @var string
     */
    private static $menu_title = 'Experiences';

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

        $config->getComponentByType('GridFieldPaginator')->setItemsPerPage(20);
        $config->getComponentByType('GridFieldDataColumns')
            ->setDisplayFields(array(
                'JobTitle'  =>  'JobTitle',
                'StartDate'  => 'Start',
                'EndDate' => 'End',
                'IsCurrent' => 'IsCurrent',
                'Body' => 'Body'
            ));

        return $form;
    }
}