<?php

use SilverStripe\View\ArrayData;


class LandingPageController extends PageController
{

    /**
     * array (
     *     'action', // anyone can access this action
     *     'action' => true, // same as above
     *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
     *     'action' => '->checkAction' // you can only access this action if >checkAction() returns true
     * );
     * @var array
     */
    private static $allowed_actions = array(
        'getPortFolioData'
    );

    public function init()
    {
        parent::init();
    }

    /*
    * All Portfolio Objects
    */
    public function getPortfolioItems()
    {
        return Portfolio::get();
    }

    public function AssociatedEducationPages()
    {
        $pages = EducationPage::get();
        return $pages;
    }

    /*
     * All Skill Objects
     */
    public function getSkills()
    {
        return Skill::get();
    }

    /**
     * All Experience Objects
     */
    public function getExperiences()
    {
        return Experience::get();
    }

    /**
     * Get Top Rated Referees
     */
    public function getTopReferees()
    {
        $ref = Reference::get()->sort('Rating', 'DESC')->limit(3);
        return $ref;
    }

    /**
     * Get All Achievements
     */
    public function getAchievements()
    {
        return Achievement::get();
    }

    /**
     * Get All Achievement Types
     */
    public function getAchievementTypes()
    {
        return AchievementType::get();
    }

    /**
     * Get All Certificates
     */
    public function getCertificates()
    {
        return Certificate::get();
    }


    /**
     * Get PortfolioData
     */
    public function getPortFolioData(){
        if (isset($_POST['portfolioID'])) {
            $portfolioID = ($_POST['portfolioID']);
            //$portfolio = Portfolio::get_by_id('ID',$portfolioID);
            $portfolio = Portfolio::get()->byID($portfolioID);
            //$images = PortfolioImages;
            $bannerImage = $portfolio->BannerImage();
            $relatedImages = $portfolio->PortfolioImages();

            $data = new ArrayData(array(
                'PortfolioTitle'  =>  $portfolio->SiteURL,
                'Stuff' =>  $portfolio->About,
                'BannerImage'   =>  $bannerImage,
                'AssocImages'  =>  $relatedImages
            ));
            //echo $data->renderWith('PortFolioAjaxData');
            return $this->owner->customise($data)->renderWith('Includes/landing/portfolio/PortFolioAjaxData');
        } else {
            return 'No Portfolio data for the specified ID G';
        }
    }

}


