define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');
	
	var Model = function(){
		this.callParent();
		
		var shellImpl = new ShellImpl(this, {
			contentsXid : "pages",
			pageMappings : {
				"mslogin" : {
					url : require.toUrl("./msLogin.w")
				},
				"CheckMspage" : {
					url : require.toUrl("./CheckMspage.w")
				},
				"msUserpage" : {
					url : require.toUrl("./msUserpage.w")
				}
			}
		});
	};

	Model.prototype.modelLoad = function(event){
		justep.Shell.userAut = justep.Bind.observable();
		justep.Shell.userName = justep.Bind.observable();
		justep.Shell.Name = justep.Bind.observable();
		var userLocal = (localStorage.getItem("msUserUUID") && JSON.parse(localStorage.getItem("msUuserUUID"))) || null;
		if (userLocal) {
			justep.Shell.userAut.set(userLocal.userAut || "NULL");
			justep.Shell.userName.set(userLocal.userName || "NULL");
			justep.Shell.Name.set(userLocal.Name || "NULL");
			justep.Shell.showPage("CheckMspage");
		} else {
			this.comp("windowDialog1").open({
				"data" : {
					"operate" : "mslogin"
				}
			});
		}
	};
	
	//注销按钮事件
	Model.prototype.logoutBtnClick = function(event){
		if (!confirm("确定要注销用户：" + justep.Shell.userName.get() + "吗？")) {
			return;
		}
		justep.Shell.userAut.set("");
		justep.Shell.userName.set("");
		localStorage.removeItem("msUserUUID");
		justep.Util.hint("注销成功");
		location.reload();
		setTimeout(function() {
			justep.Shell.showPage("mslogin");
		}, 5000);
	};


	Model.prototype.checkListClick = function(event){
		justep.Shell.showPage("CheckMspage");
	};


	Model.prototype.msUserClick = function(event){
		justep.Shell.showPage("msUserpage");
	};


	return Model;
});