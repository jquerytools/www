<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/WEB-INF/flowplayer.tld" prefix="f" %>
<%@ taglib uri="http://piimaa.org/jtags" prefix="j" %>
<%@ page import="org.jtools.JMap" %>


<%-- get demo pages into "demos" application context variable --%>
<c:if test="${metadata == null || param.reload}">

	<c:set var="json">
		{tools = [<%@ include file="tools.js" %>]}
	</c:set>
	<%
		String json = (String)pageContext.getAttribute("json");
		application.setAttribute("metadata", new JMap(json));
	%>
</c:if>


<%
	String path = request.getServletPath().split("/")[2].replace(".html", "");
	pageContext.setAttribute("isDoc",
		"documentation,search,tabs,tooltip,scrollable,overlay,toolbox,dateinput,rangeinput,validator,".indexOf(path +",") != -1
	);		
%>

<c:set var="isForum" value="${fn:contains(req.path, '/forum/')}"/>

	
<%-- demos --%>
<c:if test="${!empty req.demo}">

	<style>
		#right h2 {
			cursor:pointer;				
		}
	</style>
	
	<c:forEach items="${req.demo.category.categories}" var="cat" varStatus="i">

		<div class="box">
			<h2>${cat.title}</h2>

			<ul style="display:none">
				<c:forEach items="${cat.demos}" var="demo">
					<li> <a href="${jqt}/demos/${demo.path}">${demo.title}</a> </li>
				</c:forEach>
			</ul>

			<div class="clear"></div>
			 
		</div>	
	</c:forEach>	
	
	<a id="biglink" href="${jqt}/demos/index.html">
		&laquo; Demo Index
	</a>
	
	<!-- accordion setup -->
	<script>
		$("#right").tabs("#right ul", {tabs: 'h2', initialIndex: ${req.demo.category.index}});
		$("#right h2").eq(${req.demo.category.index}).addClass("active");
		$("#right a[href=" + location.pathname + "]").addClass("selected");
	</script>
	
	
</c:if>

<%-- documentation --%>
<c:if test="${isDoc}">

	<style>
			
		h3.cat {
			background:url(${cdn}${jqt}/img/jqt_sprite_small.jpg) no-repeat 0 0;
			padding:4px 0 5px 30px;
		}
		
		#cat-Form {
			background-position:0 -25px;	
		}
		
		#cat-Toolbox {
			background-position:0 -50px;		
		}
	</style>

	<c:if test="${!fn:contains(req.path, '/search.html')}">
		<script>$("#jqt4").addClass("active");</script>
	</c:if>	
	
	<a href="${jqt}/documentation/index.html" id="biglink">
		jQuery Tools 
		<strong>USER'S GUIDE</strong>
	</a>
	
	<div id="rightnav">
		<c:forEach items="${metadata.tools}" var="tool" varStatus="i" begin="1">
		
			<c:if test="${!empty tool.cat}">
				<h3 class="cat" id="cat-${fn:replace(tool.cat, ' tools', '')}">${tool.cat}</h3>
			</c:if>
	
			<c:if test="${empty tool.cat}">
				<a class="t ${!empty tool.plugin ? 'plugin' : ''}" href="${jqt}/${tool.www}">${tool.title}</a>
			</c:if>
				
		</c:forEach>
	</div>
		
</c:if>	

<c:if test="${fn:contains(req.path, '/release-notes')}">
	
	<div class="box">
	
		<h2>Release Notes</h2>
		
		<ul>
			<li><a href="${jqt}/release-notes/version-1.2.x.html">Version 1.2.X</a></li>
			<li><a href="${jqt}/release-notes/index.html">Version 1.2.0</a></li>  
			<li><a href="${jqt}/release-notes/version-1.1.2.html">Version 1.1.2</a></li>
			<li><a href="${jqt}/release-notes/version-1.1.1.html">Version 1.1.1</a></li>
			<li><a href="${jqt}/release-notes/version-1.1.0.html">Version 1.1.0</a></li>
			<li><a href="${jqt}/release-notes/version-1.0.X.html">Versions 1.0.X</a></li>
		</ul>		
	
		<div class="clear"></div>
		
	</div>
	
</c:if>

<%-- forum --%>
<c:if test="${isForum}">
	
	<div class="box" id="latestPosts">
	 
		<h2>Latest posts</h2> 
		
		<j:select size="5">
			SELECT
				Topic.id, title, Topic.modified, forumId, threadId, User.id userId, username, alias, email
			FROM 
				Topic, User 
			WHERE 
				Topic.userId = User.id
				AND forumId > 19
				AND forumId < 100				
			ORDER BY 
				id DESC
		</j:select>
		
		<ul>
			<c:forEach items="${rows}" var="row" varStatus="i">		
				<li>
					<a href="${jqt}/forum/${row.forumId}/${empty row.threadId ? row.id : row.threadId}#post-${row.id}">
						${row.title}					
						<span>${j:elapsed(row.modified)} by "${f:getName(row)}"</span>				
					</a>
				</li>
			</c:forEach>
		</ul>
	
		<div class="clear"></div>
		
	</div>
	
	<%-- the forums --%>
	<c:if test="${!fn:contains(req.path, '/forum/index.html')}">
		<div class="box">
		 
			<h2>Forum List</h2>  
		
			<ul>
				<c:forEach items="${forumNames2}" var="f">
					<li><a href="${jqt}/forum/${f.key}" id="forutabs/index.html?reload=truemLink${f.key}">${f.value}</a></li>
				</c:forEach>
			</ul>
			
			<div class="clear"></div>
			
		</div>
	</c:if>

	<script>
		$("#jqt5").addClass("active");
		$("#forumLink${param.forumId}").addClass("selected");
	</script>	   

</c:if>


<c:if test="${fn:contains(req.path, '/download')}">
	<img style="margin-left:16px" src="${jqt}/img/github-logo.png" alt="" />
	<img style="margin-left:10px" src="${jqt}/img/github.png" alt="" />

	<p>
		There are two jQuery Tools repositories on Github:
	</p>
	
	<p>
		<a href="http://github.com/jquerytools/jquerytools" class="external">jQuery Tools library</a>
		<a href="http://github.com/jquerytools/www" class="external">jQuery Tools website</a>
	</p>
	
	<p>
		If you want to contribute, please
		<a class="external" href="http://github.com/inbox/new/jquerytools">email me your thoughts on Github</a>
		and
		<a class="external" href="https://github.com/jquerytools/jquerytools/issues/new">open an issue</a>
		or
		<a class="external" href="http://help.github.com/pull-requests/">send a pull request</a>.
	</p>
	
</c:if>

<script>
$("#right a[href=${req.path}]").addClass("active"); 
</script>

	
<p style="text-align:center;margin:30px 40px 30px 0">
	<a style="font-size:10px;color:#666" 
		href="https://github.com/jquerytools/jquerytools/issues">report a bug &raquo;</a>
</p>

<a href="${jqt}/release-notes/index.html">
	<img src="${cdn}${jqt}/img/1.2/banner-small.jpg" 
		style="margin-left:10px"
		alt="Introducing jQuery Tools 1.2" /></a>
		
 
<p style="margin:15px 0 0 22px">
	<a style="font-size:11px;color:#333"
		href="${jqt}/release-notes/version-1.2.x.html">What's new in v${v.jqt} &raquo;</a>
</p>

