define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/pagerBar/pagerBar');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/bootstrap/pagination/pagination');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/toolBar/toolBar');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/pagerLimitSelect/pagerLimitSelect');
require('$model/UI2/system/components/justep/select/select');
require('$model/UI2/system/components/justep/grid/grid');
require('$model/UI2/system/components/bootstrap/inputGroup/inputGroup');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/baasData');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/NySsInfo/msUserpage'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cYNNnii';
	this._flag_='8026968932c6c13bcc26a1fe6fd28eb9';
	this.callParent(contextUrl);
 var __BaasData__ = require("$UI/system/components/justep/data/baasData");new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fAcademy":{"define":"fAcademy","label":"所在学院","name":"fAcademy","relation":"fAcademy","type":"String"},"fAut":{"define":"fAut","label":"用户权限","name":"fAut","relation":"fAut","rules":{"integer":true},"type":"Integer"},"fDepartment":{"define":"fDepartment","label":"所属部门","name":"fDepartment","relation":"fDepartment","type":"String"},"fID":{"define":"fID","label":"用户ID","name":"fID","relation":"fID","type":"String"},"fName":{"define":"fName","label":"用户姓名","name":"fName","relation":"fName","type":"String"},"fPassWord":{"define":"fPassWord","label":"密码","name":"fPassWord","relation":"fPassWord","type":"String"},"fStatus":{"define":"fStatus","label":"用户状态","name":"fStatus","relation":"fStatus","rules":{"integer":true},"type":"Integer"},"fUserName":{"define":"fUserName","label":"用户名","name":"fUserName","relation":"fUserName","type":"String"}},"directDelete":false,"events":{},"idColumn":"fID","limit":20,"queryAction":"queryDorm_ms_user","saveAction":"saveDorm_ms_user","tableName":"dorm_ms_user","url":"/nyssinfoss/NySsInfo","xid":"userData"});
}}); 
return __result;});