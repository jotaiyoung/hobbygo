
function fn_action(where) { /* 전송 버튼 클릭 시 일어나는 함수 */
                   	
            var phoneCheck =/^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
            var emailCheck = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
            var accountCheck = /^[0-9]*$/;
            
            var result = null;
            
            var f = document.frm;
            
            if(f.sameId.value=="아이디 입력") {
            	alert("아이디를 입력해주세요!");
            	return;
            }
            
            if (f.password.value==""){
                alert("비밀번호를 입력해주세요.");
                f.password.focus();
                return;
            } 
            if (f.password.value.length < 4 || f.password.value.length>10) {
                alert("비밀번호는 4~10자리 사이로 입력해주세요.");
                return;
            } 
            if (f.password.value != f.password_check.value){
                alert("비밀번호가 일치하지 않습니다.");
                f.password_check.value ="";
                f.password_check.focus();
                return;
            } 
            if (f.username.value=="")	{
                alert("이름을 입력해주세요.");
                f.username.focus();
                return;
            } 
            if (f.phone.value=="") {
                alert ("핸드폰 번호를 입력해주세요.");
                f.phone.focus();
                return;
              } else if(!phoneCheck.test(f.phone.value)) {
            	alert("정확한 핸드폰 번호를 입력해주세요!");
            	return;
              }
            if (f.email.value=="") {
                alert ("이메일 주소를 입력해주세요.");
                f.email.focus();
                return;
            } else if(f.email.value.match(emailCheck) == null) {
            	alert("정확한 이메일 주소를 입력해주세요!");
            	return;
            }
            if (($("input[name=gender]:checked").val())!="M"&&($("input[name=gender]:checked").val())!="F") {
                alert("성별을 선택해주세요.");
                return;
            }
            if(where=="student") {
            	if (f.age.value == 0) {
                    alert("연령대를 선택해주세요.");
                    return;
            	}    
            } else if(where="teacher") {
            	if (f.area.value==0) {
            		alert("강의 가능 지역을 선택해주세요.");
            		return;
            	}
            	if(f.bank.value=="0") {
            		alert("계좌은행을 선택해주세요.");
            		return;
            	} 
            	if(f.accountNum.value == "") {
            		alert("계좌번호를 입력해주세요.");
            		return;
            	} else if(f.accountNum.value.match(accountCheck) == null) {
                	alert("정확한 계좌번호를 입력해주세요!");
                	return;
                }
            	var imgStr = $("#imgUploading").val();
            	var imgName = imgStr.split(".")[1];
            	console.log(imgName);
            	if(imgStr=="") {
            		alert("사진을 등록해주세요.");
            		return;
            	}	

            }

            result = "ok";
            return result;
        }