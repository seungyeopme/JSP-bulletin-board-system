<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<% 
	//변수설정
	int result = 0;
	
	//웹 페이지 요청이 POST인 경우에만 수행
	//즉 폼(Form)을 통해 전달된 것만 수행
	//초기 로딩 시 오류 방지
	if(request.getMethod().equals("POST")) {
		//연산자를 가져옴
		String op = request.getParameter("operator");
		
		//문자열 형태로 전달된 인자들을 int로 변환함
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		
		//각 연산자별 처리
		if(op.equals("+")) {
			result = num1 + num2;
		}
		else if(op.equals("-")) {
			result = num1 - num2;
		}
		else if(op.equals("*")) {
			result = num1 * num2;
		}
		else if(op.equals("/")) {
			result = num1 / num2;
		}
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>계산기</title>
</head>
<body>
<h3>계산기</h3>
<hr>
<form name=form1 method=post>
<input type="text" name="num1" width=200 size="5">
<select name="operator">
	<option selected>+</option>
	<option>-</option>
	<option>*</option>
	<option>/</option>
	</select>

<input type="text" name="num2" width=200 size="5">
<input type="submit" value="계산" name="B1">
<input type="reset" value="다시 입력" name="B2">
</form>
<hr>

계산결과 : <%=result %>
</body>
</html>