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
		<p>�̸�: <input type="text" name="name"></p>
		<p>����: <input type="text" name="title"></p>
		<p>����: <input type="file" name="fileName"></p>
		<p><input type="submit" value="���ε�"></p>
	</form>
</body>
</html>