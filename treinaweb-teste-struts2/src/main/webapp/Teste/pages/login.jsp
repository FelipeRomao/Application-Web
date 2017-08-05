<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body style="background-color: buttonface;">
	<h1 style="font-family: sans-serif; font-weight: bold; font-size: 20px">Bem-vindo
		ao teste do Strutus2 do TreinaWeb! :D</h1>
	<s:form action="Login">
		<s:textfield name="email" label="Nome de usuário" />
		<s:password name="senha" label="Senha" />
		<s:submit value="Enviar" />
	</s:form>
</body>
</html>