<%-- 
    Document   : login
    Created on : 19/06/2013, 17:51:18
    Author     : João Paulo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean class="utfpr.ct.dainf.if6ae.exemplos.servlet.CadastroBean" id="info" scope="session"/>
<jsp:setProperty name="info" property="*" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <div align="center">
            <form method="post" action="/login-jsp/login.jsp">
                <table>
                    <tr><td>Usuário</td><td><input type="text" name="usuario" value="${info.usuario}"/></td></tr>
                    <tr><td>Senha</td><td><input type="password" name="senha"/></td></tr>
                    <tr><td colspan="2" align="center"><input type="submit" value="Enviar"/></td></tr>
                </table>
            </form>
        </div>   
    </body>
</html>

<% if (request.getMethod().equals("POST")) {
    String usuario = request.getParameter("usuario");
    String senha = request.getParameter("senha");
    if(usuario.equals("admin") && senha.equals("admin")){
       response.encodeRedirectURL("/login-jsp/logado.jsp");
       response.sendRedirect("/login-jsp/logado.jsp");
    } else {
       response.encodeRedirectURL("/login-jsp/login.jsp");
       response.sendRedirect("/login-jsp/login.jsp");
    }
} %>