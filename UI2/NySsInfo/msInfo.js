define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.modelParamsReceive = function(event){
		var data = this.comp("UserData");
		data.clear();
		if(event.params.data.operate == "edit"){
			data.loadData([event.params.data.rowData]);
			data.first();
		}
	};

	Model.prototype.button1Click = function(event){
		if (!confirm("你确定要修改吗？")) {
			return;
		}
		this.owner.send(this.comp("UserData").getCurrentRow());
		this.comp("window").close();
	};

	return Model;
});