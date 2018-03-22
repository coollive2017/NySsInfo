define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/pagerBar/pagerBar');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/bootstrap/pagination/pagination');
require('$model/UI2/system/components/justep/toolBar/toolBar');
require('$model/UI2/system/components/justep/button/checkbox');
require('$model/UI2/system/components/justep/pagerLimitSelect/pagerLimitSelect');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/select/select');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/baasData');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/NySsInfo/mainActivity'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='ca677Fb';
	this._flag_='6fece41e2bd2a35d1d803d3b7d7ae11d';
	this.callParent(contextUrl);
 var __BaasData__ = require("$UI/system/components/justep/data/baasData");new __BaasData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":false,"defCols":{"calcCheckBox":{"define":"EXPRESS","label":"选择","name":"calcCheckBox","relation":"EXPRESS","type":"Boolean"},"fCheckCS":{"define":"fCheckCS","label":"床上用品叠放整齐","name":"fCheckCS","relation":"fCheckCS","rules":{"number":true},"type":"Decimal"},"fCheckDate":{"define":"fCheckDate","label":"检查时间","name":"fCheckDate","relation":"fCheckDate","rules":{"datetime":true},"type":"DateTime"},"fCheckGrade":{"define":"fCheckGrade","label":"评分等级","name":"fCheckGrade","relation":"fCheckGrade","type":"String"},"fCheckHC":{"define":"fCheckHC","label":"门窗干净无灰尘","name":"fCheckHC","relation":"fCheckHC","rules":{"number":true},"type":"Decimal"},"fCheckIllegal":{"define":"fCheckIllegal","label":"违纪内容","name":"fCheckIllegal","relation":"fCheckIllegal","type":"String"},"fCheckRemark":{"define":"fCheckRemark","label":"检查小结","name":"fCheckRemark","relation":"fCheckRemark","type":"String"},"fCheckSZ":{"define":"fCheckSZ","label":"书桌物品摆放整齐","name":"fCheckSZ","relation":"fCheckSZ","rules":{"number":true},"type":"Decimal"},"fCheckScore":{"define":"fCheckScore","label":"检查总分数","name":"fCheckScore","relation":"fCheckScore","rules":{"number":true},"type":"Decimal"},"fCheckTF":{"define":"fCheckTF","label":"天花板、风扇干净无灰尘","name":"fCheckTF","relation":"fCheckTF","rules":{"number":true},"type":"Decimal"},"fCheckWM":{"define":"fCheckWM","label":"文明礼仪轮值表公约","name":"fCheckWM","relation":"fCheckWM","rules":{"number":true},"type":"Decimal"},"fCheckWS":{"define":"fCheckWS","label":"室内地面干净无垃圾","name":"fCheckWS","relation":"fCheckWS","rules":{"number":true},"type":"Decimal"},"fCheckWorker":{"define":"fCheckWorker","label":"记录人","name":"fCheckWorker","relation":"fCheckWorker","type":"String"},"fCheckYC":{"define":"fCheckYC","label":"阳台、厕所无污垢、异味","name":"fCheckYC","relation":"fCheckYC","rules":{"number":true},"type":"Decimal"},"fCheckillFlag":{"define":"fCheckillFlag","label":"是否违规","name":"fCheckillFlag","relation":"fCheckillFlag","type":"String"},"fDormID":{"define":"fDormID","label":"宿舍号","name":"fDormID","relation":"fDormID","type":"String"},"fID":{"define":"fID","label":"ID","name":"fID","relation":"fID","type":"String"}},"directDelete":true,"events":{"onSaveCommit":"saveCommit"},"idColumn":"fID","limit":10,"queryAction":"queryDorm_check_list","saveAction":"saveDorm_check_list","tableName":"dorm_check_list","url":"/nyssinfoss/NySsInfo","xid":"mainData"});
}}); 
return __result;});