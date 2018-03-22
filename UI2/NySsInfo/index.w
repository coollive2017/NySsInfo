<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onunLoad="modelUnLoad" onLoad="modelLoad" style="top:134px;left:258px;height:auto;"/> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" src="$UI/NySsInfo/Login.w" onLoad="windowDialog1Load" onReceived="windowDialog1Received"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog2" style="top:44px;left:8px;" src="$UI/NySsInfo/myInfo.w"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog3" style="top:76px;left:10px;" src="$UI/NySsInfo/userMsPage.w"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog4" style="top:109px;left:10px;" src="$UI/NySsInfo/aboutpage.w"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog5" style="top:145px;left:10px;" src="$UI/NySsInfo/regmsuser.w"></span><div component="$UI/system/components/justep/wing/wing" class="x-wing" xid="wing">
   <div class="x-wing-left" xid="left" style="width:40%;"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1" style="background-color:#F7FFFD;">
   <div class="x-contents-content" xid="content2">
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
     <div class="x-panel-top" xid="top1">
      <div component="$UI/system/components/justep/bar/bar" class="x-bar" xid="bar1" style="background-color:#00b38c;">
       <h4 xid="titleSetting" style="color:#FFFFFF;" class="center-block">系统菜单</h4></div> </div> 
     <div class="x-panel-content" xid="content3"><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="    我的信息" xid="myInfo" style="width:100%;" icon="glyphicon glyphicon-user" onClick="myInfoClick">
   <i xid="i1" class="glyphicon glyphicon-user"></i>
   <span xid="span2">    我的信息</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="    成员管理" xid="userMs" icon="dataControl dataControl-transfer" style="width:100%;" onClick="userMsClick">
   <i xid="i3" class="dataControl dataControl-transfer"></i>
   <span xid="span4">    成员管理</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="用户注册" xid="reguserBtn" style="width:100%;" icon="e-commerce e-commerce-zhuce" onClick="reguserBtnClick">
   <i xid="i5" class="e-commerce e-commerce-zhuce"></i>
   <span xid="span1">用户注册</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="aboutBtn" label="关于" icon="linear linear-questioncircle" style="width:100%;" onClick="aboutBtnClick">
   <i xid="i4" class="linear linear-questioncircle"></i>
   <span xid="span5">关于</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="    注 销" xid="logoutBtn" icon="e-commerce e-commerce-jinru1" style="width:100%;" onClick="logoutBtnClick">
   <i xid="i2" class="e-commerce e-commerce-jinru1"></i>
   <span xid="span3">    注 销</span></a>
  </div>
     <div class="x-panel-bottom" xid="bottom1"></div></div> </div> </div></div>
   <div class="x-wing-content" xid="content1">
    <div class="x-wing-backdrop" xid="div1"></div><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="pages">
   </div></div> 
   </div></div>