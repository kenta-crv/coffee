// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require_tree .

$(function() {
    $('.navToggle').click(function() {
        $(this).toggleClass('active');

        if ($(this).hasClass('active')) {
            $('.globalMenuSp').addClass('active');
        } else {
            $('.globalMenuSp').removeClass('active');
        }
    });
});

// jsを再読み込みさせたいページで使う（/companies/pay）
$(document).on("turbolinks:load", function () {
  let path_name = location.pathname;
  let path_search = location.search;
  if (path_search == '?reload=true') {
    window.location.href = path_name
  }
})


| (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
| new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
| j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
| 'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
| })(window,document,'script','dataLayer','GTM-TVV7GHQ');