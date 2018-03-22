define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var editFlag = 0;
	var Model = function(){
		this.callParent();
	};
	
	//接收windowDialog1的数据创建新的数据表
	Model.prototype.addScoreBtnClick = function(event){
		this.comp("windowDialog1").open({
			"data" : {
				"operate" : "new"
			}
		})
	};
	
	//点击详细，将row的数据传给windowdailog判断权限打开
	Model.prototype.detaillBtnClick = function(event){
		if(justep.Shell.userAut.get()== 2){
			var row = event.bindingContext.$object;
			this.comp("windowDialog1").open({
				"data" : {  
					"operate" : "edit",
					//将改行数据转成json在传过去
					"rowData": row.toJson()
				}
			})
		}else{
			justep.Util.hint("你没有权限查看，请联系管理员");
		}
	};
	
	//windowdailog返回的值处理信息。
	Model.prototype.windowDialog1Received = function(event){
		this.comp("checkData").saveData();
		justep.Util.hint("信息新增或修改成功！");
	};

	Model.prototype.modelLoad = function(event){
		if(justep.Shell.userAut.get() == 2){
			$(this.getElementsByXid("editBtn")).show();
		}
	};


	Model.prototype.editBtnClick = function(event){
		if(editFlag == 0){
			$(this.getElementsByXid("detaillBtn")).hide();
			$(this.getElementsByXid("DelBtn")).show();
			editFlag = 1;
		}else {
			$(this.getElementsByXid("detaillBtn")).show();
			$(this.getElementsByXid("DelBtn")).hide();
			editFlag = 0;
		}
	};

	Model.prototype.DelBtnClick = function(event){
		var row = event.bindingContext.$object;
		this.comp("checkData").deleteData(row);
		this.comp("checkData").saveData();
	};

	//点击菜单键调用shell触发showLeft
	Model.prototype.showLeftBtnClick = function(event){
		justep.Shell.showLeft();
	};
	
	

	Model.prototype.showLeftClick = function(event){
		justep.Shell.showLeft();
	};
	
	

	Model.prototype.selectClick = function(event){
		var text = this.getElementByXid('selectCondition').value;

		if (text != null && text != "") {
			this.comp('checkData').setFilter(
					"filter1",
					"dorm_check_list.fDormID like '%" + text + "%'");

		} else {
			this.comp('checkData').filters.clear();
		}
		this.comp('checkData').refreshData();
	};
	
	

	return Model;
});