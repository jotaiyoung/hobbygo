$(document).ready(function() {
    if($("table").hasClass("sendMailTable")) {
        $(".panel-body button:eq(0)").remove();
        $(".panel-body button").css({"left":"90%"})
        $(".sender span:eq(0)").text("받는사람 : ");
     }
     $(".panel-body button").click(function() {
        if($(this).text()=="닫기") {
            if($(this).hasClass("receive")){
                $("#mailDETAIL_receive").css({"display":"none"});
            }
            $("#mailDETAIL_reply").css({"display":"none"});
            
        } else if($(this).text() == "답장하기") {
            $("#mailReply").load("replyMailDetail.mail");
            $("#mailReply").css({"display":"block"});
        } else if ($(this).text() == "보내기") {
                confirm("쪽지를 성공적으로 전송했습니다!");
                $("#mailReply").css({"display":"none"});
        }
     })
        
   //드래그&드롭
    $(".panel-heading").mousedown(function() {
        $(this).addClass("moveThis");
        var curX = $(this).offset().left;
        var pushX = event.pageX;
        var aa = pushX - curX;
        //드래그
        var parent = $(this).parent();
        if($(this).addClass("moveThis")) {
            document.onmousemove = function() {
                var x = event.pageX;
                var y = event.pageY;
                console.log("x->"+x);
                console.log("pushX->"+pushX+"curX->"+curX);
                var moveX = x-930;
                var moveY = y-540;
                $(parent).css({"position":"relative"});
                $(parent).css({"left":moveX+"px","top":moveY+"px"})
            }
            $(this).removeClass("moveThis");
        }        
        //드롭
        document.onmouseup = function() {
             document.onmousemove = null;
        }
    })
})