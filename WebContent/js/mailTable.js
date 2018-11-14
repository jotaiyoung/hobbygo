$(document).ready(function() {
//체크박스 전체선택/해제
    $(".mailTable tr>th").find("[name='mailDelete']").click(function() {   
        if($(this).is(":checked")) {
            $(":checkbox").prop("checked", true);
        } else {
            $(":checkbox").prop("checked", false);
        }
    })
    
//삭제 시 confirm창 & 결과
    $("#receiveMailTable").find("input[value='삭제']").click(function(){
        var choice = confirm("선택한 쪽지를 삭제합니다. \n정말 삭제하시겠습니까?").valueOf();
        if(choice) {
            console.log("삭제하는 로직, 쪽지의 고유번호 있어야 삭제가능한지?")
        } else {
            $(":checkbox").prop("checked", false);
            return;
        }
    });  
//쪽지 자세히보기
    $(".mailTable .mailBody").click(function() {
    	console.log("클릭했습니다!")
            $("#mailDetail").load("receiveMailDetail.mail");
            $("#mailDetail").css({"display":"block"});
    })
        
})

