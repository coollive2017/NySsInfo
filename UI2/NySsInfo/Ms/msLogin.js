define(function(require){
	require('$UI/system/lib/jquery/transition');
	var MD5 = require('$UI/system/lib/base/md5');
    var $= require('jquery'),
		justep = require('$UI/system/lib/justep'),
		md5 = new MD5();


	var Model = function(){
		this.callParent();
    };
	
	Model.prototype.modelLoad = function(event){
		
	};
	
	
	Model.prototype.loginClick = function(event){
		if(this.comp("nameInput").val() == ""){
			justep.Util.hint("账号不能为空！", {
					"type" : "danger"
			});
			return;
		}
		if(this.comp("passwordInput").val() == ""){
			justep.Util.hint("密码不能为空！", {
					"type" : "danger"
			});
			return;
		}
		var userName = this.comp("nameInput").val();
		var passWord = md5.hex_md5(this.comp("passwordInput").val());
		var userdata = this.comp("userData");
		userdata.clear();
		userdata.setFilter("userNameFilter","fUserName = "+ userName );
		userdata.refreshData();
		if (userdata.count() > 0 ) {
				var data = userdata.getFirstRow();
				if (passWord == data.val("fPassWord") && data.val("fAut")== 2 ){
					justep.Util.hint("登录成功,管理员你好！ !", {
						"type" : "success"
					});
					//修改用户状态
					justep.Shell.userAut.set(data.val("fAut"));
					justep.Shell.userName.set(userName);
					justep.Shell.Name.set(data.val("fName"));
					localStorage.removeItem("msUserUUID");
					//把用户数据存储到本地缓存上
					var user = {};
					user.userAut = data.val("fAut");
					user.userName  = userName || "NONAME";
					user.Name  = data.val("fName");
					localStorage.setItem("msUserUUID", JSON.stringify(user));
					justep.Shell.showPage("CheckMspage");
					this.comp("window").close();
					
				}else {
					justep.Util.hint("用户名或密码有误 或 该用户没有权限！", {
						"type" : "danger"
					});
				}
				
		} else {
			justep.Util.hint("该用户没有权限", {
					"type" : "danger"
			});
		}
	};
	
	
	return Model;
});
