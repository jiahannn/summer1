var btn = document.getElementById('showModel');
var close = document.getElementsByClassName('close')[0];
var cancel = document.getElementById('cancel');
var modal = document.getElementById('modal');
var sure = document.getElementById('sure');
btn.addEventListener('click', function() {
	modal.style.display = "block";
});
close.addEventListener('click', function() {
	modal.style.display = "none";
});
cancel.addEventListener('click', function() {
	modal.style.display = "none";
});
sure.addEventListener('click', function() {
	modal.style.display = "none";
});