<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "org.apache.commons.fileupload2.*" %>
<%@ page import = "java.io.*" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	String path = "C:\\upload";
	FileUpload upload = new FileUpload(); // DiskFileUpload Ŭ������ �����ȹ����� (��� FileUpload ���)
	upload.setSizeMax(1000000);
	upload.setSizeThreshold(4096);
	upload.setRepositoryPath(path);
	
	List items = upload.paraseRequest(request);
	Iterator params = items.iterator();
	
	while(params.hasNext()){
		FileItem item = (FileItem) params.next();
		
		if(item.isFormField()){
			String name = item.getFieldName();
			String value = item.getString("utf-8");
			out.println(name + " = " + value + "<br>");
		} else {
			String fileFieldName = item.getFieldName();
			String fileName = item.getName();
			String contentType = item.getContentType();
			// C:\\upload\\filename.jpg 
			fileName = fileName.substring(fileName.lastIndexOf("\\") +1);
			long fileSize = item.getSize();
			
			File file =new File(path + "/" + fileName);
			item.write(file);
			
			out.println("--------------------------------<br>");
			out.println("��û �Ķ���� �̸� : " + fileFieldName + "<br>");
			out.println("���� ���� �̸� : " + fileName + "<br>");
			out.println("���� ������ ���� : " + contentType + "<br>");
			out.println("���� ũ�� : " + fileSize);
		}
	}
%>

</body>
</html>