<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<title>Ultima Esperanza</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/styles.css">
	<link rel="stylesheet" href="css/sesion.css">
	<link rel="stylesheet" href="css/animacion.css">
	<link rel="stylesheet" href="css/menu.css">
	<link rel="stylesheet" href="css/informacion.css">
</head>
<body>
	<header id="cabecera">
		<div id="titulos">
			<div id="titulo">
				<h5>CLINICA</h5>
				<h1>ULTIMA ESPERANZA</h1>
			</div>
			<div id="sesion">
				<h4>INICIAR SESION</h4>
				<form action="validaSesion" method="post">
					<input type="text" required placeholder="Usuario" name='usuario' value='' class="in">
					<input type="password" required placeholder="Password" name='password' value='' class="in">
					<input type="submit" value="ENTRAR" class="entrar"><br>
					<a href="registrar.jsp"><input type="button" value="REGISTRARSE" class="entrar"></a>
				</form>
			</div>
		</div>
	</header>
	<nav id="menu">
		<div id="menuCenter">
			<div id="nav">
				<ul>
					<li><a href="index.jsp">INICIO</a></li>
					<li><a href="1.jsp">DESCRIPCION</a></li>
					<li><a href="2.jsp">EMPRESA DESTINADA</a></li>
					<li><a href="3.jsp">VENTAJAS Y DESVENTAJAS</a></li>
					<li><a href="#">ALCANCES</a></li>
					<li><a href="5.jsp">ANTES Y DESPUES</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div id="portada">
		<div id="im">
			<img src='imag-001.png' title="imagenes" alt="img01">
			<img src='imag-002.png' title="imagenes" alt="img02">
			<img src='imag-003.png' title="imagenes" alt="img03">
		</div>
	</div>
	
	<hr>
	<div id="contenido">
		<div id="articulos">
			<div id="articulosDiarios">

				<h3>ALCANCES DE LA POBLACIÓN</h3>
				<hr>
<h5></h5>
				<p>Todos las personas que cuenten con un celular, Tablet, computadora, entre otros aparatos electrónicos que cuente con internet podrá acceder al sistema de citas de la Clínica ultima Esperanza.</p>
 				
			</div>
			
			<div id="articulosDiarios">
				<h3>ALCANCE DE TIEMPO</h3>
				<hr>
<h5></h5>
				<p>Esta aplicación estará disponible las 24 horas.</p>
				
 			</div>
		</div>
	</div>
	<footer id="pie">
		<div id="pieCenter">
			<div id="masInformacion">
				<div class="menus">
					<h5>Corporativo</h5>
					<ul>
						<li><a href="#">Quiénes Somos</a></li>
						<li><a href="#">Bienvenida</a></li>
						<li><a href="#">Mision</a></li>
						<li><a href="#">Vision</a></li>
					</ul>
				</div>
				<div class="menus">
					<h5>Servicios Clinicos</h5>
					<ul>
						<li><a href="#">Laboratorio Clí­nico</a></li>
						<li><a href="#">Urgencia Escolar</a></li>
						<li><a href="#">Urgencia General</a></li>
						<li><a href="#">Medicina Nuclear</a></li>
					</ul>
				</div>
				<div class="menus">
					<h5>Instituciones Relacionadas</h5>
					<ul>
						<li><a href="http://www.unsa.edu.pe/" target='_blank'>UNSA</a></li>
						<li><a href="http://www.episunsa.edu.pe/web/" target='_blank'>EPIS - UNSA</a></li>
						<li><a href="https://github.com/bjac-pw2/ultima-esperanza" target='_blank'>GITHUB</a></li>
						<li><a href="https://docs.google.com/document/d/1irMet0N5NQQ_5ddwcRHt6hbr19fHIGMVPGSA_EJkHb4/edit?pli=1" target='_blank'>MAPPING</a></li>
						<li><a href="https://docs.google.com/document/d/1Q33PgipxpBZ2DrHob4QLG_NrKgr1pQLO1BQh8XSOleM/edit?pli=1" target='_blank'>TESTING</a></li>
					</ul>
				</div>
				<div class="menus">
					<h5>Sedes Arequipa</h5>
					<ul>
						<li><a href="#">Cercado</a></li>
					</ul>
					</div>
			</div>
			<div id="licencia">Derechos Reservados &copy; 2015 BJAC</div>
		</div>
	</footer>
</body>
</html>
