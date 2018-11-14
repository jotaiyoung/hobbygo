<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/Cross.js"></script>
<script src="js/mailTable.js"></script>
  <input type="button" name="deleteBtn" value="삭제" class="btn btn-default btn-lg">
  
  <div id="mailDetail" style="position: absolute; display: none;"></div>
  <div id="mailReply"style="position: absolute; display: none;"></div>
  
   <table class="mailTable table table-hover">
        <tr>
            <th width="5%"><input type="checkbox" name="mailDelete"></th>
            <th width="15%">보낸사람</th>
            <th width="60%">내용</th>
            <th width="20%">보낸시간</th>
       </tr>
       <tr>
            <td><input type="checkbox" name="mailDelete"></td>
            <td class="mailSender">음악</td>
            <td class="mailBody"><a href="#">안녕하세요. 쪽지받고 연락드립니다. 상담가능한 시간은 월요일, 수요일 저녁8시입니다. 쪽지가 더 길어지면 어떻게 될까요?</a></td>
            <td class="mailTime">2017-07-29 18:29:54</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="mailDelete"></td>
            <td class="mailSender">꽃꽂이</td>
            <td class="mailBody"><a href="#">주말저녁은 반을 개강하지 않아 조금 어려울 것 같습니다ㅠㅠ 화요일과 수요일, 금요일 저녁에만 가능한 점 양해부탁드립니다.</a></td>
            <td class="mailTime">2017-07-19 21:33:25</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="mailDelete"></td>
            <td class="mailSender">미술</td>
            <td class="mailBody"><a href="#">개설한 강좌에 많은 사람들이 신청하여 조기마감 되었습니다. 신청해주셔서 감사합니다!</a></td>
            <td class="mailTime">2017-06-30 10:49:23</td>
        </tr>
    </table>
    <ul class="pagination pagination-lg receiveMail-pagination">
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
    </ul>