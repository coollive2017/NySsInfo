<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="UserData" queryAction="queryDorm_ms_user" saveAction="saveDorm_ms_user" url="/nyssinfoss/NySsInfo" tableName="dorm_ms_user" idColumn="fID"><column label="用户ID" name="fID" type="String" xid="default9"></column>
  <column label="用户权限" name="fAut" type="Integer" xid="default10"></column>
  <column label="用户状态" name="fStatus" type="Integer" xid="default11"></column>
  <column label="用户名" name="fUserName" type="String" xid="default12"></column>
  <column label="密码" name="fPassWord" type="String" xid="default13"></column>
  <column label="所属部门" name="fDepartment" type="String" xid="default14"></column>
  <column label="用户姓名" name="fName" type="String" xid="default15"></column>
  <column label="所在学院" name="fAcademy" type="String" xid="default16"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="用户信息"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">用户信息</div>  
          <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button1" icon="linear linear-bubble" onClick="button1Click">
   <i xid="i1" class="linear linear-bubble"></i>
   <span xid="span1"></span></a></div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" title="title" xid="controlGroup1">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label" xid="label1" bind-text='$model.UserData.label("fUserName")'></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" bind-ref='$model.UserData.ref("fUserName")'></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2" bind-enable="0">
   <label class="x-label" xid="label2" bind-text='$model.UserData.label("fPassWord")'></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input2" bind-ref='$model.UserData.ref("fPassWord")' readonly="true"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
   <label class="x-label" xid="label3" bind-text='$model.UserData.label("fName")'></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3" bind-ref='$model.UserData.ref("fName")'></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
   <label class="x-label" xid="label4" bind-text='$model.UserData.label("fAut")'></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input4" bind-text=' ' bind-ref='$model.UserData.ref("fAut")'></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
   <label class="x-label" xid="label5" bind-text='$model.UserData.label("fDepartment")'></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input5" bind-ref='$model.UserData.ref("fDepartment")'></input></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1"><p xid="p1" style="text-align:center;"><![CDATA[权限： 1工作人员，2管理员]]></p></div>
   </div></div>
  </div> 
</div>