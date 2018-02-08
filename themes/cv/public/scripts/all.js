(function(){function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s}return e})()({1:[function(require,module,exports){
/**
 * Created by admin on 3/05/17.
 */
"use strict";

/**
 * Animate Menu functionality
 */

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { 'default': obj }; }

var _partsAnimateMenu = require('./parts/AnimateMenu');

var _partsAnimateMenu2 = _interopRequireDefault(_partsAnimateMenu);

var NavBarHeight = $('.navbar').outerHeight();

var SkillsMenu = new _partsAnimateMenu2['default']('#nav-skills', '#skills', NavBarHeight, 1000),
    ArrowScroll = new _partsAnimateMenu2['default']('#arrowScroll', '#portfolio', NavBarHeight, 1000),
    BrandMenu = new _partsAnimateMenu2['default']('.navbar-brand', '.LandingPage', NavBarHeight, 1000),
    MainLogo = new _partsAnimateMenu2['default']('#logoey', '.LandingPage', NavBarHeight, 1000),
    ExperienceMenu = new _partsAnimateMenu2['default']('#nav-experience', '#experience', NavBarHeight, 1000),
    AchievementMenu = new _partsAnimateMenu2['default']('#nav-achievements', '#achievements', NavBarHeight, 1000),
    ReferencesMenu = new _partsAnimateMenu2['default']('#nav-references', '#references', NavBarHeight, 1000);

// SkillsMenu
$(SkillsMenu.menuItem).on('click', function (e) {
    e.preventDefault();
    SkillsMenu.animate();
});

$(BrandMenu.menuItem).on('click', function (e) {
    e.preventDefault();
    BrandMenu.animate();
});

$(ArrowScroll.menuItem).on('click', function (e) {
    e.preventDefault();
    ArrowScroll.animate();
});

$(MainLogo.menuItem).on('click', function (e) {
    e.preventDefault();
    MainLogo.animate();
});

$(ExperienceMenu.menuItem).on('click', function (e) {
    e.preventDefault();
    ExperienceMenu.animate();
});

$(AchievementMenu.menuItem).on('click', function (e) {
    e.preventDefault();
    AchievementMenu.animate();
});

$(ReferencesMenu.menuItem).on('click', function (e) {
    e.preventDefault();
    ReferencesMenu.animate();
});

},{"./parts/AnimateMenu":2}],2:[function(require,module,exports){
/**
 * Created by admin on 4/05/17.
 */
'use strict';

Object.defineProperty(exports, '__esModule', {
    value: true
});

var _createClass = (function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ('value' in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; })();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError('Cannot call a class as a function'); } }

var AnimateMenu = (function () {
    function AnimateMenu(menuItem, scrollTo, offset, speed) {
        _classCallCheck(this, AnimateMenu);

        this.menuItem = menuItem;
        this.scrollTo = scrollTo;
        this.offset = offset;
        this.speed = speed;
    }

    _createClass(AnimateMenu, [{
        key: 'animate',
        value: function animate() {
            if ($('.navbar-collapse').hasClass('in')) {
                $('#Sit-boy-sit').removeClass('in');
            }
            $('html, body').animate({
                scrollTop: $(this.scrollTo).offset().top - this.offset
            }, this.speed, 'easeInOutExpo');
        }
    }]);

    return AnimateMenu;
})();

exports['default'] = AnimateMenu;
module.exports = exports['default'];

},{}]},{},[1]);
