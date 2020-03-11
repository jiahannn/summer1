/*点击小图切换大图*/
$(document).ready(function() {
	$("#g_pic img").not(":first").hide();

	$("#small_p a").click(function() {
		$("#small_p a").removeClass('on');
		$(this).addClass("on");
		if($("#" + this.rel).is(":hidden")) {
			$("#g_pic img").slideUp();
			$("#" + this.rel).slideDown();
		}
	});
});
