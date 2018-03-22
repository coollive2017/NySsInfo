<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:-6px;left:332px;"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="UserData" queryAction="queryDorm_ms_user" saveAction="saveDorm_ms_user" url="/nyssinfoss/NySsInfo" tableName="dorm_ms_user" idColumn="fID"><column label="用户ID" name="fID" type="String" xid="default7"></column>
  <column label="用户权限" name="fAut" type="Integer" xid="default8"></column>
  <column label="用户状态" name="fStatus" type="Integer" xid="default9"></column>
  <column label="用户名" name="fUserName" type="String" xid="default10"></column>
  <column label="密码" name="fPassWord" type="String" xid="default11"></column>
  <column label="所属部门" name="fDepartment" type="String" xid="default12"></column>
  <column label="用户姓名" name="fName" type="String" xid="default14"></column>
  <column label="所在学院" name="fAcademy" type="String" xid="default15"></column></div></div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" style="top:13px;left:48px;" src="$UI/NySsInfo/msInfo.w" onReceived="windowDialog1Received"><result concept="UserData" operation="edit" origin="UserData" xid="default1">
   <mapping from="fID" to="fID" locator="true" xid="default2"></mapping>
   <mapping from="fAut" to="fAut" xid="default3"></mapping>
   <mapping from="fUserName" to="fUserName" xid="default4"></mapping>
   <mapping from="fPassWord" to="fPassWord" xid="default5"></mapping>
   <mapping from="fDepartment" to="fDepartment" xid="default6"></mapping>
   <mapping from="fName" to="fName" xid="default13"></mapping></result></span><div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="成员管理"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">成员管理</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content  x-scroll-view " xid="content1" _xid="C7AC588C0BA00001723F173C92FC3B90" style="bottom: 0px;"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1" pullUpLabel="加载更多成员...">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"></i>
    <span class="x-pull-down-label" xid="span1">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="list1" data="UserData">
   <ul class="x-list-template x-min-height list-group" xid="listTemplateUl1" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl1">
    <li xid="li1" class="x-min-height list-group-item" componentname="li(html)" id="undefined_li1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col4"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" style="width:100%;font-size:medium;color:#000080;" bind-ref='ref("fUserName")'></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" style="width:100%;" bind-ref='ref("fDepartment")'></div></div>
  </div>
   <div class="x-col" xid="col5"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div component="$UI/system/components/justep/output/output" class="x-output" xid="output4" style="width:100%;font-size:medium;color:#000000;" bind-ref='ref("fName")'></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div component="$UI/system/components/justep/output/output" class="x-output" xid="output3" style="width:100%;" bind-text=' val("fAut") == "1" ? "工作人员": "管理员"'></div></div>
  </div>
   <div class="x-col x-col-fixed" xid="col6" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-left" label="userDetatil" xid="userDetatil" icon="glyphicon glyphicon-chevron-right" style="width:auto;vertical-align:baseline;line-height:40px;" onClick="userDetatilClick">
   <i xid="i3" class="glyphicon glyphicon-chevron-right"></i>
   <span xid="span4">userDetatil</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-left" label="DelBtn" xid="DelBtn" icon="linear linear-fileadd" style="color:#FF8000;width:auto;vertical-align:baseline;line-height:40px;" onClick="DelBtnClick">
   <i xid="i2" class="linear linear-fileadd"></i>
   <span xid="span3">DelBtn</span></a>
  </div></div></li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span2">加载更多成员...</span></div> </div></div>
  </div> 
</div>