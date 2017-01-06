<?php

global $project;
$project = 'mysite';

global $database;
if(defined('SS_DATABASE_NAME') && SS_DATABASE_NAME) {
    $database = SS_DATABASE_NAME;
} elseif(defined('SS_ENVIRONMENT_TYPE') && SS_ENVIRONMENT_TYPE == 'dev') {
    $database = 'cv_silver_db';
} else {
    $database = 'cv_silver_db';
}


require_once('conf/ConfigureFromEnv.php');

// Set the site locale
i18n::set_locale('en_US');