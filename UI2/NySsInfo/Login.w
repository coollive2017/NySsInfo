<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:14px;left:20px;"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="userData" queryAction="queryDorm_ms_user" saveAction="saveDorm_ms_user" url="/nyssinfoss/NySsInfo" tableName="dorm_ms_user" idColumn="fID"><column label="用户ID" name="fID" type="String" xid="default1"></column>
  <column label="用户权限" name="fAut" type="Integer" xid="default2"></column>
  <column label="用户名" name="fUserName" type="String" xid="default3"></column>
  <column label="密码" name="fPassWord" type="String" xid="default4"></column>
  <column label="所属部门" name="fDepartment" type="String" xid="default5"></column>
  <column label="用户姓名" name="fName" type="String" xid="default6"></column></div></div> 

  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col2" style="text-align:center;">
   <img src="$UI/NySsInfo/img/Logo1.png" alt="" xid="image1" align="middle" style="width:70%;"></img></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="text-align:center;vertical-align:middle;">
  <div class="x-col" xid="col8"><p xid="p4" style="font-size:large;text-align:center;color:#003F7D;font-weight:bold;vertical-align:middle;"><![CDATA[宿舍检查管理系统]]></p></div></div><div class="list-group" xid="listGroup2">
   <div xid="div2" class="list-group-item"><div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup1">
   <span class="input-group-addon" xid="span3"><![CDATA[账号]]></span><input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="nameInput" placeHolder="请输入账号"></input></div>
  </div>
  <div xid="div3" class="list-group-item"><div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup2">
   <span class="input-group-addon" xid="span4"><![CDATA[密码]]></span>
  <input component="$UI/system/components/justep/input/password" class="form-control" xid="passwordInput" placeHolder="请输入密码"></input></div></div><div xid="div5" class="list-group-item"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="登录" xid="loginBtn" onClick="loginBtnClick">
   <i xid="i1"></i>
   <span xid="span6">登录</span></a>
  </div><div xid="div6" class="list-group-item" align="center"><p xid="p1" style="color:#0080FF;"><![CDATA[管理员：刘波老师]]></p><p xid="p2"><![CDATA[联系QQ：284238285]]></p></div>
  </div>
  
  </div>
   </div></div>