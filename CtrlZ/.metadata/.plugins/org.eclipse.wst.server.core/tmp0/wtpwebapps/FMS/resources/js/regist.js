$(function(){
	$("#profile").change(function(){
	    readUploadImage(this);
	});
});

function readUploadImage( inputObject ) {
	/*
	 * 브라우저에서 FileReader가 지원되는지 확인하기 위해 
	 * window.File && window.FileReader 실행 
	 */
	if ( window.File && window.FileReader ) {
		/* 입력된 파일이 1개 이상 있는지 확인 */
		if ( inputObject.files && inputObject.files[0]) {
			/* 이미지 파일인지 체크 */
			if ( !(/profile/i).test(inputObject.files[0].type ) ){
				alert("이미지 파일을 선택해 주세요!");
				return false;
			}
			/* FileReader 를 준비 한다. */
			var reader = new FileReader();
			reader.onload = function (e) {
				/* reader가 다 읽으면 imagePreview에 뿌려기 */
				$('#imagePreview').attr('src', e.target.result);
			}
			/* input file에 있는 파일 하나를 읽어온다. */
			reader.readAsDataURL(inputObject.files[0]);
		}
	} else {
		alert( "미리보기 안되요. 브라우저를 업그레이드하세요.");
	}
}