<!DOCTYPE html>

<html>

<!--
	This is a jQuery Tools standalone demo. Feel free to copy/paste.
	                                                         
	http://flowplayer.org/tools/demos/
	
	CSS files should not be referenced from flowplayer.org when in production.  

	Enjoy!
-->

<head>

	<title>jQuery Tools standalone demo</title>

	<!-- include the Tools -->
	<script src="/tools/download/combine/1.2.0/jquery.tools.min.js?select=full&debug=true"></script>

	<!-- standalone page styling (can be removed) -->
	<link rel="stylesheet" type="text/css" href="${cdn}${jqt}/css/standalone.css"/>
	
	<!-- dateinput styling -->
	<link rel="stylesheet" type="text/css" href="/tools-1.2.0/demos/dateinput/css/skin1.css"/>

</head>

<body> 

	<!-- HTML5 date input -->
	<input type="date" name="mydate" />
	
	<!-- make it happen -->
	<script>
	$(":date").dateinput();
	</script>  

</body>
</html>
