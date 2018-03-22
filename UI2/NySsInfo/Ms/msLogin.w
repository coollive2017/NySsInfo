<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window portal-login-page" component="$UI/system/components/justep/window/window" sysParam="false">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:171px;left:60px;"
    onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="userData" queryAction="queryDorm_ms_user" url="/nyssinfoss/NySsInfo" tableName="dorm_ms_user" idColumn="fID"><column label="用户ID" name="fID" type="String" xid="default1"></column>
  <column label="用户权限" name="fAut" type="Integer" xid="default2"></column>
  <column label="用户状态" name="fStatus" type="Integer" xid="default3"></column>
  <column label="用户名" name="fUserName" type="String" xid="default4"></column>
  <column label="密码" name="fPassWord" type="String" xid="default5"></column>
  <column label="所属部门" name="fDepartment" type="String" xid="default6"></column>
  <column label="用户姓名" name="fName" type="String" xid="default7"></column>
  <column label="所在学院" name="fAcademy" type="String" xid="default8"></column></div></div>  
  <div class="page-login"> 
    <div class="page-header" style="text-align: center;font-size: 24px; margin-top:0; padding-top: 24px;"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col5"><img src="$UI/NySsInfo/img/Logo.png" alt="" xid="image1" style="height:283px;width:200;" height="200"></img></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col6"><h3 xid="h31"><![CDATA[南宁学院宿管会后台管理系统]]></h3></div>
   </div></div>  
    <div class="page-body" style="padding: 10px;"> 
      <div class="form-container" style="max-width: 420px;margin: 0 auto;padding: 0 15px;"> 
        <form class="form-horizontal ng-pristine ng-valid"> 
          <fieldset> 
            <div class="form-group"> 
              <div class="input-group"> 
                <span class="input-group-addon"> 
                  <span class="glyphicon glyphicon-user"/> 
                </span>  
                <input component="$UI/system/components/justep/input/input" class="form-control"
                  xid="nameInput" placeHolder="用户名 / 学号"/> 
              </div> 
            </div>  
            <div class="form-group"> 
              <div class="input-group"> 
                <span class="input-group-addon"> 
                  <span class="glyphicon glyphicon-lock"/> 
                </span>  
                <input component="$UI/system/components/justep/input/password"
                  class="form-control" xid="passwordInput" placeHolder="密码"/> 
              </div> 
            </div>  
            <div class="form-group"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block"
                label="登录" xid="login" onClick="loginClick"> 
                <i xid="i1"/>  
                <span xid="span1">登录</span> 
              </a> 
            </div>  
            </fieldset> 
        </form> 
      </div> 
    </div> 
  </div> 
</div>
