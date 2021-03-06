<?php

use SilverStripe\CMS\Controllers\ContentController;
use SilverStripe\View\Requirements;
use SilverStripe\View\ThemeResourceLoader;

class PageController extends ContentController
{
    /**
     * An array of actions that can be accessed via a request. Each array element should be an action name, and the
     * permissions or conditions required to allow the user to access it.
     *
     * <code>
     * [
     *     'action', // anyone can access this action
     *     'action' => true, // same as above
     *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
     *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
     * ];
     * </code>
     *
     * @var array
     */
    private static $allowed_actions = [];

    protected function init() {
        parent::init();
        // Scroll Reveal | https://github.com/jlmakes/scrollreveal

        // You can include any CSS or JS required by your project here.
        // See: http://doc.silverstripe.org/framework/en/reference/requirements

        $themeFolder = $this->ThemeDir();

        // Set the folder to our theme so that relative image paths work

    }

    public function doInit()
    {
        //parent::init();
        parent::doInit();
        Requirements::clear();
        $themeFolder = $this->ThemeDir();
        Requirements::set_write_js_to_body(true);
        Requirements::set_force_js_to_bottom(true);
        Requirements::set_combined_files_folder($themeFolder . '/combinedfiles');

        // Add all our css files to combine into an array
        $CSSFiles = array(
            $themeFolder . '/public/css/app.css'
        );

        // Add all our files to combine into an array
        $JSFiles = array(
            $themeFolder . '/js/jquery-2.2.4.min.js',
            $themeFolder . '/js/bootstrap-3.3.7.min.js',
            $themeFolder . '/js/jquery.bxslider.min.js',
            $themeFolder . '/js/jquery-easing.min.js',
            $themeFolder . '/js/swipe-support.js',
            $themeFolder . '/js/scrollreveal.min.js',
            $themeFolder . '/js/custom.js',
            $themeFolder . '/public/scripts/all.js'
        );
        // Combine css files
        Requirements::combine_files('styles.js', $CSSFiles);

        // Combine js files
        Requirements::combine_files('scripts.js', $JSFiles);

        $this->doIpStuff();
    }
    public function ThemeDir()
    {
        return ThemeResourceLoader::inst()->getPath('cv');
    }

    /**
     * @return mixed
     */
    public function getIP() {
        if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
            //check ip from share internet
            return $_SERVER['HTTP_CLIENT_IP'];
        } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            //to check ip is pass from proxy
            return  $_SERVER['HTTP_X_FORWARDED_FOR'];
        } elseif(isset($_SERVER['REMOTE_ADDR'])) {
            return $_SERVER['REMOTE_ADDR'];
        }
    }

    public function doIpStuff()
    {
        $visitorAddress = $this->getIP();
        $checkName = $this->checkIPAddress($visitorAddress);
        $visitor = Visitor::create();
        $visitor->IPAddress = $visitorAddress;
        $visitor->Host = $this->getHost($visitorAddress);
        if (!empty($checkName))
        {
            $visitor->Name = $checkName;
        }
        $visitor->write();
    }

    public function checkIPAddress($address)
    {
        $visitor = Visitor::get()->filter(array(
            'IPAddress' =>  $address
        ))->first();

        return $visitor->Name;
    }

    public function getHost($ipAddress)
    {
        return  gethostbyaddr($ipAddress);
    }


    public function getPersonSVGIcon()
    {
        $theme = $this->ThemeDir();
        return file_get_contents($theme . '/img/svg/person_icon.svg');
    }
}
