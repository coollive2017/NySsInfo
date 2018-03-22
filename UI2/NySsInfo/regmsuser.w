<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:451px;left:22px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="AcademyData" idColumn="fID"><column label="ID" name="fID" type="String" xid="xid1"></column>
  <column label="学院/部门" name="fAcademy" type="String" xid="xid2"></column>
  <data xid="default8">[{&quot;fID&quot;:&quot;1&quot;,&quot;fAcademy&quot;:&quot;请选择学院 / 部门&quot;},{&quot;fID&quot;:&quot;2&quot;,&quot;fAcademy&quot;:&quot;高博软件学院&quot;},{&quot;fID&quot;:&quot;3&quot;,&quot;fAcademy&quot;:&quot;会计与审计学院&quot;},{&quot;fID&quot;:&quot;4&quot;,&quot;fAcademy&quot;:&quot;交通学院&quot;},{&quot;fID&quot;:&quot;5&quot;,&quot;fAcademy&quot;:&quot;土木与建筑工程学院&quot;},{&quot;fID&quot;:&quot;6&quot;,&quot;fAcademy&quot;:&quot;管理学院&quot;},{&quot;fID&quot;:&quot;7&quot;,&quot;fAcademy&quot;:&quot;机电与质量技术工程学院&quot;},{&quot;fID&quot;:&quot;8&quot;,&quot;fAcademy&quot;:&quot;文学与艺术设计学院&quot;},{&quot;fID&quot;:&quot;9&quot;,&quot;fAcademy&quot;:&quot;信息工程学院中兴通讯工程学院&quot;},{&quot;fID&quot;:&quot;10&quot;,&quot;fAcademy&quot;:&quot;南宁学院学工处&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="userData" queryAction="queryDorm_ms_user" saveAction="saveDorm_ms_user" url="/nyssinfoss/NySsInfo" tableName="dorm_ms_user" idColumn="fID"><column label="用户ID" name="fID" type="String" xid="default9"></column>
  <column label="用户权限" name="fAut" type="Integer" xid="default10"></column>
  <column label="用户状态" name="fStatus" type="Integer" xid="default11"></column>
  <column label="用户名" name="fUserName" type="String" xid="default12"></column>
  <column label="密码" name="fPassWord" type="String" xid="default13"></column>
  <column label="所属部门" name="fDepartment" type="String" xid="default14"></column>
  <column label="用户姓名" name="fName" type="String" xid="default15"></column>
  <column label="所在学院" name="fAcademy" type="String" xid="default16"></column></div></div>  
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog1" style="top:9px;left:90px;"></span><div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="用户注册"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="返回" xid="bkbutton" onClick="{operation:'window.close'}" icon="linear linear-volumehigh">
   <i xid="i3" class="linear linear-volumehigh"></i>
   <span xid="span2">返回</span></a></div>  
          <div class="x-titlebar-title">用户注册</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" title="title" xid="controlGroup1">
   <!-- <div class="x-control-group-title" xid="controlGroupTitle1">
    <span xid="span5">title</span></div>  -->
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="username">
   <label class="x-label" xid="label1" bind-text='$model.userData.label("fUserName")'></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="usernameinput" placeHolder="请输入你的学号" maxLength="11" style="font-family:微软雅黑;"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="password">
   <label class="x-label" xid="label2" bind-text='$model.userData.label("fPassWord")'></label>
   <input component="$UI/system/components/justep/input/password" class="form-control x-edit" xid="password1" placeHolder="请输入密码" style="font-family:微软雅黑;"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="agpassword">
   <label class="x-label" xid="label3"><![CDATA[确认密码]]></label>
   <input component="$UI/system/components/justep/input/password" class="form-control x-edit" xid="password2" placeHolder="请再输入一次密码" style="font-family:微软雅黑;"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="department">
   <label class="x-label" xid="label5" bind-text='$model.userData.label("fDepartment")'></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="departmentinput" placeHolder="请输入你所在的部门" style="font-family:微软雅黑;"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="name">
   <label class="x-label" xid="label6" bind-text='$model.userData.label("fName")'></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="nameinput" placeHolder="请输入您的姓名" style="font-family:微软雅黑;"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
   <label class="x-label" xid="Academylabel" bind-text='$model.userData.label("fAcademy")'></label>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="Academyselect" bind-options="AcademyData" bind-ref='$model.AcademyData.ref("fAcademy")' optionsAutoLoad="true" bind-optionsValue="fAcademy"></select></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col5"><p xid="p1" style="color:#FF8000;text-align:center;"><![CDATA[注意：非工作人员不得注册，发现违反者严重处理]]></p></div>
   </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1" style="text-align:right;"><a component="$UI/system/components/justep/button/button" class="btn btn-primary" label="重置" xid="chonzhi" icon="linear linear-redo" onClick='{"operation":"userData.refresh"}'>
   <i xid="i1" class="linear linear-redo"></i>
   <span xid="span1">重置</span></a></div>
   <div class="x-col" xid="col3"><a component="$UI/system/components/justep/button/button" class="btn btn-success" label="注册" xid="regBtn" icon="linear linear-bubble" onClick="regBtnClick">
   <i xid="i2" class="linear linear-bubble"></i>
   <span xid="span7">注册</span></a></div></div>
  </div>
  </div> 
</div>