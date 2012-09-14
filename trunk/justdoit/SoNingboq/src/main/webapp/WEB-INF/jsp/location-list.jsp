<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Dashboard - Admin Template</title>
<link rel="stylesheet" type="text/css" href="/css/template/theme.css" />
<link rel="stylesheet" type="text/css" href="/css/template/style.css" />

<!-- CSS Imports-->
<link rel="stylesheet" type="text/css" media="screen"
	href="/css/jquery/redmond/jquery-ui-1.8.23.custom.css" />
<link rel="stylesheet" type="text/css" media="screen"
	href="/css/jqgrid/ui.jqgrid.css" />
<link rel="stylesheet" type="text/css" media="screen"
	href="/css/main/main.css" />

<!-- JS Imports -->
<script type="text/javascript" src="/js/jquery/jquery-1.5.2.min.js"></script>
<script type="text/javascript"
	src="/js/jquery/jquery-ui-1.8.12.custom.min.js"></script>
<script type="text/javascript" src="/js/datejs/date.js"></script>
<script type="text/javascript" src="/js/jqgrid/grid.locale-en.js"></script>
<script type="text/javascript" src="/js/jqgrid/jquery.jqGrid.min.js"></script>
<script>
	var StyleFile = "theme" + document.cookie.charAt(6) + ".css";
	document
			.writeln('<link rel="stylesheet" type="/text/css" href="/css/template/' + StyleFile + '">');
</script>
<!--[if IE]>
<link rel="stylesheet" type="text/css" href="/css/template/ie-sucks.css" />
<![endif]-->
</head>

<body>
	<div id="container">
		<!-- Loading header start-->
		<%@ include file="/common/header.jsp"%>
		<!-- loading header end -->
		<!-- Loading Second Menu start -->
		<%@ include file="/common/head-menu.jsp"%>
		<!-- Loading Second Menu end -->

		<div id="wrapper">

			<!-- Loading right Menu start -->
			<%@ include file="/common/content.jsp"%>
			<!-- Loading right Menu end -->

			<!-- Loading right Menu start -->
			<%@ include file="/common/right.jsp"%>
			<!-- Loading right Menu end -->
		</div>


		<!-- Loading footer start -->
		<%@ include file="/common/footer.jsp"%>
		<!-- Loading footer end -->


	</div>
</body>
<!-- /admin/user/getAll -->
<script type="text/javascript">
	$(function() {
		$("#grid").jqGrid({
			url : '/admin/location/getAll',
			datatype : 'json',
			mtype : 'POST',
			autowidth: false, 
			height:'auto',
			multiselect: true,
			colNames : [ '位置名称', '位置地址', '位置电话', '经度', '维度','操作' ],
			colModel : [ {
				name : 'name_cn',
				index : 'name_cn',
				width : 40,
				editable : true
			}, {
				name : 'address_cn',
				index : 'address_cn',
				width : 40,
				editable : true
			},  {
				name : 'telephone',
				index : 'telephone',
				width : 40,
				editable : true
			}, {
				name : 'latitude',
				index : 'latitude',
				width : 40
			}, {
				name : 'longitude',
				index : 'longitude',
				width : 40
			} ,{
				name : 'CheckData',
				index : 'id',
				width : 60,
				editable : false,
				align:'center',
				sortable:false
			}],
			page:1,
			rowNum : 20,
			rowList : [ 10, 20, 30 ],
			autowidth : true,
			rownumbers : true,
			pager : '#pager',
			sortname : 'id',
			viewrecords : true,
			sortorder : "asc",
			caption : "位置管理",
			emptyrecords : "Empty records",
			loadonce : false,
			jsonReader : {
				root : "rows",
				page : "page",
				total : "total",
				records : "records",
				repeatitems : false,
				cell : "cell",
				id : "id"
			},gridComplete:function(){
				  var ids=jQuery("#grid").jqGrid('getDataIDs');
                  for(var i=0; i<ids.length; i++){
                      var id=ids[i];   
                      appover = "<a href='#' style='color:#f60' onclick='checkData(" + id + ")'>审核</a>"; 
                      jQuery("#grid").jqGrid('setRowData', ids[i], { CheckData: appover });
                  }
			}
		});

		$("#grid").jqGrid('navGrid', '#pager', {
			edit : false,
			add : false,
			del : false,
			search : true
		}, {}, {}, {}, {
			sopt : [ 'eq', 'ne', 'lt', 'gt', 'cn', 'bw', 'ew' ],
			closeOnEscape : true,
			multipleSearch : true,
			closeAfterSearch : true
		});

		$("#grid").navButtonAdd('#pager', {
			caption : "添加",
			buttonicon : "ui-icon-plus",
			onClickButton : addRow,
			position : "top",
			title : "",
			cursor : "pointer"
		});

		$("#grid").navButtonAdd('#pager', {
			caption : "编辑",
			buttonicon : "ui-icon-pencil",
			onClickButton : editRow,
			position : "top",
			title : "",
			cursor : "pointer"
		});

		$("#grid").navButtonAdd('#pager', {
			caption : "删除",
			buttonicon : "ui-icon-trash",
			onClickButton : deleteRow,
			position : "top",
			title : "",
			cursor : "pointer"
		});

	});

	function addRow() {
		alert("add");
	}
	function editRow() {
		alert("edit");
	}
	function deleteRow() {
		alert("delete");
	}
	
	function checkData(ids){
		alert(ids);
	}
</script>
</html>
