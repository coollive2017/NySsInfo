<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:304px;left:29px;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="checkData" queryAction="queryDorm_check_list" saveAction="saveDorm_check_list" url="/nyssinfoss/NySsInfo" tableName="dorm_check_list" idColumn="fID" orderBy="fDormID:asc,fCheckDate:desc"><column label="ID" name="fID" type="String" xid="default1"></column>
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
  <column label="检查小结" name="fCheckRemark" type="String" xid="default16"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="Ldondata" idColumn="ID"><column label="ID" name="ID" type="String" xid="xid1"></column>
  <column label="楼栋" name="Ld" type="String" xid="xid2"></column>
  <data xid="default17">[{&quot;ID&quot;:&quot;1&quot;,&quot;Ld&quot;:&quot;1#&quot;},{&quot;ID&quot;:&quot;2&quot;,&quot;Ld&quot;:&quot;2#&quot;},{&quot;ID&quot;:&quot;3&quot;,&quot;Ld&quot;:&quot;3#&quot;},{&quot;ID&quot;:&quot;4&quot;,&quot;Ld&quot;:&quot;4#&quot;},{&quot;ID&quot;:&quot;5&quot;,&quot;Ld&quot;:&quot;5#&quot;},{&quot;ID&quot;:&quot;6&quot;,&quot;Ld&quot;:&quot;6#&quot;},{&quot;ID&quot;:&quot;7&quot;,&quot;Ld&quot;:&quot;7#&quot;},{&quot;ID&quot;:&quot;8&quot;,&quot;Ld&quot;:&quot;8#&quot;},{&quot;ID&quot;:&quot;9&quot;,&quot;Ld&quot;:&quot;9#&quot;},{&quot;ID&quot;:&quot;10&quot;,&quot;Ld&quot;:&quot;10#&quot;},{&quot;ID&quot;:&quot;11&quot;,&quot;Ld&quot;:&quot;青#&quot;}]</data></div></div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" style="top:10px;left:72px;" src="$UI/NySsInfo/detail.w" onReceived="windowDialog1Received"><result concept="checkData" operation="edit" origin="checkData" xid="default51">
   <mapping from="fID" to="fID" locator="true" xid="default52"></mapping>
   <mapping from="fDormID" to="fDormID" xid="default53"></mapping>
   <mapping from="fCheckDate" to="fCheckDate" xid="default54"></mapping>
   <mapping from="fCheckSZ" to="fCheckSZ" xid="default55"></mapping>
   <mapping from="fCheckWS" to="fCheckWS" xid="default56"></mapping>
   <mapping from="fCheckCS" to="fCheckCS" xid="default57"></mapping>
   <mapping from="fCheckHC" to="fCheckHC" xid="default58"></mapping>
   <mapping from="fCheckTF" to="fCheckTF" xid="default59"></mapping>
   <mapping from="fCheckYC" to="fCheckYC" xid="default60"></mapping>
   <mapping from="fCheckWM" to="fCheckWM" xid="default61"></mapping>
   <mapping from="fCheckScore" to="fCheckScore" xid="default62"></mapping>
   <mapping from="fCheckGrade" to="fCheckGrade" xid="default63"></mapping>
   <mapping from="fCheckillFlag" to="fCheckillFlag" xid="default64"></mapping>
   <mapping from="fCheckIllegal" to="fCheckIllegal" xid="default65"></mapping>
   <mapping from="fCheckWorker" to="fCheckWorker" xid="default66"></mapping>
   <mapping from="fCheckRemark" to="fCheckRemark" xid="default67"></mapping></result></span><div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="showLeftB" xid="showLeft" icon="linear linear-sad" onClick="showLeftClick">
   <i xid="i2" class="linear linear-sad"></i>
   <span xid="span3">showLeftB</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link" xid="editBtn" icon="linear linear-store" onClick="editBtnClick" bind-visible="0">
   <i xid="i8" class="linear linear-store"></i>
   <span xid="span10"></span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="添加" xid="addScoreBtn" icon="linear linear-pencil" onClick="addScoreBtnClick">
   <i xid="i5" class="linear linear-pencil"></i>
   <span xid="span7">添加</span></a></div>  
          <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-primary btn-only-icon" label="button" xid="select" icon="e-commerce e-commerce-fangdajing" onClick="selectClick">
   <i xid="i3" class="e-commerce e-commerce-fangdajing"></i>
   <span xid="span4"></span></a>
  <select component="$UI/system/components/justep/select/select" bind-optionsCaption="全部#" class="form-control bg-info select_c" xid="selectCondition" bind-options="Ldondata" bind-optionsValue="Ld" style="width:80px;"></select></div>
        </div> 
      </div>  
    <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C7AACC8D53A00001A9D7CE1CBA50122A" style="bottom: 0px;">
  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-content" xid="content2"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView2" pullUpLabel="加载更多记录...">
   <div class="x-content-center x-pull-down container" xid="div4">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i4"></i>
    <span class="x-pull-down-label" xid="span5">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div5"><div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="list1" data="checkData">
   <ul class="x-list-template x-min-height list-group" xid="listTemplateUl1" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl1">
    <li xid="li1" class="x-min-height list-group-item" componentname="li(html)" id="undefined_li1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   
  <div class="x-col" xid="col5">
  
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9" style="vertical-align:middle;text-align:left;">
   <h4 xid="h42"><![CDATA[宿舍：]]></h4><div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" style="font-size:x-large;color:#408080;font-family:Adobe 黑体 Std R;" bind-ref='ref("fDormID")'></div></div></div>
  </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" xid="col15"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output5" bind-ref='ref("fCheckDate")' style="font-size:medium;"></div></div>
   </div></div>
   <div class="x-col x-col-fixed" xid="col2" style="width:auto;vertical-align:middle;text-align:center;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row11">
   <div class="x-col" xid="col25"><p xid="p1"><![CDATA[]]></p></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div class="x-col" xid="col18" style="text-align:center;"><span xid="span1" style="color:#000000;font-size:medium;"><![CDATA[评分等级]]></span></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
   <div class="x-col" xid="col21" style="text-align:center;"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output6" bind-ref='ref("fCheckGrade")' bind-css="{&quot;bhg&quot;:  val(&quot;fCheckGrade&quot;)=='不合格' ,&quot;hg&quot;:  val(&quot;fCheckGrade&quot;)=='合格' ,&quot;lh&quot;:  val(&quot;fCheckGrade&quot;)=='良好' ,&quot;yx&quot;:  val(&quot;fCheckGrade&quot;)=='优秀' }"></div>
  </div>
   </div>
  </div>
   <div class="x-col x-col-fixed" xid="col3" style="width:auto;font-variant:normal;vertical-align:middle;">
  
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10">
   
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-left center-block" label="detaillBtn" xid="detaillBtn" icon="icon-chevron-right" style="width:auto;vertical-align:baseline;line-height:40px;" onClick="detaillBtnClick" bind-visible="1">
   <i xid="i1" class="icon-chevron-right"></i>
   <span xid="span2">detaillBtn</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-left" label="DelBtn" xid="DelBtn" icon="round round-tv" style="width:auto;vertical-align:baseline;line-height:40px;color:#FF8000;" onClick="DelBtnClick" bind-visible="0">
   <i xid="i7" class="round round-tv"></i>
   <span xid="span9">DelBtn</span></a></div>
  </div></div>
  </li></ul> </div>
  </div>
   <div class="x-content-center x-pull-up" xid="div6">
    <span class="x-pull-up-label" xid="span6">加载更多记录...</span>
  </div> </div></div>
   </div></div>
  </div> 
</div>