<%@ page language="C#" autoeventwireup="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
<title><%= "��������" %> - ����ҳ��</title>
<link href="../../Images/Img2/skin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html;charset=gb2312"/>
<meta http-equiv="refresh" content="60"/>
<base target="main"/>
<script type="text/javascript">
    function logout() {
        if (confirm("��ȷ��Ҫ�˳����������̨������"))
            top.location = "login.aspx";


        return false;
    }
   function Setcookie (name, value) {  //��������Ϊname,ֵΪvalue��Cookie  
        var argc = SetCookie.arguments.length;  
        var argv = SetCookie.arguments;      
        var path = (argc > 3) ? argv[3] : null;    
        var domain = (argc > 4) ? argv[4] : null;    
        var secure = (argc > 5) ? argv[5] : false;    
          
          
        document.cookie = name + "=" + value +   
        ((path == null) ? "" : ("; path=" + path)) +    
        ((domain == null) ? "" : ("; domain=" + domain)) +      
        ((secure == true) ? "; secure" : "");  
}  


function Clearcookie()   //���COOKIE  
    {
        document.cookie = "adminlogin=;expires=" + (new Date(0)).toGMTString();


    }  



function showsubmenu(sid) {
	var whichEl = eval("submenu" + sid);
	var menuTitle = eval("menuTitle" + sid);
	if (whichEl.style.display == "none"){
		eval("submenu" + sid + ".style.display=\"\";");
	}else{
		eval("submenu" + sid + ".style.display=\"none\";");
	}
}

</script>
</head>
<body leftmargin="0" topmargin="0">
<table width="100%" height="64" border="0" cellpadding="0" cellspacing="0" class="admin_topbg">
  <tr>
    <td width="61%" height="64" class="logo"></td>
    <td width="39%" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="74%" height="38" class="admin_txt">�û���<b>userName</b> ����,��л��½ʹ�ã�</td>
        <td width="22%" onclick="javascript:Clearcookie();logout();">
		<img src="../../Images/Img2/out.gif" /></td>
        <td width="4%">&nbsp;</td>
      </tr>
      <tr>
        <td height="19" colspan="3">&nbsp;</td>
        </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
