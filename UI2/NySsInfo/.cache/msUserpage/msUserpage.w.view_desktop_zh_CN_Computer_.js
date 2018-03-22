window.__justep.__ResourceEngine.loadCss([{url: '/v_b47d343d4d8c4d998639eb8f0d8648dal_zh_CNs_desktopd_pc/system/components/pc.addon.min.css', include: '$model/system/components/justep/pagerBar/css/pagerBar,$model/system/components/justep/widgets/css/widgets,$model/system/components/justep/absoluteLayout/css/absoluteLayout,$model/system/components/justep/pagerLimitSelect/css/pagerLimitSelect,$model/system/components/justep/cellLayout/css/cellLayout,$model/system/components/justep/smartContainer/css/smartContainer'},{url: '/v_8820bc7e7a464ad7b4f92378c98ad62dl_zh_CNs_desktopd_pc/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/v_dae11a3dc7f14e5bb9eab7a009738762l_zh_CNs_desktopd_pc/system/components/comp.min.css', include: '$model/system/components/justep/lib/css2/dataControl,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/lib/css3/round,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/contents/css/contents,$model/system/components/justep/common/css/forms,$model/system/components/justep/locker/css/locker,$model/system/components/justep/menu/css/menu,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/bar/css/bar,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/lib/css4/e-commerce,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/panel/css/panel,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/lib/css1/linear,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_5ab4ed2d01d7433d979c63ebfc4d565al_zh_CNs_desktopd_pc/system/components/comp2.min.js','/v_f7f4251984ee42e19e4cd4f77ff4dc9fl_zh_CNs_desktopd_pc/system/core.min.js','/v_b00e890efaa342538d1fd85c9726f762l_zh_CNs_desktopd_pc/system/common.min.js','/v_9bffa6ab358647cb87e10c03a4f40faal_zh_CNs_desktopd_pc/system/components/comp.min.js','/v_59af09f9ced04417b0ea4dd45709ceael_zh_CNs_desktopd_pc/system/components/pc.addon.min.js']);define(function(require){
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
