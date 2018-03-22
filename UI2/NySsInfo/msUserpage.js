define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.deleteClick = function(event){
		var data = this.comp("userData");
		var row = this.comp("userData").getCurrentRow();
		this.comp("userData").deleteData([ row ], {
			"async" : true,
			"onSuccess" : function() {
				data.saveData();
			}
		})
	};

	Model.prototype.editClick = function(event){
		var row = this.comp("userData").getCurrentRow();
		this.editUserInfo(row);
	};

	Model.prototype.grid1RowDblClick = function(event){
		var row = this.comp("userData").getCurrentRow();
		this.editUserInfo(row);
	};
	
	Model.prototype.editUserInfo = function(row) {
		this.comp("windowDialog1").open({
				"data" : {  
					"operate" : "edit",
					//将改行数据转成json在传过去
					"rowData": row.toJson()
				}
		});
	}

	Model.prototype.selectClick = function(event){
		var text = this.getElementByXid('selectCondition').value;

		if (text != null && text != "") {
			this.comp('userData').setFilter(
					"filter1",
					"dorm_ms_user.fUserName like '%" + text + "%' or dorm_ms_user.fDepartment like '%" + text + "%' or dorm_ms_user.fName like '%" + text+ "%' or dorm_ms_user.fAcademy like '%" + text + "%'");

		} else {
			this.comp('userData').filters.clear();
		}
		this.comp('userData').refreshData();
	};

	Model.prototype.windowDialog1Received = function(event){
		this.comp("userData").saveData();
		justep.Util.hint("修改成功！");
	};

	return Model;
});