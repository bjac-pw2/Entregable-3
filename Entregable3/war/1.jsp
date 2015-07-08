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
					<li><a href="#">DESCRIPCION</a></li>
					<li><a href="2.jsp">EMPRESA DESTINADA</a></li>
					<li><a href="3.jsp">VENTAJAS Y DESVENTAJAS</a></li>
					<li><a href="4.jsp">ALCANCES</a></li>
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
				<h3>PARA EL PACIENTE</h3>
				<hr>
				<h5>Sistema de citas: </h5>
				<p>El paciente podrá sacar citas con el doctor que desea, en el horario más cómodo.</p>
 				<h5>Historial médico: </h5>
				<p>Usted podrá ver su historial en la web. Este contendrá sus citas realizadas, prescripciones médicas, exámenes realizados.</p>
				<h3>PARA EL MEDICO</h3>
				<hr>
				<h5>Control de citas: </h5>
				<p>El médico tendrá el número de citas que debe atender por  día.</p>
				<h5>Control de medicamentos: </h5>
				<p>El médico contara con la información del stock de medicamentos.</p>
				<h5>Exámenes: </h5>
				<p>Tendía una exclusiva interfaz en la cual será más difícil la administración de la información de los exámenes.</p>
				<h5>Prescripciones médicas: </h5>
				<p>La receta médica sería cómoda para el médico.</p>
			</div>
			
			<div id="articulosDiarios">
				<h3>Para el administrador (Opciones Exclusivas):</h3>
				<hr>
				<h5>Lista de pacientes: </h5>
				<p>Podrá disponer la información de todos los pacientes de la Clínica Ultima Esperanza. </p>
				<h5>Lista de médicos: </h5>
				<p>Podrá disponer la información de todos los médicos de la Clínica Ultima Esperanza. </p>
				<h5>Lista de medicamentos: </h5>
				<p>Podrá disponer la información de todos los medicamentos de la Clínica Ultima Esperanza. </p>
				<h5>Lista  de administradores: </h5>
				<p>Podrá disponer la información de todos los administradores de la Clínica Ultima Esperanza. </p>
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
