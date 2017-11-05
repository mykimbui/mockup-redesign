$(document).ready(function(){
  $(".hint").hide();
  $("#hint").click(function(){
    $(".hint").toggle();
  });

  $("#ongoing").click(function(){
    $(".ongoing").toggle();
  });

  $(".completed").hide();
  $("#completed").click(function(){
    $(".completed").toggle();
  });

});
