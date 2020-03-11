var btn = document.getElementById('showModel');
var close = document.getElementsByClassName('close')[0];
var modal = document.getElementById('modal');
var sure = document.getElementById('sure');

btn.addEventListener('click', function() {
	modal.style.display = "block";
	
    document.documentElement.style.position = 'fixed';
    document.body.style.overflow = 'hidden'; //隐藏滚动条
});
close.addEventListener('click', function() {
	modal.style.display = "none";
	
	document.documentElement.style.position = 'static';
    document.body.style.overflow = ''; //出现滚动条
});
//cancel.addEventListener('click', function() {
//	modal.style.display = "none";
//	
//	document.documentElement.style.position = 'static';
//  document.body.style.overflow = ''; //出现滚动条
//});
sure.addEventListener('click', function() {
	modal.style.display = "none";
	
	document.documentElement.style.position = 'static';
    document.body.style.overflow = ''; //出现滚动条
});