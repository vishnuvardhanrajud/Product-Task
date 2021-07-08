
console.log("testing")


function dosmth() { 
  alert('hello'); 
}

document.addEventListener('turbolinks:load', () => {  

	$(function() {
	    $('.product_table').pagination({
	        items: 100,
	        itemsOnPage: 10,
	        cssStyle: 'light-theme'
	    });
	});
  const clickButton = document.getElementById("button-click");  

  clickButton.addEventListener("click", dosmth); 
});