




document.addEventListener('turbolinks:load', () => {  


  // const clickButton = document.getElementById("button_click");  

  // clickButton.addEventListener("click", dosmth); 
  $('.select_change').off("change").on("change", function(){
  	$('.button_click').trigger("click")
  });
});