define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};


	Model.prototype.modelParamsReceive = function(event){
		var userdata = this.comp("UserData");
		var username = justep.Shell.userName.get();
		if(justep.Shell.userName.get()== 1){
			this.comp("input3").val("工作人员");
		}else{
			this.comp("input3").val("管理员");
		}
		userdata.clear();
		userdata.setFilter("userNameFilter","fUserName = "+ username);
		userdata.refreshData();
	};


	return Model;
});