<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:9px;left:41px;height:auto;" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="UserData" queryAction="queryDorm_ms_user" saveAction="saveDorm_ms_user" url="/nyssinfoss/NySsInfo" tableName="dorm_ms_user" idColumn="fID"><column label="用户ID" name="fID" type="String" xid="default1"></column>
  <column label="用户权限" name="fAut" type="Integer" xid="default2"></column>
  <column label="用户状态" name="fStatus" type="Integer" xid="default3"></column>
  <column label="用户名" name="fUserName" type="String" xid="default4"></column>
  <column label="密码" name="fPassWord" type="String" xid="default5"></column>
  <column label="所属部门" name="fDepartment" type="String" xid="default6"></column>
  <column label="用户姓名" name="fName" type="String" xid="default7"></column>
  <column label="所在学院" name="fAcademy" type="String" xid="default8"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="我的信息"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">我的信息</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" title="title" xid="controlGroup1">
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
    <label class="x-label" xid="label6" bind-text='$model.UserData.label("fUserName")'></label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" bind-ref='$model.UserData.ref("fUserName")' readonly="true"></input></div> 
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7">
    <label class="x-label" xid="label7" bind-text='$model.UserData.label("fName")'></label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input2" bind-ref='$model.UserData.ref("fName")' readonly="true"></input></div> 
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit8">
    <label class="x-label" xid="label8" bind-text='$model.UserData.label("fAut")'></label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3" disabled="true"></input></div> 
   <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit9">
    <label class="x-label" xid="label9" bind-text='$model.UserData.label("fDepartment")'></label>
    <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input4" bind-ref='$model.UserData.ref("fDepartment")' readonly="true"></input></div> 
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit13">
   <label class="x-label" xid="label13" bind-text='$model.UserData.label("fAcademy")'></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input13" bind-ref='$model.UserData.ref("fAcademy")' readonly="true"></input></div></div></div>
  </div> 
</div>