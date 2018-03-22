<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:71px;left:5px;" onLoad="modelLoad"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="userData" queryAction="queryDorm_ms_user" saveAction="saveDorm_ms_user" url="/nyssinfoss/NySsInfo" tableName="dorm_ms_user" idColumn="fID"><column label="用户ID" name="fID" type="String" xid="default9"></column>
  <column label="用户权限" name="fAut" type="Integer" xid="default10"></column>
  <column label="用户状态" name="fStatus" type="Integer" xid="default11"></column>
  <column label="用户名" name="fUserName" type="String" xid="default12"></column>
  <column label="密码" name="fPassWord" type="String" xid="default13"></column>
  <column label="所属部门" name="fDepartment" type="String" xid="default14"></column>
  <column label="用户姓名" name="fName" type="String" xid="default15"></column>
  <column label="所在学院" name="fAcademy" type="String" xid="default16"></column></div></div> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" style="top:38px;left:353px;" src="$UI/NySsInfo/Ms/msLogin.w"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1" height="50"><div component="$UI/system/components/justep/bar/bar" class="x-bar" xid="bar1" style="text-align:center;vertical-align:middle;background-color:#F2F2F2;">
  <img src="$UI/NySsInfo/img/Logo.png" alt="" xid="image1" style="width:351px;height:276px;"></img><h3 xid="h31" style="width:413px;height:40;"><![CDATA[南宁学院宿管会后台管理系统]]></h3>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="width:65%;margin-left:20px;">
   <div class="x-col" xid="col5"></div>
   <div class="x-col" xid="col6">
  </div>
  <div class="x-col" xid="col11"></div>
  <div class="x-col" xid="col12"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="宿舍评分" xid="checkList" icon="linear linear-code" onClick="checkListClick">
   <i xid="i2" class="linear linear-code"></i>
   <span xid="span2">宿舍评分</span></a></div>
  <div class="x-col" xid="col1"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="成员管理" xid="msUser" icon="icon-android-social" onClick="msUserClick">
   <i xid="i3" class="icon-android-social"></i>
   <span xid="span3">成员管理</span></a></div>
  <div class="x-col" xid="col2"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="注销" xid="logoutBtn" onClick="logoutBtnClick" icon="linear linear-powerswitch">
   <i xid="i1" class="linear linear-powerswitch"></i>
   <span xid="span1">注销</span></a></div></div>
  </div></div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="pages">
   <div class="x-contents-content" xid="content2"></div></div></div>
   </div></div>