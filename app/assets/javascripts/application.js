// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require turbolinks
//= require materialize-sprockets
//= require_tree .

$( document ).ready(function() {
    $('.datepicker').pickadate({
        selectMonths: true,
        selectYears: 15
    });
    $('ul.tabs').tabs();
    $('.collapsible').collapsible({
        accordion : false // A setting that changes the collapsible behavior to expandable instead of the default accordion style
    });
    if(localStorage.getItem('popState') != 'shown'){
        $('#disclaimer').openModal();
        localStorage.setItem('popState','shown')
    }
    $('.dropdown-button').dropdown({
            inDuration: 300,
            outDuration: 225,
            constrain_width: true,
            hover: true,
            gutter: 0,
            belowOrigin: false
        }
    );
    $('.button-collapse').sideNav({
            edge: 'right', // Choose the horizontal origin
            closeOnClick: true // Closes side-nav on <a> clicks, useful for Angular/Meteor
        }
    );
    $('.please').sideNav('hide');
    $('.parallax').parallax();
    $('.slider').slider({
        full_width: true,
        indicators: false})
    $('.carousel').carousel({shift: 70});
    autoplay()
    function autoplay() {
        $('.carousel').carousel('next');
        setTimeout(autoplay, 4500);
    }
});