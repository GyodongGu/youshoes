<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<!doctype html>
<html lang="en" class="blue-theme">
<head>
<link href='${pageContext.request.contextPath}/view/callendar/packages/core/main.css' rel='stylesheet' />
<link href='${pageContext.request.contextPath}/view/callendar/packages/daygrid/main.css' rel='stylesheet' />
<script src='${pageContext.request.contextPath}/view/callendar/packages/core/main.js'></script>
<script src='${pageContext.request.contextPath}/view/callendar/packages/daygrid/main.js'></script>
<script src='${pageContext.request.contextPath}/view/callendar/packages/interaction/main.js'></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script>
function Tdate(start) {
	var year = start.getFullYear();
	var month = (1 + start.getMonth());
	month = month >= 10 ? month : '0' + month;
	var day = start.getDate();
	day = day >= 10 ? day : '0' + day;
	return year + '-' + month + '-' + day;
}
var daytime;
var calendar ;
	document.addEventListener('DOMContentLoaded', function() {
		
		var calendarEl = document.getElementById('calendar');
		var dialog;
		
		dialog = $('#modal-form').dialog({
			autoOpen: false,
			height: 400,
			width:300,
			modal: true,
			buttons : { 
				 '예약시간 선택': addreserv,  
				Cancel: function () { 
					dialog.dialog("close");
				}
			}
		}) 
		calendar = new FullCalendar.Calendar(calendarEl, {
			plugins : ['interaction', 'dayGrid' ], 
			views: { dayGridMonth: { titleFormat: {year: 'numeric', month: 'short' } } }, 
			eventSources: ['${pageContext.request.contextPath}/ajax/GetReserv.do'],
			eventColor: '#964B00',
			eventTextColor: 'white',
			displayEventTime : true,
			eventLimit: true,
			eventTimeFormat: { hour: 'numeric', minute: '2-digit' }, 
			defaultView : 'dayGridMonth',  
			footer : {
				left : '',
				center : '',
				right : 'custom1'
			},
			customButtons: {
				custom1 :{
					text :'주문 계속 진행',
					click: function() {
						location.href="";
					}
				}
			},
			eventClick : function (info) {
				var del = confirm("예약 일정을 삭제 할까요 ? ")
				var Hnum = {"date" : Tdate(info.event.start)};
				console.log(info);
				if(del == true) {
					$.ajax({
						url: "${pageContext.request.contextPath}/ajax/DelReserv.do",
						type:'GET',
						data:Hnum,
						success: function (result) {
								alert(Tdate(info.event.start) + ', 예약 일정이 삭제 되었습니다.');	
								info.event.remove()
							} 
					}) 
				} 
 
			},
		dateClick : function (info) {
			 dialog.dialog( "open" );
			 	$('#daytime').html(info.dateStr);
			 	daytime = info.dateStr;
		}
		}) 
		
		function addreserv() {  
				var today = new Date();
				var reservtime = daytime + " " + $('input[name="radio"]:checked').val();
				var rdate = {'res_date' : reservtime};
					$.ajax({
					url: "${pageContext.request.contextPath}/ajax/SetReserv.do",
					type: 'GET',  
					data: rdate,
					success : function (result) {
						var retime = new Date(result);
						calendar.addEvent({
							title : '예약',	
							start :retime
						});
						alert("'"+result +"''"+" 날짜로 예약 진행 되었습니다.");
					} 
				})
				dialog.dialog("close");
			}
		calendar.render(); 
	});
</script>
</head>
<body>
<br>  
<br>
<br>
	<div id="calendar" align="center"><br></div> 
	<div id="modal-form">
	<!-- The Modal -->
  	<form>
  	<h3><div id="daytime"></div> </h3>
  	<br>
  <fieldset> 
    <legend>시간 선택</legend>
    <input type="radio" name="radio" id="radio" value="09:00">09:00-10:00<br><br>
    <input type="radio" name="radio" id="radio" value="10:00">10:00-11:00<br><br>
    <input type="radio" name="radio" id="radio" value="11:00">11:00-12:00<br><br>
    <input type="radio" name="radio" id="radio" value="13:00">14:00-15:00<br><br>
    <input type="radio" name="radio" id="radio" value="13:00">14:00-15:00<br><br>
    <input type="radio" name="radio" id="radio" value="14:00">15:00-16:00<br><br>
    <input type="radio" name="radio" id="radio" value="15:00">16:00-17:00<br><br>
    <input type="radio" name="radio" id="radio" value="16:00">17:00-18:00<br>
  </fieldset>
  	</form>
  </div>
</body>
</html>
