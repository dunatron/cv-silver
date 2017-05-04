/**
 * Created by admin on 3/05/17.
 */
"use strict";

/**
 * Animate Menu functionality
 */
import AnimateMenu from './parts/AnimateMenu';

let NavBarHeight = $('.navbar').outerHeight();

let SkillsMenu = new AnimateMenu('#nav-skills', '#skills', NavBarHeight, 1000),
    ArrowScroll = new AnimateMenu('#arrowScroll', '#portfolio', NavBarHeight, 1000),
    BrandMenu = new AnimateMenu('.navbar-brand', '.LandingPage', NavBarHeight, 1000),
    MainLogo = new AnimateMenu('#logoey', '.LandingPage', NavBarHeight, 1000),
    ExperienceMenu = new AnimateMenu('#nav-experience', '#experience', NavBarHeight, 1000),
    AchievementMenu = new AnimateMenu('#nav-achievements', '#achievements', NavBarHeight, 1000),
    ReferencesMenu = new AnimateMenu('#nav-references', '#references', NavBarHeight, 1000);





// SkillsMenu
$(SkillsMenu.menuItem).on('click', function(e){
    e.preventDefault();
    SkillsMenu.animate();
});

$(BrandMenu.menuItem).on('click', function(e){
    e.preventDefault();
    BrandMenu.animate();
});

$(ArrowScroll.menuItem).on('click', function(e){
    e.preventDefault();
    ArrowScroll.animate();
});

$(MainLogo.menuItem).on('click', function(e){
    e.preventDefault();
    MainLogo.animate();
});

$(ExperienceMenu.menuItem).on('click', function(e){
    e.preventDefault();
    ExperienceMenu.animate();
});

$(AchievementMenu.menuItem).on('click', function(e){
    e.preventDefault();
    AchievementMenu.animate();
});

$(ReferencesMenu.menuItem).on('click', function(e){
    e.preventDefault();
    ReferencesMenu.animate();
});