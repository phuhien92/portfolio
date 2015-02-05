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

	$("body").on("click","#mobile-modal>ul>li", function(event) {
		event.preventDefault();
		$("#mobile-modal").toggleClass("move-to-right move-to-left");
		$("body.menu-mobile-on").removeClass("menu-mobile-on");

	});

	$('a[href^="#"]').on("click",function(event) {
		event.preventDefault();
		var target = $(this.hash);
		if (target.length == 0) target = $('a[name="' + this.hash.substr(1) + '"]');
		if (target.length == 0) target = $('html');
		$('html, body').animate({ scrollTop: target.offset().top }, 500);
	});

	var fadeInLeft  = "animated fadeInLeft";

	$('#about').waypoint(function(direction) {
		$.each($(".expertise-item"), function() {
			$(this).addClass(fadeInLeft).one("webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend", function(){
				$(this).removeClass(fadeInLeft);
			});
		});
	}, {
		offset: '50%'
	});
});
