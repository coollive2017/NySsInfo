<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:68px;left:14px;" onParamsReceive="modelParamsReceive" onLoad="modelLoad" onActive="modelActive" onunLoad="modelUnLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="itemdata" idColumn="ID"><column label="ID" name="ID" type="String" xid="xid1"></column>
  <column label="选择" name="select" type="String" xid="xid2"></column>
  <data xid="default1">[{&quot;ID&quot;:&quot;1&quot;,&quot;select&quot;:&quot;是&quot;},{&quot;ID&quot;:&quot;2&quot;,&quot;select&quot;:&quot;否&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="illegalData" idColumn="ID" confirmDelete="false"><column label="ID" name="ID" type="String" xid="xid3"></column>
  <column label="违纪内容" name="content" type="String" xid="xid4"></column>
  <data xid="default33">[{&quot;ID&quot;:&quot;1&quot;,&quot;content&quot;:&quot;对待检查人员态度恶劣或拒检&quot;},{&quot;ID&quot;:&quot;2&quot;,&quot;content&quot;:&quot;宿舍地面脏乱差程度严重&quot;},{&quot;ID&quot;:&quot;3&quot;,&quot;content&quot;:&quot;使用违禁电器或明火用具&quot;}]</data></div><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="checkData" queryAction="queryDorm_check_list" saveAction="saveDorm_check_list" url="/nyssinfoss/NySsInfo" tableName="dorm_check_list" idColumn="fID"><column label="ID" name="fID" type="String" xid="default17"></column>
  <column label="宿舍号" name="fDormID" type="String" xid="default18"></column>
  <column label="检查时间" name="fCheckDate" type="DateTime" xid="default19"></column>
  <column label="书桌物品摆放整齐" name="fCheckSZ" type="Decimal" xid="default20"></column>
  <column label="室内地面干净无垃圾" name="fCheckWS" type="Decimal" xid="default21"></column>
  <column label="床上用品叠放整齐" name="fCheckCS" type="Decimal" xid="default22"></column>
  <column label="门窗干净无灰尘" name="fCheckHC" type="Decimal" xid="default23"></column>
  <column label="天花板、风扇干净无灰尘" name="fCheckTF" type="Decimal" xid="default24"></column>
  <column label="阳台、厕所无污垢、异味" name="fCheckYC" type="Decimal" xid="default25"></column>
  <column label="文明礼仪轮值表公约" name="fCheckWM" type="Decimal" xid="default26"></column>
  <column label="检查总分数" name="fCheckScore" type="Decimal" xid="default27"></column>
  <column label="评分等级" name="fCheckGrade" type="String" xid="default28"></column>
  <column label="是否违规" name="fCheckillFlag" type="String" xid="default29"></column>
  <column label="违纪内容" name="fCheckIllegal" type="String" xid="default30"></column>
  <column label="记录人" name="fCheckWorker" type="String" xid="default31"></column>
  <column label="检查小结" name="fCheckRemark" type="String" xid="default32"></column></div></div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" style="top:13px;left:109px;" src="$UI/NySsInfo/userHelp.w"></span><div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="评分"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="帮助" xid="helpBtn" icon="icon-help" onClick="helpBtnClick">
   <i xid="i4" class="icon-help"></i>
   <span xid="span5">帮助</span></a></div>  
          <div class="x-titlebar-title">评分</div>  
          <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="OkBtn" xid="OkBtn" icon="linear linear-bubble" onClick="OkBtnClick">
   <i xid="i1" class="linear linear-bubble"></i>
   <span xid="span2">OkBtn</span></a>
  </div>
        </div> 
      </div>  
    <div class="x-panel-content x-scroll-view" xid="content1" _xid="C7B20435D630000191C6C8A01C311758" style="bottom: 0px;">
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i2"></i>
    <span class="x-pull-down-label" xid="span1">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" title="title" xid="controlGroup1">
  <!--  <div class="x-control-group-title" xid="controlGroupTitle1">
    <span xid="span1">title</span></div> --> 
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
   <label class="x-label" xid="DromLab" bind-text='$model.checkData.label("fDormID")'></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="DromID" placeHolder="请输入宿舍楼号例：3#207" bind-ref='$model.checkData.ref("fDormID")' style="font-family:微软雅黑;"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit16">
   <label class="x-label" xid="label4" bind-text='$model.checkData.label("fCheckillFlag")'><![CDATA[]]></label>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="illFlagselect" bind-options="itemdata" bind-optionsValue="select" bind-ref='$model.checkData.ref("fCheckillFlag")' onChange="select1Change" bind-load="illFlagselectLoad"></select></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEditillg" bind-visible="0">
   <label class="x-label" xid="illglabel" bind-text='$model.checkData.label("fCheckIllegal")'></label>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="illegalSelect" bind-options="illegalData" bind-optionsValue="content" bind-ref='$model.checkData.ref("fCheckIllegal")'></select></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label60" xid="labelEdit5">
   <label class="x-label" xid="SZLab" bind-text='$model.checkData.label("fCheckSZ")'></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="SZinput" placeHolder="0-20 分" bind-ref='$model.checkData.ref("fCheckSZ")' max="20" min="0" maxLength="4"></input></div>
  
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label60" xid="labelEdit1">
   <label class="x-label" xid="WSlabel" bind-text='$model.checkData.label("fCheckWS")'></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="WSinput" bind-ref='$model.checkData.ref("fCheckWS")' placeHolder="0-20 分" min="0" max="20" maxLength="4"></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label60" xid="labelEdit12">
   <label class="x-label" xid="CSlabel" bind-text='$model.checkData.label("fCheckCS")'></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="CSinput" bind-ref='$model.checkData.ref("fCheckCS")' placeHolder="0-20 分" min="0" max="20" maxLength="4"></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label60" xid="labelEdit3">
   <label class="x-label" xid="HClabel" bind-text='$model.checkData.label("fCheckHC")'></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="HCinput" bind-ref='$model.checkData.ref("fCheckHC")' placeHolder="0-10 分" min="0" max="10" maxLength="4"></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label60" xid="labelEdit4">
   <label class="x-label" xid="TFlabel" bind-text='$model.checkData.label("fCheckTF")'></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="TFinput" bind-ref='$model.checkData.ref("fCheckTF")' placeHolder="0-10 分" min="0" max="10.0" maxLength="4" valueUpdateMode="input"></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label60" xid="labelEdit9">
   <label class="x-label" xid="YClabel" bind-text='$model.checkData.label("fCheckYC")'></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="YCinput" bind-ref='$model.checkData.ref("fCheckYC")' placeHolder="0-10 分" min="0" max="10" maxLength="4"></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label60" xid="labelEdit11">
   <label class="x-label" xid="WMlabel" bind-text='$model.checkData.label("fCheckWM")'></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="WMinput" bind-ref='$model.checkData.ref("fCheckWM")' placeHolder="0-10 分" min="0" max="10" maxLength="4"></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7">
   <label class="x-label" bind-text='$model.checkData.label("fCheckScore")' xid="ScoreLab" dir="ltr"></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="Score" placeHolder="请输入该宿舍最终得分" bind-ref='$model.checkData.ref("fCheckScore")' min="0" max="100" maxLength="4"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit13">
   <label class="x-label" bind-text='$model.checkData.label("fCheckGrade")' xid="Gradeabel" dir="ltr"></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="Gradeinput" placeHolder="请输入该宿舍评分等级" bind-ref='$model.checkData.ref("fCheckGrade")' maxLength="2"></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
   <label class="x-label" xid="CheckDateLab" bind-text='$model.checkData.label("fCheckDate")'></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="CheckDate" dataType="DateTime" placeHolder="此项不需要手动输入" bind-ref='$model.checkData.ref("fCheckDate")'></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit8">
   <label class="x-label" xid="Remark" bind-text='$model.checkData.label("fCheckRemark")'></label>
   <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control x-edit" xid="RemarkInput" placeHolder="检查小结" bind-ref='$model.checkData.ref("fCheckRemark")' valueUpdateMode="keyup" style="height:69px;"></textarea></div>
  
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col2" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-primary" label="生成评分结果" xid="CheckBtn" style="width:50%;" onClick="CheckBtnClick">
   <i xid="i3"></i>
   <span xid="span4">生成评分结果</span></a></div>
   </div>
  </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span3">加载更多...</span>
  </div> </div></div>
  </div> 
</div>