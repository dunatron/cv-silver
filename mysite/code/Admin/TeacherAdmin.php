<?php
/**
 * Created by PhpStorm.
 * User: admin
 * Date: 17/10/16
 * Time: 2:21 PM
 */
class TeacherAdmin extends ModelAdmin
{
    /**
     * @var array
     */
    private static $managed_models = array('Teacher');

    /**
     * @var string
     */
    private static $url_segment = 'Teachers';

    /**
     * @var string
     */
    private static $menu_title = 'Teachers';

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
                'Name'  => 'Name',
                'Phone' => 'Phone',
                'Email' => 'Email'
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