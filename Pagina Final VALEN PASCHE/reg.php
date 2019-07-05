<!DOCTYPE html>
<html>
<head>
	<link type="text/css" href="registro.css" rel="stylesheet">
	<link rel="icon" type="image/gif/png" href="nvico.ico">
	<script type="text/javascript" src="validaciones.js"></script>
	<title>login</title>
</head>
<body onkeypress="PCWin(event)" onload="pageLoad()">
	<div id="top-wrapper" >
		<div id="banner" class="top-header">
			<div class="top-header-wrap">
				<h1 id="product-tag"></h1>
			</div>
		</div>
	<div class="loginBox">
			<div id="noteDiv">
				<p id="note"></p>
		</div>
		<div class="panelThre" align="center">
			<div align="center" class="picDiv" align="center">
				<ul style="padding-top: 0px;">
					<img src="nvpro.png"/>
					<li id="unLi" class="unLi"><input class="text" id="userName" type="text" maxlength="15" placeholder="Usuario" name="usuario" /></li>
					<li class="blank"></li>
					<li id="pwLi" class="pwLi"><input class="text" id="pcPassword" type="password" maxlength="15" placeholder="Contraseña" onblur="contrasenia(this)" /></li>
					<li class="blank"></li>
					<li id="pwLi" class="pwLi"><input class="text" id="pcPassword" type="password" maxlength="15" placeholder="Confirme contraseña" onblur="validacontrasenia(this)" name="pswd" /></li>
					<li class="blank"></li>
					<li id="pwLi" class="pwLi"><input class="text" id="userName" type="text" maxlength="15" placeholder="Nombre" name="nombre" /></li>
					<li class="blank"></li>
					<li id="pwLi" class="pwLi"><input class="text" id="userName" type="text" maxlength="15" placeholder="Apellido" /></li>
					<li class="blank"></li>
					<li id="pwLi" class="pwLi"><input class="text" id="userName" type="text" maxlength="15" placeholder="Numero de Telefono" onblur="validatel(this)"/></li>
					<li class="blank"></li>
					<li id="pwLi" class="pwLi"><input class="text" id="mail" type="text" maxlength="15" placeholder="E-mail" onblur="validaMail(this)" /></li>
					<li class="blank"></li>
				</ul>
				<input type="submit" value="Registrarse" onclick= "validacionTotal()"/>
				<a id="copyright" href="login.html"> Loguee aquí</a>
				</div>
			</div>
		</div>
	</div>
	</div>
	
	<form action="/userRpm/LoginRpm.htm" method="post" id="loginForm" enctype="multipart/form-data">
	    <input type="hidden" value="Save" name="Save" />    
	</form>






<?php
        $con=mysqli_connect("localhost","root","","users");
        // Check connection
        if (mysqli_connect_errno())
              {
              echo "Failed to connect to MySQL: " . mysqli_connect_error();
              }
      ?>
</body>
</html>