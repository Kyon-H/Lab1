<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户注册</title>
</head>
<body>
<br>
<form action="" name="form" method="post" onsubmit="return checkform();">
<table align="center" width="700px">

<tr>
	<td colspan="4" align="center" style="font-size:24px;width:80px">用户注册</td>
</tr>

<tr>
	<td align="right"><a style="color:#F00">*</a>用户名：</td>
	<td width="150px"><input name="username" type="text" onblur="checkusername()"/></td>
	<td colspan="2" ><font id="unts">用户名由3-5个字符组成</font></td>
</tr>

<tr>
	<td align="right"><a style="color:#F00">*</a>密码：</td>
	<td width="150px"><input name="password" type="password" onblur="checkpwd()"/></td>
	<td><font id="pwdts">请输入8-12位密码</font></td>
</tr>

<tr>
	<td align="right"><a style="color:#F00">*</a>确认密码：</td>
	<td width="150px"><input name="pwdrepeat" type="password" onblur="checkrepwd()"/></td>
	<td><font id="repwdts">两次密码不一致</font></td>
</tr>

<tr>
	<td align="right"><a style="color:#F00">*</a>Email：</td>
	<td width="150px"><input name="email" type="email" onblur="checkemail()"/></td>
	<td><font id="emailts">格式示例：xxxxxxxx@163.com</font></td>
</tr>

<tr>
	<td align="right"><a style="color:#F00">*</a>手机号码：</td>
	<td width="150px"><input name="phonenumber" type="text" onblur="checkphone()"/></td>
	<td><font id="phonets">格式示例：13803780000</font></td>
</tr>

<tr>
	<td align="right"><a style="color:#F00">*</a>真实姓名：</td>
	<td width="150px"><input name="realname" type="text" onblur="checkrealname()"/></td>
	<td><font id="realnamets">由2-5个中文组成</font></td>
</tr>

<tr>
	<td align="right"><a style="color:#F00">*</a>省份：</td>
	<td><select name="shengfen" onblur="checkshengfen()">
	<option selected>--请选择--</option>
	<option value="1">河南省</option>
	<option value="2">河北省</option>
	<option value="3">湖南省</option>
	</select><font id="shengfents">请选择省份</font></td>
</tr>

<tr>
	<td align="right"><a style="color:#F00">*</a>技术方向：</td>
	<td colspan="4">
	<input type="radio" name="radi" value="Java" checked="checked"/>Java
	<input type="radio" name="radi" value="Net"/>.Net
	<input type="radio" name="radi" value="PHP"/>PHP
	<input type="radio" name="radi" value="wangye"/>网页
	<input type="radio" name="radi" value="IOS"/>IOS
	<input type="radio" name="radi" value="Android"/>Android
	</td>
</tr>
<tr>
	<td colspan="4" align="center">
	<input type="submit" name="submit" value="注册"/>
	<input type="reset" name="reset" value="重置"/>
	</td>
</tr>
</table>
</form>
<script type="text/javascript">
function checkusername(){
	var username=form.username.value;
	//alert(username+":"+username.length);
	if(username.length<3||username.length>5){
		unts.style.color="red";
		return false;
	}else{
		unts.style.color="green";
		return true;
	}
}
function checkpwd(){
	var reg=/[^A-Za-z0-9_]+/;
	var regs=/^[a-zA-Z0-9_\u4e00-\u9fa5]+$/;
	
	var pwd=form.password.value;
	if(pwd.length<7||pwd.length>12||!regs.test(pwd)){
		pwdts.style.color="red";
		return false;
	}else{
		pwdts.style.color="green";
		return true;
	}
}
function checkrepwd(){
	var pwd=form.password.value;
	var repwd=form.pwdrepeat.value;
	if(checkpwd()&&(pwd==repwd)){
		repwdts.style.color="green";
		return true;
	}else{
		repwdts.style.color="red";
		return false;
	}
}
function checkemail(){
	var email=form.email.value;
	var myReg=/^[a-zA-Z0-9#_\^\$\.\*\+\-\?\=\!\:\|\\\/\(\)\[\]\{\}]+@[a-zA-Z0-9]+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
	if(myReg.test(email)){
		emailts.style.color="green";
		return true;
	}else{
		emailts.style.color="red";
		return false;
	}
}
function checkphone(){
	var reg= /0?(13|14|15|18|17)[0-9]{9}/;
	var phonenumber=form.phonenumber.value;
	if(phonenumber.length==11&&reg.test(phonenumber)){
		phonets.style.color="green";
		return true;
	}else{
		phonets.style.color="red";
		return false;
	}
}
function checkrealname(){
	var realname=form.realname.value;
	var reg=/^[\u4e00-\u9fa5]+$/;
	if(realname.length>=2&&realname.length<=5&&reg.test(realname)){
		realnamets.style.color="green";
		return true;
	}else{
		realnamets.style.color="red";
		return false;
	}
}
function checkshengfen(){
	var shengfen=form.shengfen.value;
	if(shengfen<"1"){
		shengfents.style.color="red";
		return false;
	}else{
		shengfents.style.color="green";
		return true;
	}
}
function checkform(){
	if(checkusername()&&checkpwd()&&checkrepwd()&&checkemail()&&checkphone()&&checkrealname()&&checkshengfen())
		return true;
	else
		return false;
}
</script>
</body>
</html>