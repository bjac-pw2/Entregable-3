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
	<link rel="stylesheet" href="css/input.css">
</head>
<body>
	<header id="cabecera">
		<div id="titulos">
			<div id="titulo">
				<h5>CLINICA</h5>
				<h1>ULTIMA ESPERANZA</h1>
			</div>
			<div id="sesion">
				<h4>INICIAR SESION: </h4>
				<form action="validaSesion" method="post" accept-charset="utf-8">
					<input type="text" required placeholder="Usuario" name='usuario' value='' class="in">
					<input type="password" required placeholder="Password" name='password' value='' class="in">
					<input type="submit" value="ENTRAR" class="entrar">
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
					<li><a href="4.jsp">ALCANCES</a></li>
					<li><a href="5.jsp">ANTES Y DESPUES</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<hr>
	<div id='contenido'>
		<div class="entrada">
			<div class="tituloEntrada">REGISTRARSE</div>
				<div class="cuerpoEntrada">
					<form action='registrar' class='receta' method='get' accept-charset="utf-8">
						<span class='lf'>DNI: </span><input required type='text' name='dni' pattern="[0-9]{8}"><br/>
						<span class='lf'>Nombre: </span><input required type='text' name='nombre' pattern="([a-zA-ZáéíóúÁÉÍÓÚñÑ]+[\s]?[a-zA-ZáéíóúÁÉÍÓÚñÑ]*)"><br/>
						<span class='lf'>Apellido Paterno: </span><input required type='text' name='apellidoPat' pattern="([a-zA-ZáéíóúÁÉÍÓÚñÑ]+[\s]?[a-zA-ZáéíóúÁÉÍÓÚñÑ]*)"><br/>
						<span class='lf'>Apellido Materno: </span><input required type='text' name='apellidoMat' pattern="([a-zA-ZáéíóúÁÉÍÓÚñÑ]+[\s]?[a-zA-ZáéíóúÁÉÍÓÚñÑ]*)"><br/>
						<span class='lf' >Genero</span></h2>
						<select name='genero'>
							<option value=''></option>
							<option value='masculino'>Masculino</option>
							<option value='femenino'>Femenino</option>
						</select><br>
						<span class='lf'>Peso: </span><input required type='text' name='peso' placeholder='kk.gg' pattern='[0-9]{1,3}(\.)[\d]{1,3}'><br>
						<span class='lf'>Talla: </span><input required type='text' name='talla'placeholder='mm.cc' pattern='[0-9]{1,3}(\.)[\d]{1,3}'><br>	
						<span class='lf'>Direccion: </span><input  required type='text' name='direccion' placeholder='calle,Av. o Jr./#'><br/>	
						<span class='lf'>Correo electronico: </span><input type='text' name='email' pattern="^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$" placeholder="ejemplo@ejemplo.com"><br/>
						<span class='lf'>Telefono: </span><input type='text' name='telefono' pattern="[0-9]{6}|[0-9]{9}"><br/>
						<span class='lf'>Tipo de sangre</span><input type='text' name='tSangre' pattern="(A|B|AB|O){1}(\+|-){1}" placeholder='Use solo mayúsculas'><br>
						<input class='enviar' type='submit' value="ENVIAR">
					</form>
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
						<li><a href="listaMedico">Nuestros especialistas</a></li>
					</ul>
				</div>
				<div class="menus">
					<h5>Instituciones Relacionadas</h5>
					<ul>
						<li><a href="http://www.unsa.edu.pe/" target='_blank'>UNSA</a></li>
						<li><a href="http://www.episunsa.edu.pe/web/" target='_blank'>EPIS - UNSA</a></li>
						<li><a href="https://github.com/bjac-pw2/" target='_blank'>GITHUB</a></li>
						<li><a href="https://docs.google.com/document/d/1irMet0N5NQQ_5ddwcRHt6hbr19fHIGMVPGSA_EJkHb4/edit?pli=1" target='_blank'>MAPPING</a></li>
						<li><a href="https://docs.google.com/document/d/1Q33PgipxpBZ2DrHob4QLG_NrKgr1pQLO1BQh8XSOleM/edit?pli=1" target='_blank'>TESTING</a></li>
					</ul>
				</div>
				<div class="menus">
					<h5>Sedes Arequipa</h5>
					<ul>
						<li>Cercado</li>
					</ul>
					</div>
			</div>
			<div id="licencia">Derechos Reservados &copy; 2015 BJAC</div>
		</div>
	</footer>
</body>
</html>