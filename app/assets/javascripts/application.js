//= require activestorage
//= require_tree .
//= require jquery
-//= require jquery_ujs
document.addEventListener("turbolinks:load"
, function () {
  $(function() {
    setTimeout(function(){
      $('.flash').slideUp(500);
    },1000);

    $('#postUp').change(function(e){
      //ファイル取得
      var file = e.target.files[0];
      var reader = new FileReader();
      var $preview = $("#preview");

      //画像でない場合は処理終了
      if(file.type.indexOf("image") < 0){
        alert("画像ファイルを指定してください。");
      return false;
      }

      //アップロードした画像を設定
      reader.onload = (function(file){
        return function(e){
          $("label").hide();
          $(".after-select-img").show();
          $preview.append($('<img>').attr({
            src: e.target.result,
            title: file.name
          }));
        };
      })(file);

      reader.readAsDataURL(file);
    });
  });
});
