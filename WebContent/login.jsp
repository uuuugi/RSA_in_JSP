<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="secure.cryptedRsa"%>
<%@page import="java.io.IOException"%>
<%@page import="java.security.InvalidKeyException"%>
<%@page import="java.security.spec.RSAPublicKeySpec"%>
<%@page import="java.security.PrivateKey"%>
<%@page import="java.security.PublicKey"%>
<%@page import="java.security.KeyFactory"%>
<%@page import="java.security.KeyPair"%>
<%@page import="java.security.KeyPairGenerator"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>로그인 결과</title>
    </head>
    <body>
        <ul>
            <li>사용자ID : <%=request.getAttribute("username")%></li>
            <li>비밀번호 : <%=request.getAttribute("password")%></li>
        </ul>
    </body>
</html>