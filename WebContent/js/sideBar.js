        
$(document).ready(function() {
	//버튼 추가
    var search_name = ["search_hobby", "search_location", "search_pay"];
    var search_hobby = ["운동", "피아노", "미술", "사진", "기타"];
    var search_location = ["서울", "대구", "대전", "부산", "강원", "제주", "기타"];
    var search_pay = ["무료", "10만원대", "20만원대", "30만원대", "기타"];

    for (var i = 0; i < search_hobby.length; i++) {
        $(".side-panel.panel-body:eq(0)").append("<button class='btn btn-default'>" + search_hobby[i] + "</button>");
    }

    for (var i = 0; i < search_location.length; i++) {
        $(".side-panel.panel-body:eq(1)").append("<button class='btn btn-default'>" + search_location[i] + "</button>");
    }

    for (var i = 0; i < search_pay.length; i++) {
        $(".side-panel.panel-body:eq(2)").append("<button class='btn btn-default'>" + search_pay[i] + "</button>");
    }
    
  //content-panel 클릭하면 움직이는것
    $(window).scroll(function() {
        var window_top = $(window).scrollTop();
        var standard = $("h1 a").offset().top+50;
        $("#sidebar").animate({
            top: window_top + standard + 'px'
        }, 1);

    })

    $(".content-panel .panel-heading").each(function(idx, item) {
        $(item).click(function() {
            $(".content-panel .panel-body:eq(" + idx + ")").slideToggle(300);
        })
    })
})
