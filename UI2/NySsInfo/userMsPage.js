define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.userDetatilClick = function(event){
		var row = event.bindingContext.$object;
		this.comp("windowDialog1").open({
			"data" : {  
				"operate" : "edit",
					//将改行数据转成json在传过去
				"rowData": row.toJson()
			}
		});
	};

	Model.prototype.windowDialog1Received = function(event){
		this.comp("UserData").saveData();
		this.comp("UserData").refreshData();
		justep.Util.hint("修改成功！");
	};
	
	//删除按钮当前行数据
	Model.prototype.DelBtnClick = function(event){
		var data = this.comp("UserData");
		var row = event.bindingContext.$object;
		data.deleteData([ row ], {
			"async" : true,
			"onSuccess" : function() {
				data.saveData();
			}
		});
	};

	return Model;
});