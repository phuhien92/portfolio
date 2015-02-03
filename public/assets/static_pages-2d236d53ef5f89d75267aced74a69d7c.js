$(document).ready(function() {
	$("#home h1").fitText(0.7, { minFontSize: '20px', maxFontSize: '60px' });
	$("#home h2").fitText(1.2, { minFontSize: '20px', maxFontSize: '40px' });
	$("#mobile-menu").on('click', function(event) {
		event.preventDefault();
		$("body").addClass("menu-mobile-on");
		$("#mobile-menu-screen").show(function(){
			$("#mobile-modal").toggleClass("move-to-left move-to-right");
		});
	});

	$("#mobile-modal>ul> li").on("click", function() {
		$("#mobile-modal").toggleClass("move-to-left move-to-right");
		setTimeout(function() {
			$("body").removeClass("menu-mobile-on");
		},500);
	});

	$('a[href^="#"]').click(function() {
		var target = $(this.hash);
		if (target.length == 0) target = $('a[name="' + this.hash.substr(1) + '"]');
		if (target.length == 0) target = $('html');
		$('html, body').animate({ scrollTop: target.offset().top }, 500);
		return false;
	});
});
