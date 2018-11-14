<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/Cross.js"></script>
<script src="js/mailTable.js"></script>   
    <input type="button" name="deleteBtn" value="삭제" class="btn btn-default btn-lg">
    <div id="mailDetail" style="position: absolute; display: none;"></div>
   <table class="mailTable sendMailTable table table-hover">
        <tr>
            <th width="5%"><input type="checkbox" name="mailDelete"></th>
            <th width="15%">받는사람</th>
            <th width="60%">내용</th>
            <th width="20%">보낸날짜</th>
        </tr>
        <tr>
            <td><input type="checkbox" name="mailDelete"></td>
            <td class="mailSender">음악</td>
            <td class="mailBody"><a href="#">쪽지 받았습니다. 조금 더 생각해보고 나중에 연락드리겠습니다 :D</a></td>
            <td class="mailTime">2017-07-30 11:10:01</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="mailDelete"></td>
            <td class="mailSender">꽃꽂이</td>
            <td class="mailBody"><a href="#">강좌 시간때문에 쪽지 드립니다! 혹시 주말 저녁에도 가능한가요?</a></td>
            <td class="mailTime">2017-07-19 20:18:54</td>
        </tr>
    </table>
    <ul class="pagination pagination-lg receiveMail-pagination">
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
    </ul>