define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');
	
	var Model = function(){
		this.callParent();
		
		var shellImpl = new ShellImpl(this, {
			contentsXid : "pages",
			wingXid : "wing",
			pageMappings : {
				"list" : {
					url : require.toUrl("./list.w")
				},
				"detail" : {
					url : require.toUrl("./detail.w")
				},
				"login" : {
					url : require.toUrl("./Login.w")
				},
				"about" : {
					url : require.toUrl("./aboutpage.w")
				},
				"login" : {
					url : require.toUrl("./myInfo.w")
				},
				"reguser" : {
					url : require.toUrl("./regmsuser.w")
				}
			}
		});
		
	};

	Model.prototype.modelUnLoad = function(event){
		justep.Shell.showPage("list");
	};
	
	Model.prototype.modelLoad = function(event){
		justep.Shell.userAut = justep.Bind.observable();
		justep.Shell.userName = justep.Bind.observable();
		justep.Shell.Name = justep.Bind.observable();
		var userLocal = (localStorage.getItem("userUUID") && JSON.parse(localStorage.getItem("userUUID"))) || null;
		if (userLocal) {
			justep.Shell.userAut.set(userLocal.userAut || "NULL");
			justep.Shell.userName.set(userLocal.userName || "NULL");
			justep.Shell.Name.set(userLocal.Name || "NULL");
			justep.Shell.showPage("list");
		} else {
			this.comp("windowDialog1").open({
				"data" : {
					"operate" : "login"
				}
			});
		}
		
	};

	Model.prototype.windowDialog1Received = function(event){
		justep.Shell.showPage("list");
	};

	Model.prototype.windowDialog1Load = function(event){
		
	};

	Model.prototype.aboutBtnClick = function(event){
		this.comp("windowDialog4").open({
			"data" : {
				"operate" : "new"
			}
		});
	};
	//注销按钮事件
	Model.prototype.logoutBtnClick = function(event){
		if (!confirm("确定要注销用户：" + justep.Shell.userName.get() + "吗？")) {
			return;
		}
		justep.Shell.userAut.set("");
		justep.Shell.userName.set("");
		localStorage.removeItem("userUUID");
		justep.Util.hint("注销成功");
		location.reload();
		setTimeout(function() {
			justep.Shell.showPage("main");
		}, 5000);
	};

	Model.prototype.myInfoClick = function(event){
		this.comp("windowDialog2").open({
			"data" : {
				"operate" : "new"
			}
		});
	};

	Model.prototype.userMsClick = function(event){
		if(justep.Shell.userAut.get()==2){
			this.comp("windowDialog3").open({
				"data" : {
					"operate" : "new"
				}
			});
		}else {
			justep.Util.hint("您没有权限查看，请联系管理员");
		}
		
	};

	Model.prototype.reguserBtnClick = function(event){
		this.comp("windowDialog5").open({
			"data" : {
				"operate" : "new"
			}
		});
	};

	return Model;
});