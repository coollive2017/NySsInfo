<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:182px;left:201px;height:auto;"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="checkData" queryAction="queryDorm_check_list" saveAction="saveDorm_check_list" url="/nyssinfoss/NySsInfo" tableName="dorm_check_list" idColumn="fID" orderBy="fCheckDate:desc" directDelete="true" confirmDelete="false"><column label="ID" name="fID" type="String" xid="default1"></column>
  <column label="宿舍号" name="fDormID" type="String" xid="default2"></column>
  <column label="检查时间" name="fCheckDate" type="DateTime" xid="default3"></column>
  <column label="书桌物品摆放整齐" name="fCheckSZ" type="Decimal" xid="default4"></column>
  <column label="室内地面干净无垃圾" name="fCheckWS" type="Decimal" xid="default5"></column>
  <column label="床上用品叠放整齐" name="fCheckCS" type="Decimal" xid="default6"></column>
  <column label="门窗干净无灰尘" name="fCheckHC" type="Decimal" xid="default7"></column>
  <column label="天花板、风扇干净无灰尘" name="fCheckTF" type="Decimal" xid="default8"></column>
  <column label="阳台、厕所无污垢、异味" name="fCheckYC" type="Decimal" xid="default9"></column>
  <column label="文明礼仪轮值表公约" name="fCheckWM" type="Decimal" xid="default10"></column>
  <column label="检查总分数" name="fCheckScore" type="Decimal" xid="default11"></column>
  <column label="评分等级" name="fCheckGrade" type="String" xid="default12"></column>
  <column label="是否违规" name="fCheckillFlag" type="String" xid="default13"></column>
  <column label="违纪内容" name="fCheckIllegal" type="String" xid="default14"></column>
  <column label="记录人" name="fCheckWorker" type="String" xid="default15"></column>
  <column label="检查小结" name="fCheckRemark" type="String" xid="default16"></column></div></div> 

  
  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="infoWindowDialog" style="top:295px;left:27px;" src="$UI/NySsInfo/detail.w" width="40%" height="60%" status="normal" onReceived="infoWindowDialogReceived" title="编辑评分信息" showTitle="true"><result concept="checkData" operation="edit" origin="checkData" xid="default73">
   <mapping from="fID" to="fID" locator="true" xid="default74"></mapping>
   <mapping from="fDormID" to="fDormID" xid="default75"></mapping>
   <mapping from="fCheckDate" to="fCheckDate" xid="default76"></mapping>
   <mapping from="fCheckSZ" to="fCheckSZ" xid="default77"></mapping>
   <mapping from="fCheckWS" to="fCheckWS" xid="default78"></mapping>
   <mapping from="fCheckCS" to="fCheckCS" xid="default79"></mapping>
   <mapping from="fCheckHC" to="fCheckHC" xid="default80"></mapping>
   <mapping from="fCheckTF" to="fCheckTF" xid="default81"></mapping>
   <mapping from="fCheckYC" to="fCheckYC" xid="default82"></mapping>
   <mapping from="fCheckWM" to="fCheckWM" xid="default83"></mapping>
   <mapping from="fCheckScore" to="fCheckScore" xid="default84"></mapping>
   <mapping from="fCheckGrade" to="fCheckGrade" xid="default85"></mapping>
   <mapping from="fCheckillFlag" to="fCheckillFlag" xid="default86"></mapping>
   <mapping from="fCheckIllegal" to="fCheckIllegal" xid="default87"></mapping>
   <mapping from="fCheckWorker" to="fCheckWorker" xid="default88"></mapping>
   <mapping from="fCheckRemark" to="fCheckRemark" xid="default89"></mapping></result></span>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1" height="50"><div component="$UI/system/components/justep/toolBar/toolBar" class="x-toolbar form-inline x-toolbar-spliter" xid="toolBar3">
   
   
   
   <span xid="span4"><![CDATA[----宿舍评分管理----]]></span><a component="$UI/system/components/justep/button/button" class="btn btn-link" label="编辑" xid="edit" icon="icon-edit" onClick="editClick">
   <i xid="i10" class="icon-edit"></i>
   <span xid="span33">编辑</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="删除" xid="delete" icon="icon-android-remove" onClick="deleteClick">
   <i xid="i12" class="icon-android-remove"></i>
   <span xid="span40">删除</span></a><div class="input-group pull-right" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup4">
    <input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="selectCondition" placeHolder="请输入" dataType="String"></input>
    <div class="input-group-btn" xid="layoutWizard2">
     <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-icon" label="button" xid="select" icon="icon-android-search" onClick="selectClick">
      <i xid="i6" class="icon-android-search"></i>
      <span xid="span25"></span></a> </div> </div> 
  <input component="$UI/system/components/justep/input/input" class="form-control" xid="dataInput" dataType="Date" style="margin-left:60px;width:134px;"></input>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="筛选" xid="filterBtn" onClick="filterBtnClick">
   <i xid="i1"></i>
   <span xid="span1">筛选</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="生成Excel文件" xid="outExcelBtn" onClick="outExcelBtnClick">
   <i xid="i2"></i>
   <span xid="span2">生成Excel文件</span></a>
  </div></div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/grid/grid" hiddenCaptionbar="true" altRows="true" class="x-grid-no-bordered" xid="checkgrid" data="checkData" useFilterBar="false" showRowNumber="true" height="auto" width="100%" rowAttr="val(&quot;fCheckGrade&quot;)=='不合格' ? {style:'background:#FFCCCC;'}:{style:''}" onRowDblClick="checkgridRowDblClick" multiboxonly="false" moveColumn="false" multiselect="true">
   <columns xid="columns4"><column width="80" name="fDormID" xid="column31"></column>
  <column width="100" name="fCheckDate" xid="column32"></column>
  <column width="100" name="fCheckWorker" xid="column44"></column><column width="100" name="fCheckSZ" xid="column33" align="center"></column>
  <column width="100" name="fCheckWS" xid="column34" align="center"></column>
  <column width="100" name="fCheckCS" xid="column35" align="center"></column>
  <column width="100" name="fCheckHC" xid="column36" align="center"></column>
  <column width="100" name="fCheckTF" xid="column37" align="center"></column>
  <column width="100" name="fCheckYC" xid="column38" align="center"></column>
  <column width="100" name="fCheckWM" xid="column39" align="center"></column>
  <column width="100" name="fCheckScore" xid="column40" align="center"></column>
  <column width="70" name="fCheckGrade" xid="column41" align="center"></column>
  <column width="70" name="fCheckillFlag" xid="column42" align="center"></column>
  <column width="200" name="fCheckIllegal" xid="column43"></column>
  
  <column width="200" name="fCheckRemark" xid="column45"></column></columns></div>
  </div>
   <div class="x-panel-bottom" xid="bottom1">
  <div component="$UI/system/components/justep/pagerBar/pagerBar" class="x-pagerbar container-fluid" xid="pagerBar3" data="checkData">
   <div class="row" xid="div19">
    <div class="col-sm-3" xid="div20">
     <div class="x-pagerbar-length" xid="div21">
      <label component="$UI/system/components/justep/pagerLimitSelect/pagerLimitSelect" class="x-pagerlimitselect" xid="pagerLimitSelect3" defaultValue="10">
       <span xid="span34">显示</span>
       <select component="$UI/system/components/justep/select/select" class="form-control input-sm" xid="select5">
        <option value="10" xid="default26">10</option>
        <option value="20" xid="default27">20</option>
        <option value="50" xid="default28">50</option>
        <option value="100" xid="default29">100</option>
        <option value="5000" xid="default30">5000</option></select> 
       <span xid="span35">条</span></label> </div> </div> 
    <div class="col-sm-3" xid="div22">
     <div class="x-pagerbar-info" xid="div23">当前显示0条，共0条</div></div> 
    <div class="col-sm-6" xid="div24">
     <div class="x-pagerbar-pagination" xid="div25">
      <ul class="pagination" component="$UI/system/components/bootstrap/pagination/pagination" xid="pagination3">
       <li class="prev" xid="li2">
        <a href="#" xid="a5">
         <span aria-hidden="true" xid="span36">«</span>
         <span class="sr-only" xid="span37">Previous</span></a> </li> 
       <li class="next" xid="li10">
        <a href="#" xid="a6">
         <span aria-hidden="true" xid="span38">»</span>
         <span class="sr-only" xid="span39">Next</span></a> </li> </ul> </div> </div> </div> </div></div></div></div>