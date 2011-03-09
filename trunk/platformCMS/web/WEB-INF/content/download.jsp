
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
		<%@ include file="/common/meta.jsp"%>
		<title>下载</title>
		<link type="text/css" href="css/ui.all.css" rel="stylesheet" />
		<link type="text/css" href="css/login.css" rel="stylesheet" />
		<link type="text/css" rel="stylesheet" href="css/style2.css" />
		<link type="text/css" rel="stylesheet" href="css/download.css" />
		<!--[if lte IE 6]>
		<link rel="stylesheet" type="text/css" href="css/navHankIE6.css" />
		<![endif]-->
		<!--[if IE 7]>
		<link rel="stylesheet" type="text/css" href="css/navHankIE7.css" />
		<![endif]-->
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/ui.core.js"></script>
		<script type="text/javascript" src="js/ui.dialog.js"></script>
		<script type="text/javascript" src="js/jquery.bgiframe.min.js"></script>
		<script type="text/javascript" src="js/userlogin.js"></script>
		<script type="text/javascript" src="js/slide.js"></script>
		<script type="text/javascript">
		function resourceSearch(){
			 var resourceName = document.resourcesearch.searchResourceName.value;
			 if(resourceName.length<1){
		   	 alert("请您输入要搜索的下载内容");
		    }else{
		        document.resourcesearch.submit();
		    }
		}
		</script>
	</head>
	<body>
		<%@ include file="/common/userlogin.jsp" %>
		<!-- top -->
	<div class="container">
		<div id="top">
			<!-- 顶部的容器 -->
			<div class="headernb">
				<!-- 放logo的地方 -->
				<div class="jhlogo">
					<a href="${ctx}">
						<img src="images/logo.gif" alt="这里写公司的信息，方便搜索引擎搜索" />
					</a>
				</div>
			    <div class="dibunav">
			      <div class="riqi"><script type="text/javascript" src="js/time.js"></script></div>
			      <div class="topnav">
			        <ul>
			        	<li><a href="news"><span>_资讯</span></a></li>
						<li><a href="person"><span>_人物</span></a></li>
						<li><a href="${ctx}/show?showCategory.id=56&isNewsVote=all"><span>_秀场</span></a></li>
						<li><a href="special"><span>_专题</span></a></li>
						<li><a href="circle"><span>_圈网</span></a></li>
						<li><a href="download"><span class="selectNav">_下载</span></a></li>
						<li><a href="circle-web.action"><span>_江湖</span></a></li>
						<li><a href="#"><span>_商店</span></a></li>
						<li><a href="#"><span>_书店</span></a></li>	
			        </ul>
			      </div>
			    </div>
				<!-- 搜索容器 -->
				<div class="zuonav">
				 	<div class="youdh">
					<ul>
					  <s:if test='userName != "roleAnonymous" && userName != null'>
					 	 <li><a href="${ctx}/j_spring_security_logout">退出</a></li>
					  </s:if>
					  <s:else>
					  	<li id="linkreg" ><a href="javascript:toregister();"><span>注册</span></a></li>
					  </s:else>
					  
					  <s:if test='userName != "roleAnonymous" && userName != null'>
					  	 <li id="linkreg" ><a href="blog/member-home.action"><span style="font-weight: bold;color: #83C325;">${member.name}'s blog</span> </a>&nbsp;&nbsp;|</li>
					  </s:if>
					  <s:else>
					  <li id="logout_login"><a href="#" onclick="showLogin();">登录&nbsp;&nbsp;|</a></li>
					  </s:else>
					  <li id="site_home"><a href="${ctx}">首页&nbsp;&nbsp;|</a></li>
					</ul>
					</div>
					<div class="ss">
						<form action="${ctx }/searcharticle.action" name="searchnews" method="post">
                        	<input type="text" name="newsContent"  class="indexss"/>
                        	<input name="biaoqian" type="button" class="bianqianan" onclick="searchNews()"/>
                       </form>
                    </div>
				</div>
			</div>
			<!-- 导航条 -->
			<div class="hd">
			    <div class="navbh">
			      <ul>
			        <li><a href="#"><span>_抢先看</span></a></li>
						<li><a href="#"><span>_色女朗</span></a></li>	
						<li><a href="#"><span>_LOGO</span></a></li>	
						<li><a href="#"><span>_图库</span></a></li>	
						<li><a href="#"><span>_招聘</span></a></li>	
						<li><a href="#"><span>_杂志</span></a></li>	
						<li><a href="#"><span>_博客</span></a></li>	
						<li><a href="#"><span>_论坛</span></a></li>	
						<li><a href="#"><span>_群英会</span></a></li>
                        <li><a href="#"><span>_标签TAG</span></a></li>	
                        <li><a href="#"><span>_平面</span></a></li>	
                        <li><a href="#"><span>_创意</span></a></li>	
                        <li><a href="#"><span>_卡通</span></a></li>	
                        <li><a href="#"><span>_影像</span></a></li>
			      </ul>
			    </div>
			  </div>
			<div class="clean"></div>
		</div>
		<!-- content -->
		<div id="content">
			<div id="topBanner">
			<s:if test="adsArray.length>0">
					<s:if test="adsArray[0].type.name==1">
						<s:property value="adsArray[0].script" escapeJavaScript="false"/>
					</s:if><s:else>
						<a href="<s:property value='adsArray[0].url'/>" target="_blank">
						<img src="${ctx }<s:property value='adsArray[0].image'/>" height="100px" width="960px" alt="<s:property value='adsArray[0].description'/>" />
						</a>
					</s:else>
				</s:if>
			</div>
			
			<div id="postion">
				<p>
					<span>您的位置:首页&gt;下载&gt;</span>
				</p>
                <hr class="splitline"/>
			</div>
            
            <div id="downloadseach">
                <div id="downloadseach_logo">
                     <ul>
                         <li>Logo</li>
                         <li><a href="${ctx}/download?recommend=4&letter=a">_a</a><a href="${ctx}/download?recommend=4&letter=b">_b</a><a href="${ctx}/download?recommend=4&letter=c">_c</a><a href="${ctx}/download?recommend=4&letter=d">_d</a><a href="${ctx}/download?recommend=4&letter=e">_e</a><a href="${ctx}/download?recommend=4&letter=f">_f</a><a href="${ctx}/download?recommend=4&letter=g">_g</a></li>
						 	<li><a href="${ctx}/download?recommend=4&letter=h">_h</a><a href="${ctx}/download?recommend=4&letter=i">_i</a><a href="${ctx}/download?recommend=4&letter=j">_j</a><a href="${ctx}/download?recommend=4&letter=k">_k</a><a href="${ctx}/download?recommend=4&letter=l">_l</a><a href="${ctx}/download?recommend=4&letter=m">_m</a><a href="${ctx}/download?recommend=4&letter=n">_n</a></li>
						 	<li><a href="${ctx}/download?recommend=4&letter=o">_o</a><a href="${ctx}/download?recommend=4&letter=p">_p</a><a href="${ctx}/download?recommend=4&letter=q">_q</a><a href="${ctx}/download?recommend=4&letter=r">_r</a><a href="${ctx}/download?recommend=4&letter=s">_s</a><a href="${ctx}/download?recommend=4&letter=t">_t</a></li>
						 	<li><a href="${ctx}/download?recommend=4&letter=u">_u</a><a href="${ctx}/download?recommend=4&letter=v">_v</a><a href="${ctx}/download?recommend=4&letter=w">_w</a><a href="${ctx}/download?recommend=4&letter=x">_x</a><a href="${ctx}/download?recommend=4&letter=y">_y</a><a href="${ctx}/download?recommend=4&letter=z">_z</a></li>
                     </ul>
                       
                </div>
                
                <div id="downloadseach_image">
                     <ul>
                     <li>图库</li>
                     <li>&nbsp;</li>
                     <s:iterator value="type.child" status="stat">
                         <li><a href="${ctx}/download?type.id=${id}">_<s:property value="name"/></a></li>
                     </s:iterator>
                     </ul>
                        
                </div>
                <form action="downloadsearch.action" method="post" name="resourcesearch">
                <div id="downloadseach_seach">
                   <ul>
                         <li><input type="text" name="searchResourceName" class="indexss"  size="50"/></li>
                         <li><a href="javascript:resourceSearch()"><img src="images/seachbutton2.gif" alt="" /></a></li>
                    </ul>
                </div>
                </form>
                <div id="downloadseach_hr">
                  <hr class="splitline"/>
                </div>
                
            </div>
			
            <div id="maincontent">
                 <div id="listleft">
                        <ul>
							<li><a href="${ctx}/download"><span>ALL_查看全部</span></a></li>
							<li><span>&nbsp;</span></li>
							<li><a href="#"><span>Logo</span></a></li>
                            <li><span>&nbsp;</span></li>
							<li><a href="${ctx}/download?recommend=4&letter=a">_a</a><a href="${ctx}/download?recommend=4&letter=b">_b</a><a href="${ctx}/download?recommend=4&letter=c">_c</a><a href="${ctx}/download?recommend=4&letter=d">_d</a><a href="${ctx}/download?recommend=4&letter=e">_e</a><a href="${ctx}/download?recommend=4&letter=f">_f</a><a href="${ctx}/download?recommend=4&letter=g">_g</a></li>
						 	<li><a href="${ctx}/download?recommend=4&letter=h">_h</a><a href="${ctx}/download?recommend=4&letter=i">_i</a><a href="${ctx}/download?recommend=4&letter=j">_j</a><a href="${ctx}/download?recommend=4&letter=k">_k</a><a href="${ctx}/download?recommend=4&letter=l">_l</a><a href="${ctx}/download?recommend=4&letter=m">_m</a><a href="${ctx}/download?recommend=4&letter=n">_n</a></li>
						 	<li><a href="${ctx}/download?recommend=4&letter=o">_o</a><a href="${ctx}/download?recommend=4&letter=p">_p</a><a href="${ctx}/download?recommend=4&letter=q">_q</a><a href="${ctx}/download?recommend=4&letter=r">_r</a><a href="${ctx}/download?recommend=4&letter=s">_s</a><a href="${ctx}/download?recommend=4&letter=t">_t</a></li>
						 	<li><a href="${ctx}/download?recommend=4&letter=u">_u</a><a href="${ctx}/download?recommend=4&letter=v">_v</a><a href="${ctx}/download?recommend=4&letter=w">_w</a><a href="${ctx}/download?recommend=4&letter=x">_x</a><a href="${ctx}/download?recommend=4&letter=y">_y</a><a href="${ctx}/download?recommend=4&letter=z">_z</a></li>
                            <li><span>&nbsp;</span></li>
							<li><a href="#"><span>图库</span></a></li>
                            <li><span>&nbsp;</span></li>
							<s:iterator value="type.child" status="stat">
		                         <li><a href="${ctx}/download?type.id=${id}">_<s:property value="name"/></a></li>
		                     </s:iterator>
							<li><span>&nbsp;</span></li>
							<li><a href="${ctx}/download?recommend=1"><span>UP_特别推荐</span></a></li>
							<li><span>&nbsp;</span></li>
							<li><a href="${ctx}/download?recommend=2"><span>NEWS_最新发布</span></a></li>
							<li><span>&nbsp;</span></li>
							<li><a href="${ctx}/download?recommend=3"><span>VOTE_人气排行</span></a></li>
							<li><span>&nbsp;</span></li>
							
						</ul>
                 </div>
                 
                 <div id="listcenter">
                         <div class="tabshow_title">
                            <h3>下载_<a href="${ctx}/download">显示全部</a>_<a href="${ctx}/download?recommend=1">特别推荐</a></h3>
                            <ul>
                                <li><span></span></li>
                                <li><span></span></li>
                            </ul>
                        </div>
                        <div id="case_show">
                                <div id="case_show_content">
                                <s:iterator value="page.result">
                                     <div id="case_show_content_detalied">
                                           <a class="coverBg" href="${ctx}/downloadcontent.action?resource.id=${id}&&type.id=${type.id}">READ MORE<p>(查看全部)</p></a>
                                           <s:if test="uri!=null && uri!=''">
                                           	<img src="${ctx}${uri}"  height="140px" width="140px"/>
                                           </s:if><s:else>
                                           <img src="images/hot_essay.jpg" /></s:else>
                                           <p>&nbsp;</p>
                                           <h3>${name }</h3>
                                           <p>${type.name}</p>
                                           <p>TAG:<ouun:articletag href="#" value="${tag}" /></p>
                                     </div>
                                 </s:iterator>    
                                </div>
                        </div>
                       <div style="width: 600px;padding-top: 20px;padding-left: 20px;">
                                	  第${page.pageNo}页, 共${page.totalPages}页 
						<s:if test="page.hasPre">
							<a href="${ctx}/download?page.pageNo=${page.prePage}&page.orderBy=${page.orderBy}&page.order=${page.order}&recommend=${recommend}&type.id=${type.id}&letter=${letter}">上一页</a>
						</s:if>
						<ouun:pageNum totalPages="${page.totalPages}" pageNo="${page.pageNo}" url="download.action?page.orderBy=${page.orderBy}&page.order=${page.order}&recommend=${recommend}&type.id=${type.id}&letter=${letter}&page.pageNo=" />
						<s:if test="page.hasNext">
							<a href="${ctx}/download?page.pageNo=${page.nextPage}&page.orderBy=${page.orderBy}&page.order=${page.order}&recommend=${recommend}&type.id=${type.id}&letter=${letter}">下一页</a>
						</s:if>
                       </div>
                 </div>
                 
                 <div id="listright">
                    <div>
                    	<s:if test="adsArray.length>1">
					<s:if test="adsArray[1].type.name==1">
						<s:property value="adsArray[1].script" escapeJavaScript="false"/>
					</s:if><s:else>
						<a href="<s:property value='adsArray[1].url'/>" target="_blank">
						<img src="${ctx }<s:property value='adsArray[1].image'/>" height="600px" width="160px" alt="<s:property value='adsArray[1].description'/>" />
						</a>
					</s:else>
				</s:if>
                    </div>
                 </div>
            </div>
            			
			<div class="clean"></div>
			
        <div class="clean"></div>
            <div id="contentFoot_1">
                 <div id="contentFoot_1_banner">
                 <s:if test="adsArray.length>2">
					<s:if test="adsArray[2].type.name==1">
						<s:property value="adsArray[2].script" escapeJavaScript="false"/>
					</s:if><s:else>
						<a href="<s:property value='adsArray[2].url'/>" target="_blank">
						<img src="${ctx }<s:property value='adsArray[2].image'/>" height="100px" width="765px" alt="<s:property value='adsArray[2].description'/>" />
						</a>
					</s:else>
				</s:if><s:else>
                      <img  src="images/download_banner.jpg"/>
                      </s:else>
                 </div>
                 
                 <div id="contentFoot_1_author">
                         <h2>Signed_设计圈签约作者_more</h2>
                          <div>
                            <ul>
                                <li><a href="#" alt=""><img src="images/renwu.jpg" alt="用户名" /></a></li>
                                <li><a href="#" alt=""><img src="images/renwu.jpg" alt="用户名" /></a></li>
                                <li><a href="#" alt=""><img src="images/renwu.jpg" alt="用户名" /></a></li>
                                <li><a href="#" alt=""><img src="images/renwu.jpg" alt="用户名" /></a></li>
                                <li><a href="#" alt=""><img src="images/renwu.jpg" alt="用户名" /></a></li>
                                <li><a href="#" alt=""><img src="images/renwu.jpg" alt="用户名" /></a></li>
                                <li><a href="#" alt=""><img src="images/renwu.jpg" alt="用户名" /></a></li>
                                <li><a href="#" alt=""><img src="images/renwu.jpg" alt="用户名" /></a></li>
                                <li><a href="#" alt=""><img src="images/renwu.jpg" alt="用户名" /></a></li>
                                <li><a href="#" alt=""><img src="images/renwu.jpg" alt="用户名" /></a></li>
                            </ul>    
                         </div>
                 </div>
                 
                 <div id="contentFoot_1_org">
                         <h2>Thanks_特别鸣谢摄影机构_more</h2>
                          <div>
                            <ul>
                                <li><a href="#" alt=""><img src="images/renwu.jpg" alt="用户名" /></a></li>
                                <li><a href="#" alt=""><img src="images/renwu.jpg" alt="用户名" /></a></li>
                                <li><a href="#" alt=""><img src="images/renwu.jpg" alt="用户名" /></a></li>
                                <li><a href="#" alt=""><img src="images/renwu.jpg" alt="用户名" /></a></li>
                                <li><a href="#" alt=""><img src="images/renwu.jpg" alt="用户名" /></a></li>
                                <li><a href="#" alt=""><img src="images/renwu.jpg" alt="用户名" /></a></li>
                                <li><a href="#" alt=""><img src="images/renwu.jpg" alt="用户名" /></a></li>
                            </ul>    
                         </div>
                 </div>
            </div>
        <div id="bannerFour">
        <s:if test="adsArray.length>3">
					<s:if test="adsArray[3].type.name==1">
						<s:property value="adsArray[3].script" escapeJavaScript="false"/>
					</s:if><s:else>
						<a href="<s:property value='adsArray[3].url'/>" target="_blank">
						<img src="${ctx }<s:property value='adsArray[3].image'/>" height="100px" width="960px" alt="<s:property value='adsArray[3].description'/>" />
						</a>
					</s:else>
				</s:if>
        </div>
		<!-- foot -->
			<%@ include file="/common/foot.jsp"%>
		</div>
	</div>
	</body>
</html>