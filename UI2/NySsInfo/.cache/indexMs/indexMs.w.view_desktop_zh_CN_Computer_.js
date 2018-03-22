window.__justep.__ResourceEngine.loadCss([{url: '/v_b6d43b331a55468aae5e0b0a26ca303el_zh_CNs_desktopd_pc/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/v_6dbf1c86d5994babb5f1d67c9993f6b4l_zh_CNs_desktopd_pc/system/components/comp.min.css', include: '$model/system/components/justep/lib/css2/dataControl,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/lib/css3/round,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/contents/css/contents,$model/system/components/justep/common/css/forms,$model/system/components/justep/locker/css/locker,$model/system/components/justep/menu/css/menu,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/bar/css/bar,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/lib/css4/e-commerce,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/panel/css/panel,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/lib/css1/linear,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_1af5f6af919b491ab859a3e65b2f3bc6l_zh_CNs_desktopd_pc/system/core.min.js','/v_58e266fd3c94483a8492c0201f22446bl_zh_CNs_desktopd_pc/system/common.min.js','/v_14abc789bf0c451a899fdd3c66ba3c6bl_zh_CNs_desktopd_pc/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/bar/bar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/baasData');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/NySsInfo/indexMs'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cIV73Uj';
	this._flag_='738fcb3b877196ddda8451994df90fee';
	this.callParent(contextUrl);
 var __BaasData__ = require("$UI/system/components/justep/data/baasData");new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fAcademy":{"define":"fAcademy","label":"所在学院","name":"fAcademy","relation":"fAcademy","type":"String"},"fAut":{"define":"fAut","label":"用户权限","name":"fAut","relation":"fAut","rules":{"integer":true},"type":"Integer"},"fDepartment":{"define":"fDepartment","label":"所属部门","name":"fDepartment","relation":"fDepartment","type":"String"},"fID":{"define":"fID","label":"用户ID","name":"fID","relation":"fID","type":"String"},"fName":{"define":"fName","label":"用户姓名","name":"fName","relation":"fName","type":"String"},"fPassWord":{"define":"fPassWord","label":"密码","name":"fPassWord","relation":"fPassWord","type":"String"},"fStatus":{"define":"fStatus","label":"用户状态","name":"fStatus","relation":"fStatus","rules":{"integer":true},"type":"Integer"},"fUserName":{"define":"fUserName","label":"用户名","name":"fUserName","relation":"fUserName","type":"String"}},"directDelete":false,"events":{},"idColumn":"fID","limit":20,"queryAction":"queryDorm_ms_user","saveAction":"saveDorm_ms_user","tableName":"dorm_ms_user","url":"/nyssinfoss/NySsInfo","xid":"userData"});
}}); 
return __result;});
