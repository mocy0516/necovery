//= require activestorage
//= require_tree .
//= require jquery
//= require turbolinks
-//= require jquery_ujs
$(function(){

  //page loading window
  $(function() {
    var h = $(window).height();

    $('<body>','<header>').css('display','none');
    $('#loader-bg ,#loader').height(h).css('display','block');
  });

  $(window).on('load',function () {
    $('#loader-bg').delay(900).fadeOut(800);
    $('#loader').delay(600).fadeOut(300);
    $('<body>').css('display', 'block');
  });


  $(function(){
    setTimeout('stopload()',5000);
  });

  function stopload(){
    $('<body>','<header>').css('display','block');
    $('#loader-bg').delay(900).fadeOut(800);
    $('#loader').delay(600).fadeOut(300);
  }

  //.flash[:notice]
  $(function() {
    setTimeout(function(){
      $(".flash").slideUp(500);
    },1000);
  });

  $(document).on('turbolinks:load', function() {
    //post.img input prevew
    $("#postUp").change(function(e){
        var file = e.target.files[0];
        var reader = new FileReader();
        var $preview = $("#preview");
        reader.onload = (function(file){
          return function(e){
            $(".post-img-button").hide();
            $(".after-select-img").show();
            $preview.append($('<img>').attr({
              src: e.target.result,
              title: file.name
            }));
          };
        })(file);
        reader.readAsDataURL(file);
    });

    //responsive header humbager
    $(function() {
        $('.toggle').on("click",function() {
          $(this).toggleClass('active');
          $('.menu').toggleClass('open');
        });
      });
  });

});
