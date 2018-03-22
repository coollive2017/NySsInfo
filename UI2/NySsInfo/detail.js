define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Model = function(){
		this.callParent();
	};
	var flag = 0;
	var reg1 = /^\d#\d{3}$/;
	var reg2 = /^\d\d#\d{3}$/;
	var reg3 = /^青#\d{3}$/;
	Model.prototype.OkBtnClick = function(event){
		if(flag == 0 ){
			justep.Util.hint("请生成评分结果！", {
				"type" : "danger"
			});
			return;
		}
		if (!confirm("你确定信息都正确了吗？")) {
			return;
		}
		flag = 0;
		this.owner.send(this.comp("checkData").getCurrentRow());
		this.comp("window").close();
	};

	Model.prototype.modelParamsReceive = function(event){
		var data = this.comp("checkData");
		data.clear();
		if(event.params.data.operate == "new"){
			data.newData({
				"defaultValues" : [ {
					"fID" : justep.UUID.createUUID(),
					"fDormID": this.comp("DromID").val(),
					"fCheckDate":new Date(),
					"fCheckillFlag": this.comp("illFlagselect").val(),
					"fCheckIllegal": this.comp("illegalSelect").val(),
					"fCheckSZ": this.comp("SZinput").val(),
					"fCheckSZ": this.comp("SZinput").val(),
					"fCheckWS": this.comp("WSinput").val(),
					"fCheckCS": this.comp("CSinput").val(),
					"fCheckHC": this.comp("HCinput").val(),
					"fCheckTF": this.comp("TFinput").val(),
					"fCheckYC": this.comp("YCinput").val(),
					"fCheckWM": this.comp("WMinput").val(),
					"fCheckScore": this.comp("Score").val(),
					"fCheckGrade": this.comp("Gradeinput").val(),
					"fCheckRemark" : this.comp("RemarkInput").val(),
					"fCheckWorker": justep.Shell.Name.get()
				} ]
			}) 
		}
		//加载前页带来的数据
		else if(event.params.data.operate == "edit"){
			data.loadData([event.params.data.rowData]);
			data.first();
			//判断是否要显示违规内容
			if(this.comp("illFlagselect").val()== "是"){
			$(this.getElementsByXid("labelEditillg")).show();
			}else {
				$(this.getElementsByXid("labelEditillg")).hide();
			}
		}
	};

	Model.prototype.modelLoad = function(event){
		if(this.comp("illFlagselect").val()== "是"){
			$(this.getElementsByXid("labelEditillg")).show();
		}
	};

	Model.prototype.CheckBtnClick = function(event){
		var Tscore = 0.0;
		//无输入检查
		if(this.comp("DromID").val() == ""){
			justep.Util.hint("宿舍号不能为空！", {
				"type" : "danger"
			});
			return;
		}
		if(!reg1.test(this.comp("DromID").val()) && !reg2.test(this.comp("DromID").val()) && !reg3.test(this.comp("DromID").val())){
			justep.Util.hint("宿舍号格式不正确！", {
				"type" : "danger"
			});
			return;
		}
		
		//违规检查
		if(this.comp("illFlagselect").val()==""){
			justep.Util.hint("该宿舍是否违规！", {
				"type" : "danger"
			});
			return;
		}
		if(this.comp("illFlagselect").val()== "是"){
			this.comp("SZinput").val(0.01);
			this.comp("WSinput").val(0.01);
			this.comp("CSinput").val(0.01);
			this.comp("HCinput").val(0.01);
			this.comp("TFinput").val(0.01);
			this.comp("YCinput").val(0.01);
			this.comp("WMinput").val(0.01);
			//违规内容检查空
			if(this.comp("illegalSelect").val()==""){
				justep.Util.hint("请选择违规内容！", {
					"type" : "danger"
				});
				return;
			}
		}
		//分数项检查
		if(this.comp("SZinput").val() == ""|| this.comp("WSinput").val() == "" ||
				this.comp("HCinput").val() == "" || this.comp("TFinput").val() == ""||
				this.comp("YCinput").val() == "" || this.comp("WMinput").val() == ""||
				this.comp("CSinput").val() == ""
			){
			justep.Util.hint("评分项不能为空，请仔细检查！", {
				"type" : "danger"
			});
			return;
		}
		
		//获取各input值
		var SZ  = parseFloat(this.comp("SZinput").val());
		var WS  = parseFloat(this.comp("WSinput").val());
		var CS  = parseFloat(this.comp("CSinput").val());
		var HC  = parseFloat(this.comp("HCinput").val());
		var TF  = parseFloat(this.comp("TFinput").val());
		var YC  = parseFloat(this.comp("YCinput").val());
		var WM  = parseFloat(this.comp("WMinput").val());
		if(SZ > 20|| WS  > 20|| CS > 20 ||HC > 10 || TF > 10 || YC > 10 || WM > 10 ){
			justep.Util.hint("评分项分数输入有误，请仔细检查！", {
				"type" : "danger"
			});
			return;
		}
		
		Tscore = SZ + WS + CS + HC + TF + YC + WM;
		
		//等级评分
		if(Tscore < 60){
			this.comp("Gradeinput").val("不合格");
		}else if (Tscore >=60 && Tscore < 80 ) {
			this.comp("Gradeinput").val("合格");
		}else if (Tscore >=80 && Tscore < 90 ) {
			this.comp("Gradeinput").val("良好");
		}else{
			this.comp("Gradeinput").val("优秀");
		}
		//总分
		this.comp("Score").val(Tscore);
		justep.Util.hint("生成成功,请核查!");
		flag = 1;
	};


	Model.prototype.modelActive = function(event){
		$(this.getElementsByXid("labelEditillg")).hide();
	};

	Model.prototype.select1Change = function(event){
		if(this.comp("illFlagselect").val()== "是"){
			$(this.getElementsByXid("labelEditillg")).show();
		}else {
			$(this.getElementsByXid("labelEditillg")).hide();
		}
	};


	Model.prototype.modelUnLoad = function(event){
		$(this.getElementsByXid("labelEditillg")).hide();
	};


	Model.prototype.illFlagselectLoad = function(event){
		
	};


	Model.prototype.helpBtnClick = function(event){
		this.comp("windowDialog1").open({
			"data" : {
				"operate" : "new"
			}
		});
	};


	return Model;
});