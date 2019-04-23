<!DOCTYPE html>
<html lang="en">
<%include 'header.gsp'%>
<body onload="prettyPrint()" >
<div id="wrap">

	<%include "menu.gsp"%>
	<div class="container">
	<div class="page-header">
		<h1>Blog</h1>
	</div>
	<%published_posts.each {post ->%>
		<a href="${post.uri}"><h1>${post.title}</h1></a>
		<p>${new java.text.SimpleDateFormat("dd MMMM yyyy", Locale.ENGLISH).format(post.date)}</p>
		<!--p>${post.body}</p-->
  	<%}%>
	
	<hr />
	
	<p>Older posts are available in the <a href="${content.rootpath}${config.archive_file}">archive</a>.</p>

</div>
<div id="push"></div>
</div>

<%include "footer.gsp"%>

</body>
</html>