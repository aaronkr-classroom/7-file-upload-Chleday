<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>File upload</title>
</head>
<body>
	<form 
	method = "POST" 
	enctype="multipart/form-data" 
	action = "0703_commons_processing.jsp"
	>
		<p>이름: <input type="text" name="name"></p>
		<p>제목: <input type="text" name="title"></p>
		<p>파일: <input type="file" name="fileName"></p>
		<p><input type="submit" value="업로드"></p>
	</form>
</body>
</html>