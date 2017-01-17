//
//= require jquery
//= require alerts
//= require turbolinks
//= require bootstrap-sprockets
//= require jquery_ujs
//= require materialize-sprockets
//= require bootstrap-markdown-bundle
//= require_self

$( document ).ready(function() {
    $('.datepicker').pickadate({
        selectMonths: true,
        selectYears: 15
    });
    $('ul.tabs').tabs();
    $('.collapsible').collapsible({
        accordion : false // A setting that changes the collapsible behavior to expandable instead of the default accordion style
    });

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