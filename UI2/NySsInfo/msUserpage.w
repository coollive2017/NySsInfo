<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:92px;left:321px;height:auto;"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="userData" queryAction="queryDorm_ms_user" saveAction="saveDorm_ms_user" url="/nyssinfoss/NySsInfo" tableName="dorm_ms_user" idColumn="fID"><column label="用户ID" name="fID" type="String" xid="default1"></column>
  <column label="用户权限" name="fAut" type="Integer" xid="default2"></column>
  <column label="用户状态" name="fStatus" type="Integer" xid="default3"></column>
  <column label="用户名" name="fUserName" type="String" xid="default4"></column>
  <column label="密码" name="fPassWord" type="String" xid="default5"></column>
  <column label="所属部门" name="fDepartment" type="String" xid="default6"></column>
  <column label="用户姓名" name="fName" type="String" xid="default7"></column>
  <column label="所在学院" name="fAcademy" type="String" xid="default8"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-top" xid="top2"><div component="$UI/system/components/justep/toolBar/toolBar" class="x-toolbar form-inline x-toolbar-spliter" xid="toolBar3">
   <span xid="span4"><![CDATA[----成员管理----]]></span>
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="编辑" xid="edit" icon="icon-edit" onClick="editClick">
    <i xid="i10" class="icon-edit"></i>
    <span xid="span33">编辑</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="删除" xid="delete" icon="icon-android-remove" onClick="deleteClick">
    <i xid="i12" class="icon-android-remove"></i>
    <span xid="span40">删除</span></a> 
   
   <div class="input-group pull-right" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup4">
    <input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="selectCondition" placeHolder="请输入" dataType="String"></input>
    <div class="input-group-btn" xid="layoutWizard2">
     <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-icon" label="button" xid="select" icon="icon-android-search" onClick="selectClick">
      <i xid="i6" class="icon-android-search"></i>
      <span xid="span25"></span></a> </div> </div> 
   
   </div></div>
   <div class="x-panel-content" xid="content2"><div component="$UI/system/components/justep/grid/grid" hiddenCaptionbar="true" altRows="true" class="x-grid-no-bordered" xid="grid1" data="userData" onRowDblClick="grid1RowDblClick" showRowNumber="true" height="100%" width="100%">
   <columns xid="columns1"><column width="100" name="fUserName" xid="column3"></column><column width="100" name="fName" xid="column6"></column><column width="80" name="fAut" editable="false" xid="column1"></column>
  
  
  
  
  <column width="200" name="fAcademy" xid="column7"></column><column width="200" name="fDepartment" xid="column5"></column><column width="250" name="fPassWord" xid="column4"></column></columns></div></div>
   <div class="x-panel-bottom" xid="bottom2"><div component="$UI/system/components/justep/pagerBar/pagerBar" class="x-pagerbar container-fluid" xid="pagerBar3" data="userData">
   <div class="row" xid="div19">
    <div class="col-sm-3" xid="div20">
     <div class="x-pagerbar-length" xid="div21">
      <label component="$UI/system/components/justep/pagerLimitSelect/pagerLimitSelect" class="x-pagerlimitselect" xid="pagerLimitSelect3" defaultValue="10">
       <span xid="span34">显示</span>
       <select component="$UI/system/components/justep/select/select" class="form-control input-sm" xid="select5">
        <option value="10" xid="default26">10</option>
        <option value="20" xid="default27">20</option>
        <option value="50" xid="default28">50</option>
        <option value="100" xid="default29">100</option>
        <option value="5000" xid="default30">5000</option></select> 
       <span xid="span35">条</span></label> </div> </div> 
    <div class="col-sm-3" xid="div22">
     <div class="x-pagerbar-info" xid="div23">当前显示0条，共0条</div></div> 
    <div class="col-sm-6" xid="div24">
     <div class="x-pagerbar-pagination" xid="div25">
      <ul class="pagination" component="$UI/system/components/bootstrap/pagination/pagination" xid="pagination3">
       <li class="prev" xid="li2">
        <a href="#" xid="a5">
         <span aria-hidden="true" xid="span36">«</span>
         <span class="sr-only" xid="span37">Previous</span></a> </li> 
       <li class="next" xid="li10">
        <a href="#" xid="a6">
         <span aria-hidden="true" xid="span38">»</span>
         <span class="sr-only" xid="span39">Next</span></a> </li> </ul> </div> </div> </div> </div></div></div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" style="top:9px;left:294px;" src="$UI/NySsInfo/msInfo.w" width="40%" height="60%" showTitle="true" title="编辑用户信息" status="normal" onReceived="windowDialog1Received"><result concept="userData" operation="edit" origin="UserData" xid="default9">
   <mapping from="fID" to="fID" locator="true" xid="default10"></mapping>
   <mapping from="fAut" to="fAut" xid="default11"></mapping>
   <mapping from="fStatus" to="fStatus" xid="default12"></mapping>
   <mapping from="fUserName" to="fUserName" xid="default13"></mapping>
   <mapping from="fPassWord" to="fPassWord" xid="default14"></mapping>
   <mapping from="fDepartment" to="fDepartment" xid="default15"></mapping>
   <mapping from="fName" to="fName" xid="default16"></mapping>
   <mapping from="fAcademy" to="fAcademy" xid="default17"></mapping></result></span></div>