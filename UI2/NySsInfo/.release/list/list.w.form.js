define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/select/select');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/baasData');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/NySsInfo/list'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cyuYbYf';
	this._flag_='782cb0b9e2df21c4ae62bb9747cf685b';
	this.callParent(contextUrl);
 var __BaasData__ = require("$UI/system/components/justep/data/baasData");new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fCheckCS":{"define":"fCheckCS","label":"床上用品叠放整齐","name":"fCheckCS","relation":"fCheckCS","rules":{"number":true},"type":"Decimal"},"fCheckDate":{"define":"fCheckDate","label":"检查时间","name":"fCheckDate","relation":"fCheckDate","rules":{"datetime":true},"type":"DateTime"},"fCheckGrade":{"define":"fCheckGrade","label":"评分等级","name":"fCheckGrade","relation":"fCheckGrade","type":"String"},"fCheckHC":{"define":"fCheckHC","label":"门窗干净无灰尘","name":"fCheckHC","relation":"fCheckHC","rules":{"number":true},"type":"Decimal"},"fCheckIllegal":{"define":"fCheckIllegal","label":"违纪内容","name":"fCheckIllegal","relation":"fCheckIllegal","type":"String"},"fCheckRemark":{"define":"fCheckRemark","label":"检查小结","name":"fCheckRemark","relation":"fCheckRemark","type":"String"},"fCheckSZ":{"define":"fCheckSZ","label":"书桌物品摆放整齐","name":"fCheckSZ","relation":"fCheckSZ","rules":{"number":true},"type":"Decimal"},"fCheckScore":{"define":"fCheckScore","label":"检查总分数","name":"fCheckScore","relation":"fCheckScore","rules":{"number":true},"type":"Decimal"},"fCheckTF":{"define":"fCheckTF","label":"天花板、风扇干净无灰尘","name":"fCheckTF","relation":"fCheckTF","rules":{"number":true},"type":"Decimal"},"fCheckWM":{"define":"fCheckWM","label":"文明礼仪轮值表公约","name":"fCheckWM","relation":"fCheckWM","rules":{"number":true},"type":"Decimal"},"fCheckWS":{"define":"fCheckWS","label":"室内地面干净无垃圾","name":"fCheckWS","relation":"fCheckWS","rules":{"number":true},"type":"Decimal"},"fCheckWorker":{"define":"fCheckWorker","label":"记录人","name":"fCheckWorker","relation":"fCheckWorker","type":"String"},"fCheckYC":{"define":"fCheckYC","label":"阳台、厕所无污垢、异味","name":"fCheckYC","relation":"fCheckYC","rules":{"number":true},"type":"Decimal"},"fCheckillFlag":{"define":"fCheckillFlag","label":"是否违规","name":"fCheckillFlag","relation":"fCheckillFlag","type":"String"},"fDormID":{"define":"fDormID","label":"宿舍号","name":"fDormID","relation":"fDormID","type":"String"},"fID":{"define":"fID","label":"ID","name":"fID","relation":"fID","type":"String"}},"directDelete":false,"events":{},"idColumn":"fID","limit":20,"orderBys":[{"relation":"fDormID","type":1},{"relation":"fCheckDate","type":0}],"queryAction":"queryDorm_check_list","saveAction":"saveDorm_check_list","tableName":"dorm_check_list","url":"/nyssinfoss/NySsInfo","xid":"checkData"});
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"ID":{"define":"ID","label":"ID","name":"ID","relation":"ID","type":"String"},"Ld":{"define":"Ld","label":"楼栋","name":"Ld","relation":"Ld","type":"String"}},"directDelete":false,"events":{},"idColumn":"ID","initData":"[{\"ID\":\"1\",\"Ld\":\"1#\"},{\"ID\":\"2\",\"Ld\":\"2#\"},{\"ID\":\"3\",\"Ld\":\"3#\"},{\"ID\":\"4\",\"Ld\":\"4#\"},{\"ID\":\"5\",\"Ld\":\"5#\"},{\"ID\":\"6\",\"Ld\":\"6#\"},{\"ID\":\"7\",\"Ld\":\"7#\"},{\"ID\":\"8\",\"Ld\":\"8#\"},{\"ID\":\"9\",\"Ld\":\"9#\"},{\"ID\":\"10\",\"Ld\":\"10#\"},{\"ID\":\"11\",\"Ld\":\"青#\"}]","limit":20,"xid":"Ldondata"});
 var justep = require('$UI/system/lib/justep');if(!this['__justep__']) this['__justep__'] = {};if(!this['__justep__'].selectOptionsAfterRender)	this['__justep__'].selectOptionsAfterRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._addDefaultOption();	};if(!this['__justep__'].selectOptionsBeforeRender)	this['__justep__'].selectOptionsBeforeRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._optionsBeforeRender();	};
}}); 
return __result;});