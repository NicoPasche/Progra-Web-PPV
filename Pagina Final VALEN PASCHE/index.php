<!DOCTYPE html>
<html>
<head>
	<title>N&V Propiedades</title>
	<link rel="icon" type="image/gif/png" href="nvico.ico">
	<link rel="stylesheet" type="text/css" href="index.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script type="text/javascript" src="test.js"></script>
	<script type="text/javascript" src="idx.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/> 
</head>
<body>
<!-- Start Header Area -->
			
			<header class="default-header">
				<?php
				session_start();
				if ( isset( $_SESSION['userid'] ) ) 
				{
				?>
					<div class="topnav2">
  					<a class="active" href="index.html">Home</a>
  					<a href="vender.html">Publicar</a>
  					<div class="login-container">
    				<form action="/action_page.php">
      					
      					<p><a href="perfil.html" onclick="centeredPopup(this.href,'myWindow','1000','600','yes');return false">Perfil</a></p>
    				</form>
  					</div>
				</div>
				<img src="img/nvpro.png" id="logo">
				<?php					
				} 
				else 
				{
				?>

					<div class="topnav2">
  					<a class="active" href="index.html">Home</a>
  					<div class="login-container">
    				<form action="/action_page.php">
      					
      					<p><a href="login.html" onclick="centeredPopup(this.href,'myWindow','1000','600','yes');return false">Iniciar sesión</a>
      					  	<a href="reg.php" onclick="centeredPopup(this.href,'myWindow','1000','900','yes');return false">Registrarse</a></p>
    				</form>
  					</div>
				</div>
				<img src="img/nvpro.png" id="logo">
				<?php
				}
				?>


				

			</header>
<!-- End Header Area -->

<!--Formulario de busqueda-->
	<div class="overlay">
		<div class="search-field" style="height: 500px;">
			<form class="search-form">
				<div class="titulo">Buscar propiedades:


				</div>

				<div class="ubicacion">
					<select name="location" class="select1"  on required>
						<option data-display="Choose locations" selected="" disabled="">Ubicacion</option>
									<option>Almagro</option>
									<option>Balvanera</option>
									<option>Barracas</option>
									<option>Belgrano</option>
									<option>Boedo</option>
									<option>Caballito</option>
									<option>Colegiales</option>
									<option>Constitución</option>
									<option>Flores</option>
									<option>Floresta</option>
									<option>La Boca</option>
									<option>La Paternal</option>
									<option>Liniers</option>
									<option>Mataderos</option>
									<option>Núñez</option>
									<option>Palermo</option>
									<option>Parque Avellaneda</option>
									<option>Parque Patricios</option>
									<option>Puerto Madero</option>
									<option>Recoleta</option>
									<option>Retiro</option>
									<option>Saavedra</option>
					</select>
				</div>

				<div class="tipo">
					<select name="property-type" class="select1" required>
						<option data-display="Property Type" selected="" disabled="">Tipo de Propiedad</option>
						<option value="1">Casa</option>
						<option value="2">Departamento</option>
					</select>
				</div>

				<div class="habitaciones">
					<select name="bedroom" class="select1" required>
						<option data-display="Bedrooms" selected="" disabled="">Habitaciones</option>
						<option value="1">Una</option>
						<option value="2">Dos</option>
						<option value="3">Tres</option>
						<option value="4">Cuatro</option>
						<option value="5">Cinco</option>
						<option value="6">Seis</option>
					</select>
				</div>

				<div class="range" id="precio">
					<p>Valor Maximo: <span id="demo1">50000</span></p>
					<input type="range" id="range1" value="50000" name="range2" min="1" max="100000" class="rango" oninput="sl()" />
				</div>												    
				<div class="boton-busqueda">
					<button onclick="" class="buscar" style="height: 55px;"><span class="txtbuscar">Buscar Propiedades</span></button>
				</div>
			</form>
		</div>
	</div>
	 
		<section class="about-area">
				<div class="container-fluid">
					<div class="row d-flex justify-content-end align-items-center">
						<div class="info">
							<div class="txt-info">
								<h4 class="h-inf">¿Por qué elegirnos?</h4>
								<p>
									Actualmente somos la mejor inmobiliria en 22 provincias dando servicios a todos y todas
								</p>
							</div>
							<div class="single-about pb-30">
								<h4 class="h-inf">Nuestras Propiedades</h4>
								<p>
									Tenemos una amplia variedad de propiedades tanto a la venta como para alquilar
								</p>
							</div>
							<div class="single-about">
								<h4 class="h-inf">Aviso Legal</h4>
								<p>
									No copie nuestra pagina, todo derecho de autor es reservado por dichos creadores de esta página. Cualquier consulta hable con nuestro abogado (15-321-72-611)
								</p>
							</div>																
						</div>			
						<div class="caja-img">
							<img class="img-fluid" src="img/about-img.jpg" alt="">
						</div>			
					</div>
				</div>	
			</section>
			<!-- End About Area -->
			<!-- Start contact-info Area -->
			<section class="contact-info-area">
				<div class="contacto">
					<div class="row">
						<div class="single-info1">
							 <h4 id="visit">Visite Nuestra Oficina</h4>
							 <p>
							 	Avenida 25 de mayo,buenos aires, argentina<br>
							 </p>                                   
						</div>
						<div class="single-info2">
							 <h4 id="call">Llámenos</h4>
							 <p>
								Telefono 1: 012-6532-568-9746 <br>
								Telefono 2: 012-6532-568-9748 <br>
								FAX: 02-6532-568-746
							 </p>                                   
						</div>
						<div class="single-info3">
							 <h4 id="emailus">Envienos un Email</h4>
							 <p>
								hello@nvpropiedades.com <br>
								mainhelpinfo@nvpropiedades.com <br>
								infohelp@nvpropiedades.com
							 </p>                                   
						</div>
						<div class="single-info4">
							 <h4 id="cust">Atención al Cliente</h4>
							 <p>
							 	support@nvpropiedades.com <br>
								emergencysupp@nvpropiedades.com <br>
								extremesupp@nvpropiedades.com
							 </p>                                   
						</div>																		
					</div>
				</div>	
			</section>
			<!-- End contact-info Area -->
			<footer>
				<div class="social">
					<h6 class="folow">Seguinos en las Redes</h6>
								<div class="footer-social">
									<a href=""><img id="fb" src="img/facebook.png"></a>
									<a href=""><img id="insta" src="img/instagram.png"></a>
									<a href=""><img src="img/pinterest.png" id="pint"></a>
									<a href=""><img src="img/twitter.png" id="twitter"></a>
								</div>
				</div>
			</footer>

</body>
</html>