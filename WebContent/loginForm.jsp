<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
            String publicKeyModulus = (String) request.getAttribute("publicKeyModulus");
            String publicKeyExponent = (String) request.getAttribute("publicKeyExponent");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Form</title>
 
        <!-- script 태그에서 가져오는 자바스크립트 파일의 순서에 주의해야한다! 순서가 틀릴경우 자바스크립트 오류가 발생한다. -->
        <script type="text/javascript" src="./js/rsa/jsbn.js"></script>
        <script type="text/javascript" src="./js/rsa/rsa.js"></script>
        <script type="text/javascript" src="./js/rsa/prng4.js"></script>
        <script type="text/javascript" src="./js/rsa/rng.js"></script>
        <script type="text/javascript" src="./js/login.js"></script>

    </head>
    <body>
        <div>
            <label for="username">사용자ID : <input type="text" id="username" size="16"/></label>
            <label for="password">비밀번호 : <input type="password" id="password" size="16" /></label>
            <input type="hidden" id="rsaPublicKeyModulus" value="<%=publicKeyModulus%>" />
            <input type="hidden" id="rsaPublicKeyExponent" value="<%=publicKeyExponent%>" />
            <a href="<%=request.getContextPath()%>/loginFailure.jsp" onclick="validateEncryptedForm(); return false;">로그인</a>
        </div>
        <form id="securedLoginForm" name="securedLoginForm" action="<%=request.getContextPath()%>/login" method="post" style="display: none;">
            <input type="hidden" name="securedUsername" id="securedUsername" value="" />
            <input type="hidden" name="securedPassword" id="securedPassword" value="" />
        </form>
    </body>
</html>