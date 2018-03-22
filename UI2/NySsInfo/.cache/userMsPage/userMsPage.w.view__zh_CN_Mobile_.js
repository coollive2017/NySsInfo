window.__justep.__ResourceEngine.loadCss([{url: '/v_6b65fe91e3d54923873b68f4baf117e6l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/v_a5224cbbd39d44d1b2bf2802e9528535l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/system/components/justep/lib/css2/dataControl,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/lib/css3/round,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/contents/css/contents,$model/system/components/justep/common/css/forms,$model/system/components/justep/locker/css/locker,$model/system/components/justep/menu/css/menu,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/bar/css/bar,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/lib/css4/e-commerce,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/panel/css/panel,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/lib/css1/linear,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_8dd3346978794cc48ac4fbea872d82f9l_zh_CNs_d_m/system/core.min.js','/v_45b129623730494c8c6c5c876742c895l_zh_CNs_d_m/system/common.min.js','/v_36b3eb7a73ca428b9999d930be1e1e9el_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/baasData');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/NySsInfo/userMsPage'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cvEnuQ3';
	this._flag_='90d365482c5008910980b6229d95ab4b';
	this.callParent(contextUrl);
 var __BaasData__ = require("$UI/system/components/justep/data/baasData");new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fAcademy":{"define":"fAcademy","label":"所在学院","name":"fAcademy","relation":"fAcademy","type":"String"},"fAut":{"define":"fAut","label":"用户权限","name":"fAut","relation":"fAut","rules":{"integer":true},"type":"Integer"},"fDepartment":{"define":"fDepartment","label":"所属部门","name":"fDepartment","relation":"fDepartment","type":"String"},"fID":{"define":"fID","label":"用户ID","name":"fID","relation":"fID","type":"String"},"fName":{"define":"fName","label":"用户姓名","name":"fName","relation":"fName","type":"String"},"fPassWord":{"define":"fPassWord","label":"密码","name":"fPassWord","relation":"fPassWord","type":"String"},"fStatus":{"define":"fStatus","label":"用户状态","name":"fStatus","relation":"fStatus","rules":{"integer":true},"type":"Integer"},"fUserName":{"define":"fUserName","label":"用户名","name":"fUserName","relation":"fUserName","type":"String"}},"directDelete":false,"events":{},"idColumn":"fID","limit":20,"queryAction":"queryDorm_ms_user","saveAction":"saveDorm_ms_user","tableName":"dorm_ms_user","url":"/nyssinfoss/NySsInfo","xid":"UserData"});
}}); 
return __result;});
