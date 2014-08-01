// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require_tree .
//= require static_pages

countChars = function(countfrom, displayto) {
    var len;
    len = document.getElementById(countfrom).value.length;
    var lenText;
    if( len == 1 ) {
    	lenText = "1 character typed."
    } else {
    	lenText = "" + len + " characters typed."
    }
    return document.getElementById(displayto).innerHTML = lenText;
};