define(function(require){
	var $ = require("jquery");
	var MD5 = require('$UI/system/lib/base/md5');
	var justep = require("$UI/system/lib/justep");
	md5 = new MD5();
	
	var Model = function(){
		this.callParent();
	};


	Model.prototype.regBtnClick = function(event){
		var userName = this.comp("usernameinput").val();
		var PassWord = this.comp("password1").val();
		var PassWord2 = this.comp("password2").val();
		var Department = this.comp("departmentinput").val();
		var Name = this.comp("nameinput").val();
		var Academy = this.comp("Academyselect").val();
		if(userName == ""){
			justep.Util.hint("学号不能为空！", {
					"type" : "danger"
			});
			return;
		}
		if(PassWord == ""){
			justep.Util.hint("密码不能为空！", {
					"type" : "danger"
			});
			return;
		}
		if(PassWord2 == ""){
			justep.Util.hint("再输入一次密码哦！", {
					"type" : "danger"
			});
			return;
		}
		if(Department == ""){
			justep.Util.hint("所属部门不能为空！", {
					"type" : "danger"
			});
			return;
		}
		if(Name == ""){
			justep.Util.hint("别忘记填写你的大名！", {
					"type" : "danger"
			});
			return;
		}
		if( PassWord != PassWord2 ){
			justep.Util.hint("两次输入的密码不一致！", {
					"type" : "danger"
			});
			return;
		}else {
			//判断数据库中是否已经存在该用户，有着提示，没有则成功注册
			var data = this.comp("userData");
			data.clear();
			data.setFilter("userNameFilter","fUserName = "+ userName );
			data.refreshData();
			if(data.count() > 0){
				justep.Util.hint(userName+"用户已经注册！", {
						"type" : "danger"
				});
				return;
			}else{
				data.newData({
				index : 0,
				defaultValues : [ {
					"fID" : justep.UUID.createUUID(),
					"fAut" : 1,
					"fUserName" : userName,	
					"fPassWord" :  md5.hex_md5(PassWord),	
					"fDepartment" : Department,
					"fName" : Name	,
					"fAcademy" : Academy	
					} ]
				});
				data.saveData();
				justep.Util.hint("恭喜"+Name+"用户注册成功", {
						"type" : "success"
				});
				return;
			}
		}
	};



	return Model;
});