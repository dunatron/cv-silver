<?php
/**
 * Created by PhpStorm.
 * User: Heath
 * Date: 7/01/17
 * Time: 9:45 PM
 */
class PortfolioAdmin extends ModelAdmin
{
    /**
     * @var array
     */
    private static $managed_models = array('Portfolio');

    /**
     * @var string
     */
    private static $url_segment = 'Portfolios';

    /**
     * @var string
     */
    private static $menu_title = 'Portfolios';

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
        if($gridField instanceof GridField) {
            $gridField->getConfig()->addComponent(new GridFieldSortableRows('SortOrder'));
        }

        $config = $gridField->getConfig();

        $config->getComponentByType('GridFieldPaginator')->setItemsPerPage(20);
        $config->getComponentByType('GridFieldDataColumns')
            ->setDisplayFields(array(
                'SiteURL'  => 'SiteURL',
                'About' => 'About'
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