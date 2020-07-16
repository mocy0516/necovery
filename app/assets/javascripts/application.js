//= require activestorage
//= require_tree .
//= require jquery
-//= require jquery_ujs
$(function() {
  setTimeout(function(){
    $('.flash').slideUp(500);
  },1000);

  $('#postUp').change(function(e){
    //ファイルオブジェクトを取得する
    var file = e.target.files[0];
    var reader = new FileReader();
    var $preview = $("#preview");

    //画像でない場合は処理終了
    if(file.type.indexOf("image") < 0){
      alert("画像ファイルを指定してください。");
      return false;
    }

    //アップロードした画像を設定する
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
