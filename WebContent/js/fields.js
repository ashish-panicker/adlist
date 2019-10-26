/**
 * This js file contains essential scripts needed for the working of certain
 * materialize ui components such as select and floating button etc
 */

// code for the index page
document.addEventListener('DOMContentLoaded', function() {
	var elems = document.querySelectorAll('.fixed-action-btn');
	var instances = M.FloatingActionButton.init(elems, {
		'direction' : 'left',
		'hoverEnabled' : 'false'
	});
});

// Or with jQuery

$(document).ready(function() {
	$('.fixed-action-btn').floatingActionButton();
});

//code for the post page

document.addEventListener('DOMContentLoaded', function () {
	var elems = document.querySelectorAll('select');
	var instances = M.FormSelect.init(elems, {});
});

// Or with jQuery

$(document).ready(function () {
	$('select').formSelect();
	$.validator.addMethod("valueNotEquals", function(value, element, arg){
		  return arg !== value;
		 }, "Value must not equal arg.");
});