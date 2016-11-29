<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<link rel='stylesheet' href='/html/css/jquery-ui.min.css' />
<link href='/html/css/fullcalendar.css' rel='stylesheet' />
<link href='/html/css/fullcalendar.print.css' rel='stylesheet' media='print' />
<script src='/html/js/moment.min.js'></script>
<script src='/html/js/jquery.min.js'></script>
<script src='/html/js/fullcalendar.min.js'></script>
<script src='/html/js/locale-all.js'></script>
<script>
	$(document).ready(function() {
				var initialLocaleCode = 'ko';//언어 한글로 설정
				
				var jsonData;
				$.ajax({
					   type : 'GET',
					   url  : '/schedule/jsontest',
					   dataType : 'JSON',
					   success : function(data) {
							jsonData = data;
						   	//alert(jsonData);
					   },
					   complete : function(data) {
						   	//alert('final함수와 같다');
						   	
						   	$('#calendar').fullCalendar({
								theme: true,
								header : {
									left : 'prev,next today',
									center : 'title',
									right : 'month,agendaWeek,agendaDay,listMonth'
								},
								defaultDate : '2016-09-12',//추후 현재시간으로 변경
								locale : initialLocaleCode,
								weekNumbers : true,
								navLinks : true, // can click day/week names to navigate views
								editable : true,
								eventLimit : true, // allow "more" link when too many events
								selectable: true,
								selectHelper: true,
								select: function(start, end) {
									//표안에 선택시 이벤트처리
									window.open("/schedule/add_View", '등록','width=700,height=600');
									//여기에 추가하는 창을 만들고
									//창에서 값을 받고 컨트롤러 호출하고
									//창 닫고 다시 캘린더 호출!
									var eventData;
									$('#calendar').fullCalendar('unselect');
								},
								events : [{id : jsonData[0].schedule_num,
										   title : jsonData[0].schedule_title,
										   start : '2016-11-29',
										   end : '2016-11-29'}],
								//클릭시 이벤트 보여주는 메소드
								eventClick: function(event) {
									// 상세일정 보여주는 popup창 생성
									window.open("/schedule/detail_View?schedule_num="+event.id, event.title, 'width=700,height=600');
									return false;
								}
							});
					   },
					   error : function(xhr, status, error) {
							alert("에러발생");
			           }
				});
				
				/* $('#calendar').fullCalendar({
					theme: true,
					header : {
						left : 'prev,next today',
						center : 'title',
						right : 'month,agendaWeek,agendaDay,listMonth'
					},
					defaultDate : '2016-09-12',//추후 현재시간으로 변경
					locale : initialLocaleCode,
					weekNumbers : true,
					navLinks : true, // can click day/week names to navigate views
					editable : true,
					eventLimit : true, // allow "more" link when too many events
					selectable: true,
					selectHelper: true,
					select: function(start, end) {
						//표안에 선택시 이벤트처리
						window.open("/schedule/add_View", '등록','width=700,height=600');
						//여기에 추가하는 창을 만들고
						//창에서 값을 받고 컨트롤러 호출하고
						//창 닫고 다시 캘린더 호출!
						var eventData;
						$('#calendar').fullCalendar('unselect');
					},
					events : [alert('달력 : ' + jsonData)]
					//스케줄 일정 금지설정
					{
						id : 777,
						start: '2016-09-06',
						end: '2016-09-08',	
						overlap: false,
						rendering: 'background',
						color: '#ff9f89'
					}
					,
					//클릭시 이벤트 보여주는 메소드
					eventClick: function(event) {
						// 상세일정 보여주는 popup창 생성
						window.open("/schedule/detail_View?schedule_num="+event.id, event.title, 'width=700,height=600');
						return false;
					}
				});*/
				
			}); 
	
	function recall() {
		location.replace("/schedule");
	}
</script>
<style>
body {
	margin: 0;
	padding: 0;
	font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
	font-size: 14px;
}

#calendar {
	max-width: 900px;
	margin: 40px auto;
	padding: 0 10px;
}
</style>
</head>
<body>
	<div id='calendar'></div>
</body>
</html>