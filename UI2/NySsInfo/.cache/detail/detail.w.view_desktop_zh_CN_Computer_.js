window.__justep.__ResourceEngine.loadCss([{url: '/v_f94189ce8c0a461db429362206e1cd76l_zh_CNs_desktopd_pc/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/v_0491e29c06f54a278a3b6b20bb100767l_zh_CNs_desktopd_pc/system/components/comp.min.css', include: '$model/system/components/justep/lib/css2/dataControl,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/lib/css3/round,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/contents/css/contents,$model/system/components/justep/common/css/forms,$model/system/components/justep/locker/css/locker,$model/system/components/justep/menu/css/menu,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/bar/css/bar,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/lib/css4/e-commerce,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/panel/css/panel,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/lib/css1/linear,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_6df81727e2d141a185e74002fe073273l_zh_CNs_desktopd_pc/system/core.min.js','/v_2e161f2ae7544423a65d3f0e0abfd88cl_zh_CNs_desktopd_pc/system/common.min.js','/v_fa3c1bae097243b7baae7b32b1a9126al_zh_CNs_desktopd_pc/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/controlGroup/controlGroup');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/textarea/textarea');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/select/select');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/baasData');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/NySsInfo/detail'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cmAN3qe';
	this._flag_='a332ebe1463b65fddce8e79721e31632';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"ID":{"define":"ID","label":"ID","name":"ID","relation":"ID","type":"String"},"select":{"define":"select","label":"选择","name":"select","relation":"select","type":"String"}},"directDelete":false,"events":{},"idColumn":"ID","initData":"[{\"ID\":\"1\",\"select\":\"是\"},{\"ID\":\"2\",\"select\":\"否\"}]","limit":20,"xid":"itemdata"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":false,"confirmRefresh":true,"defCols":{"ID":{"define":"ID","label":"ID","name":"ID","relation":"ID","type":"String"},"content":{"define":"content","label":"违纪内容","name":"content","relation":"content","type":"String"}},"directDelete":false,"events":{},"idColumn":"ID","initData":"[{\"ID\":\"1\",\"content\":\"对待检查人员态度恶劣或拒检\"},{\"ID\":\"2\",\"content\":\"宿舍地面脏乱差程度严重\"},{\"ID\":\"3\",\"content\":\"使用违禁电器或明火用具\"}]","limit":20,"xid":"illegalData"});
 var __BaasData__ = require("$UI/system/components/justep/data/baasData");new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fCheckCS":{"define":"fCheckCS","label":"床上用品叠放整齐","name":"fCheckCS","relation":"fCheckCS","rules":{"number":true},"type":"Decimal"},"fCheckDate":{"define":"fCheckDate","label":"检查时间","name":"fCheckDate","relation":"fCheckDate","rules":{"datetime":true},"type":"DateTime"},"fCheckGrade":{"define":"fCheckGrade","label":"评分等级","name":"fCheckGrade","relation":"fCheckGrade","type":"String"},"fCheckHC":{"define":"fCheckHC","label":"门窗干净无灰尘","name":"fCheckHC","relation":"fCheckHC","rules":{"number":true},"type":"Decimal"},"fCheckIllegal":{"define":"fCheckIllegal","label":"违纪内容","name":"fCheckIllegal","relation":"fCheckIllegal","type":"String"},"fCheckRemark":{"define":"fCheckRemark","label":"检查小结","name":"fCheckRemark","relation":"fCheckRemark","type":"String"},"fCheckSZ":{"define":"fCheckSZ","label":"书桌物品摆放整齐","name":"fCheckSZ","relation":"fCheckSZ","rules":{"number":true},"type":"Decimal"},"fCheckScore":{"define":"fCheckScore","label":"检查总分数","name":"fCheckScore","relation":"fCheckScore","rules":{"number":true},"type":"Decimal"},"fCheckTF":{"define":"fCheckTF","label":"天花板、风扇干净无灰尘","name":"fCheckTF","relation":"fCheckTF","rules":{"number":true},"type":"Decimal"},"fCheckWM":{"define":"fCheckWM","label":"文明礼仪轮值表公约","name":"fCheckWM","relation":"fCheckWM","rules":{"number":true},"type":"Decimal"},"fCheckWS":{"define":"fCheckWS","label":"室内地面干净无垃圾","name":"fCheckWS","relation":"fCheckWS","rules":{"number":true},"type":"Decimal"},"fCheckWorker":{"define":"fCheckWorker","label":"记录人","name":"fCheckWorker","relation":"fCheckWorker","type":"String"},"fCheckYC":{"define":"fCheckYC","label":"阳台、厕所无污垢、异味","name":"fCheckYC","relation":"fCheckYC","rules":{"number":true},"type":"Decimal"},"fCheckillFlag":{"define":"fCheckillFlag","label":"是否违规","name":"fCheckillFlag","relation":"fCheckillFlag","type":"String"},"fDormID":{"define":"fDormID","label":"宿舍号","name":"fDormID","relation":"fDormID","type":"String"},"fID":{"define":"fID","label":"ID","name":"fID","relation":"fID","type":"String"}},"directDelete":false,"events":{},"idColumn":"fID","limit":20,"queryAction":"queryDorm_check_list","saveAction":"saveDorm_check_list","tableName":"dorm_check_list","url":"/nyssinfoss/NySsInfo","xid":"checkData"});
 var justep = require('$UI/system/lib/justep');if(!this['__justep__']) this['__justep__'] = {};if(!this['__justep__'].selectOptionsAfterRender)	this['__justep__'].selectOptionsAfterRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._addDefaultOption();	};if(!this['__justep__'].selectOptionsBeforeRender)	this['__justep__'].selectOptionsBeforeRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._optionsBeforeRender();	};
 var justep = require('$UI/system/lib/justep');if(!this['__justep__']) this['__justep__'] = {};if(!this['__justep__'].selectOptionsAfterRender)	this['__justep__'].selectOptionsAfterRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._addDefaultOption();	};if(!this['__justep__'].selectOptionsBeforeRender)	this['__justep__'].selectOptionsBeforeRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._optionsBeforeRender();	};
}}); 
return __result;});
