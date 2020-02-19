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
<script src="${pageContext.request.contextPath}/view/js/moment.js"></script>
<style>
input[type=radio]:disabled {
background : #dddddd;
}
</style>
<script>


function Tdate1(start) {
	  year = "" + start.getFullYear();
	  month = "" + (start.getMonth() + 1); if (month.length == 1) { month = "0" + month; }
	  day = "" + start.getDate(); if (day.length == 1) { day = "0" + day; }
	  hour = "" + start.getHours(); if (hour.length == 1) { hour = "0" + hour; }
	  minute = "" + start.getMinutes(); if (minute.length == 1) { minute = "0" + minute; }
	  return year + "-" + month + "-" + day + " " + hour + ":" + minute;
}
function Tdate2(start) {
	  year = "" + start.getFullYear();
	  month = "" + (start.getMonth() + 1); if (month.length == 1) { month = "0" + month; }
	  day = "" + start.getDate(); if (day.length == 1) { day = "0" + day; }
	  return year + "-" + month + "-" + day
}
function Tdate3(start) {
	  hour = "" + start.getHours(); if (hour.length == 1) { hour = "0" + hour; }
	  minute = "" + start.getMinutes(); if (minute.length == 1) { minute = "0" + minute; }
	  return hour+":"+minute;
}
var daytime;
var calendar ;
var event;

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
			eventSources: ['${pageContext.request.contextPath}/ajax/GetReserv.do?sm_id=${smid}'],
			eventColor: '#964B00',
			eventTextColor: 'white',
			displayEventTime : true, 
			eventLimit: true,
			height: 'parent',
			contentHeight: 450,
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
						location.href="${pageContext.request.contextPath}/ProductOrder.do?type=C";
					}
				}
			},
			eventClick : function (info) {  
				var del = confirm("예약 일정을 삭제 할까요 ? ");
				var Hnum = {"res_no" : info.event.id};
				if(del == true) {
					$.ajax({
						url: "${pageContext.request.contextPath}/ajax/DelReserv.do",
						type:'GET',
						data:Hnum,
						success: function (result) { 
								alert(Tdate1(info.event.start) + ', 예약 일정이 삭제 되었습니다.');	
								info.event.remove()
							}  
					}) 
				} 
 
			}, 
		dateClick : function (date) {   
			var ttdate = Tdate1(date.date);  
			var today = Tdate1(new Date()); 
			var events = calendar.getEvents();
			$('input').attr('disabled', false);
			for( var i = 0; i < events.length; i++){ 
				if (Tdate2(date.date) == Tdate2(events[i].start)) {
					$('[value="'+Tdate3(events[i].start)+'"]').attr('disabled', 'disabled'); 
					}	
				} 
			var ttoday = today.toString();   
			if(date.dateStr > ttoday) {
				 dialog.dialog( "open" );  
				 	$('#daytime').html(date.dateStr);  
				 	daytime = date.dateStr;
			 } else {
				 alert("예약 할 수 없는 날짜 입니다. 다시 선택해주세요.");
			 }
			 
		}
		}) 
		
		function addreserv() {  
				var today = new Date(); 
				var reservtime = daytime + " " + $('input[name="radio"]:checked').val();
				var rdate = {'res_date' : reservtime};
					$.ajax({ 
					url: "${pageContext.request.contextPath}/ajax/SetReserv.do?sm_id=${smid}",
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
	<div id="calendar" align="center">원하시는 날짜를 클릭하시면 예약시간을 선택 하실 수 있습니다.<br></div> 
	<div id="modal-form">
	<!-- The Modal -->
  	<form>
  	<h3><div id="daytime"></div> </h3>
  	<br>
  <fieldset>  
    <legend>시간 선택</legend><br>
    <input type="radio" name="radio" id="radio1" value="09:00">09:00-10:00<br><br>
    <input type="radio" name="radio" id="radio2" value="10:00">10:00-11:00<br><br>
    <input type="radio" name="radio" id="radio3" value="11:00">11:00-12:00<br><br>
    <input type="radio" name="radio" id="radio4" value="13:00">13:00-14:00<br><br>
    <input type="radio" name="radio" id="radio5" value="14:00">14:00-15:00<br><br>
    <input type="radio" name="radio" id="radio6" value="15:00">15:00-16:00<br><br>
    <input type="radio" name="radio" id="radio7" value="16:00">16:00-17:00<br><br>
    <input type="radio" name="radio" id="radio8" value="17:00">17:00-18:00<br>
  </fieldset>
  	</form>
  </div>
</body>
</html>
