<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.ByteArrayOutputStream" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.util.Base64" %>
<%@ page import="com.google.zxing.BarcodeFormat" %>
<%@ page import="com.google.zxing.MultiFormatWriter" %>
<%@ page import="com.google.zxing.WriterException" %>
<%@ page import="com.google.zxing.client.j2se.MatrixToImageWriter" %>
<%@ page import="com.google.zxing.common.BitMatrix" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>二维码</title>
</head>
<body>
<%
    ByteArrayOutputStream baos = new ByteArrayOutputStream();
    BitMatrix bitMatrix = null;
    try {
        String content = new String("杨鹏傻逼".getBytes("UTF-8"), "ISO-8859-1");
        bitMatrix = new MultiFormatWriter().encode(content, BarcodeFormat.QR_CODE, 400, 400);
        MatrixToImageWriter.writeToStream(bitMatrix, "PNG", baos);
        String encodedImage = Base64.getEncoder().encodeToString(baos.toByteArray());
%>
    <img src="data:image/png;base64, <%= encodedImage %>" alt="二维码">
<%
    } catch (WriterException e) {
        e.printStackTrace();
    }
%>
</body>
</html>