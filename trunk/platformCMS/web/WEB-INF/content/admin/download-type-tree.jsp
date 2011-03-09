<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link href="css/admin.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="../css/jquery.treeview.css" />
<link rel="stylesheet" href="../css/screen.css" />

<script src="../js/jquery.js" type="text/javascript"></script>
<script src="../js/jquery.cookie.js" type="text/javascript"></script>
<script src="../js/jquery.treeview.js" type="text/javascript"></script>
<script type="text/javascript">
		$(function() {
			$("#tree").treeview({
				collapsed: true,
				animated: "medium",
				control:"#sidetreecontrol",
				persist: "location",
				unique: true
			});
		})
		
	</script>
</head>
<body class="lbody">
<div id="main">
	<h1>下载分类</h1>
	<hr>
	<ul id="tree" class="filetree">
		<li><a target="rightFrame" href="${action }"><span class="folder">根栏目</span></a>
			<ul>
				<ouun:downloadtype_tree value="${tree}" action="${action}" param="${actionParam}"/>
			</ul>
		</li>
		<li><span class="file">[<a href="download-type!tree.action?action=${action }&actionParam=${actionParam }">刷新栏目</a>]</span></li>
	</ul>
</div>
</body>
</html>