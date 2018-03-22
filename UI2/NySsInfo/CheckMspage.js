define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.addClick = function(event){

	};

	// 编辑信息
	Model.prototype.editCheckInfo = function(row) {
		this.comp("infoWindowDialog").open({
				"data" : {  
					"operate" : "edit",
					//将改行数据转成json在传过去
					"rowData": row.toJson()
				}
		});
	}
	
	//点击按钮编辑该列
	Model.prototype.editClick = function(event){
		var row = this.comp("checkData").getCurrentRow();
		this.editCheckInfo(row);
	};

	Model.prototype.deleteClick = function(event){
		
		if (!confirm("你确定要删除选中的数据？")) {
			return;
		}
		if (!confirm("请你再确认一次？")) {
			return;
		}
		var grid = this.comp("checkgrid");
		var rowIDs = grid.getCheckeds();//获取多选选中行的id.返回的是list数组
		var data = this.comp("checkData");
		var rows = [];   
		for(var i=0;i<rowIDs.length ; i++){//遍历多选选中的行id 
		     rows.push(data.getRowByID(rowIDs[i]));
		     if(rows.length > 0){
		    	 data.deleteData(rows);
		     }
		}
		data.saveData();
		
		
	};

	Model.prototype.selectClick = function(event){
		var text = this.getElementByXid('selectCondition').value;

		if (text != null && text != "") {
			this.comp('checkData').setFilter(
					"filter1",
					"dorm_check_list.fDormID like '%" + text + "%' or dorm_check_list.fCheckGrade like '%" + text + "%' or dorm_check_list.fCheckIllegal like '%" + text
					+ "%' or dorm_check_list.fCheckWorker like '%" + text+ "%' or dorm_check_list.fCheckRemark like '%" + text + "%'");

		} else {
			this.comp('checkData').filters.clear();
		}
		this.comp('checkData').refreshData();

	};
	
	
	
	//双击编辑该列
	Model.prototype.checkgridRowDblClick = function(event){
		var row = this.comp("checkData").getCurrentRow();
		this.editCheckInfo(row);
	};



	Model.prototype.infoWindowDialogReceived = function(event){
		this.comp("checkData").saveData();
		justep.Util.hint("信息新增或修改成功！");
	};


	Model.prototype.filterBtnClick = function(event){
		var date = this.getElementByXid("dataInput").value;
		if (date != null && date != "") {
			this.comp('checkData').setFilter(
					"filterDate",
					"dorm_check_list.fCheckDate like '%" + date + "%'");

		} else {
			this.comp('checkData').filters.clear();
		}
		this.comp('checkData').refreshData();
	};

//---------导出Excel表格-------------
	Model.prototype.outExcelBtnClick = function(event){
		this.comp("checkData").refreshData();
        var data = this.comp("checkData").toJson();
        var dataLabel = "宿舍号，检查时间，书桌物品摆放整齐，室内地面干净无垃圾，床上用品叠放整齐，门窗干净无灰尘，天花板、风扇干净无灰尘，阳台、厕所无污垢、异味，文明礼仪轮值表公约，检查总分数，评分等级，是否违规，违纪内容，记录人，检查小结";
        this.JSONToExcelConvertor(data.rows, "宿舍检查情况" + new Date().toLocaleString(), dataLabel.split('，'));
	};     
	      
	Model.prototype.JSONToExcelConvertor = function(JSONData, FileName, ShowLabel) {
                var tradeData = this.comp("checkData");
                // 先转化json
                var arrData = typeof JSONData != 'object' ? JSON.parse(JSONData) : JSONData;

                var excel = "<table width='100%' border='1' cellspacing='0' cellpadding='0' >";

                // 设置表头
                var row = "<tr style='text-align : center;' bgcolor = '#ADADAD'>";
                for (var i = 0, l = ShowLabel.length; i < l; i++) {
                        row += "<td>" + ShowLabel[i] + '</td>';
                }

                // 换行
                excel += row + "</tr>";

                // 设置数据
                for (i = 0; i < arrData.length; i++) {
                        row = "<tr bgcolor = '#FCFCFC'>";
                        var value = arrData[i]['fDormID'].value === "." ? "" : arrData[i]['fDormID'].value;
                        row += '<td style="mso-number-format:\'\\@\';">' + $.trim(value) + '</td>';
                        value = arrData[i]['fCheckDate'].value === "." ? "" : arrData[i]['fCheckDate'].value;
                        row += '<td style="mso-number-format:\'\\@\';">' + $.trim(value) + '</td>';
                        
                        value = arrData[i]['fCheckSZ'].value === "." ? "" : arrData[i]['fCheckSZ'].value;
                        row += '<td style="mso-number-format:\'\\@\';">' + $.trim(value) + '</td>';
                        value = arrData[i]['fCheckWS'].value === "." ? "" : arrData[i]['fCheckWS'].value;
                        row += '<td style="mso-number-format:\'\\@\';">' + $.trim(value) + '</td>';
                        value = arrData[i]['fCheckCS'].value === "." ? "" : arrData[i]['fCheckCS'].value;
                        row += '<td style="mso-number-format:\'\\@\';">' + $.trim(value) + '</td>';
                        value = arrData[i]['fCheckHC'].value === "." ? "" : arrData[i]['fCheckHC'].value;
                        row += '<td style="mso-number-format:\'\\@\';">' + $.trim(value) + '</td>';
                        value = arrData[i]['fCheckTF'].value === "." ? "" : arrData[i]['fCheckTF'].value;
                        row += '<td style="mso-number-format:\'\\@\';">' + $.trim(value) + '</td>';
                        value = arrData[i]['fCheckYC'].value === "." ? "" : arrData[i]['fCheckYC'].value;
                        row += '<td style="mso-number-format:\'\\@\';">' + $.trim(value) + '</td>';
                        value = arrData[i]['fCheckWM'].value === "." ? "" : arrData[i]['fCheckWM'].value;
                        row += '<td style="mso-number-format:\'\\@\';">' + $.trim(value) + '</td>';
                        
                        value = arrData[i]['fCheckScore'].value === "." ? "" : arrData[i]['fCheckScore'].value;
                        row += '<td style="mso-number-format:\'\\@\';">' + $.trim(value) + '</td>';
                        value = arrData[i]['fCheckGrade'].value === "." ? "" : arrData[i]['fCheckGrade'].value;
                        row += '<td style="mso-number-format:\'\\@\';">' + $.trim(value) + '</td>';
                        value = arrData[i]['fCheckillFlag'].value === "." ? "" : arrData[i]['fCheckillFlag'].value;
                        row += '<td style="mso-number-format:\'\\@\';">' + $.trim(value) + '</td>';
                        value = arrData[i]['fCheckIllegal'].value === "." ? "" : arrData[i]['fCheckIllegal'].value;
                        row += '<td style="mso-number-format:\'\\@\';">' + $.trim(value) + '</td>';
                        value = arrData[i]['fCheckWorker'].value === "." ? "" : arrData[i]['fCheckWorker'].value;
                        row += '<td style="mso-number-format:\'\\@\';">' + $.trim(value) + '</td>';
                        value = arrData[i]['fCheckRemark'].value === "." ? "" : arrData[i]['fCheckRemark'].value;
                        row += '<td style="mso-number-format:\'\\@\';">' + $.trim(value) + '</td>';

                        excel += row + "</tr>";
                }

                excel += "</table>";

                var excelFile = "<html xmlns[img]http://bbs.wex5.com/static/image/smiley/default/shocked.gif[/img]='urn:schemas-microsoft-com[img]http://bbs.wex5.com/static/image/smiley/default/shocked.gif[/img]ffice[img]http://bbs.wex5.com/static/image/smiley/default/shocked.gif[/img]ffice' xmlns:x='urn:schemas-microsoft-com[img]http://bbs.wex5.com/static/image/smiley/default/shocked.gif[/img]ffice:excel' xmlns='http://www.w3.org/TR/REC-html40'>";
                excelFile += '<meta http-equiv="content-type" content="application/vnd.ms-excel; charset=UTF-8">';
                excelFile += '<meta http-equiv="content-type" content="application/vnd.ms-excel';
                excelFile += '; charset=UTF-8">';
                excelFile += "<head>";
                excelFile += "<!--[if gte mso 9]>";
                excelFile += "<xml>";
                excelFile += "<x:ExcelWorkbook>";
                excelFile += "<x:ExcelWorksheets>";
                excelFile += "<x:ExcelWorksheet>";
                excelFile += "<x:Name>";
                excelFile += "{worksheet}";
                excelFile += "</x:Name>";
                excelFile += "<x:WorksheetOptions>";
                excelFile += "<x[img]http://bbs.wex5.com/static/image/smiley/default/biggrin.gif[/img]isplayGridlines/>";
                excelFile += "</x:WorksheetOptions>";
                excelFile += "</x:ExcelWorksheet>";
                excelFile += "</x:ExcelWorksheets>";
                excelFile += "</x:ExcelWorkbook>";
                excelFile += "</xml>";
                excelFile += "<![endif]-->";
                excelFile += "</head>";
                excelFile += "<body>";
                excelFile += excel;
                excelFile += "</body>";
                excelFile += "</html>";

                var uri = 'data:application/vnd.ms-excel;charset=utf-8,' + encodeURIComponent(excelFile);

                var link = document.createElement("a");
                link.href = uri;
                link.style = "visibility:hidden";
                link.download = FileName + ".xls";

                document.body.appendChild(link);
                link.click();
                document.body.removeChild(link);
        };
//-------------------------------------------------------------------------------------------------



	
	

	return Model;
});