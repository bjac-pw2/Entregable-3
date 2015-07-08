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
				<h4>SESION INICIADA COMO:</h4>
				<form action="cerrarSesion" method="post" accpet-charset="utf-8" >
				<% HttpSession sesion= request.getSession(); String nombre=(String) sesion.getAttribute("nombre");%>
				<%if(nombre!=null){%>
					Usuario: <%=nombre %></br>
					Tipo: <%=sesion.getAttribute("tipo")%><br/>
					<input type="submit" value="Salir" id="entrar">
				<% }else{
					response.sendRedirect("http://bjac-pw2.appspot.com/");
				}
				%>		
				</form>
			</div>
		</div>
	</header>
	<nav id="menu">
		<div id="menuCenter">
			<div id="nav">
				<ul>
					<li><a href="cJAdmin?option=1">INICIO</a>
					</li>
					<li><a href='#'>PACIENTE</a>
						<div>
							<ul>
								<li><a href="controlJSP?option=2">Registrar</a></li>
								<li><a href="listaPaciente">Listar</a></li>
							</ul>
						</div>
					</li>
					<li><a href="#">MEDICO</a>
						<div>
							<ul>
								<li><a href="controlJSP?option=4">Registrar</a></li>
								<li><a href="listaMedico">Listar</a></li>
							</ul>
						</div>
					</li>
					<li><a href="#">FARMACEUTICO</a>
						<div>
							<ul>
								<li><a href="cJAdmin?option=7">Registrar</a></li>
								<li><a href="listaFarmaceutico">Listar</a></li>
							</ul>
						</div>
					</li>
					<li><a href="#">ADMINISTRADOR</a>
						<div>
							<ul>
								<li><a href="controlJSP?option=8">Registrar</a></li>
								<li><a href="listaAdministrador">Listar</a></li>
							</ul>
						</div>
					</li>
					<li><a href="#">MAS OPCIONES</a>
						<div>
							<ul>
								<li><a href="controlJSP?option=18">MODIFICAR PASSWORD</a></li>
								<li><a href="controlJSP?option=19">ELIMINAR</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<hr>
	<div id='contenido'>
	<div class="entrada">
		<div class="tituloEntrada">NUEVO FARMACEUTICO</div>
		<div class="cuerpoEntrada">
		<form action='regFarmaceutico' method='get'class='regMedico' accept-charset='utf-8'>
		<span class='lf'>DNI: </span><input required type='text' name='dni' pattern="[0-9]{8}"><br/>
		<span class='lf'>Nombre: </span><input required type='text' name='nombre' pattern="[a-zA-Z������������]+(\s)*[a-zA-Z������������]*"><br/>
		<span class='lf'>Apellido Paterno: </span><input required type='text' name='apellidoPat' pattern="[a-zA-Z������������]+(\s)*[a-zA-Z������������]*"><br/>
		<span class='lf'>Apellido Materno: </span><input required type='text' name='apellidoMat' pattern="[a-zA-Z������������]+(\s)*[a-zA-Z������������]*">
		<span class='lf' >Seleccione su g�nero</span></h2>
			<select name='genero'>
					<option value=''></option>
					<option value='masculino'>Masculino</option>
					<option value='femenino'>Femenino</option>
			</select><br>
		<span class='lf'>Direccion: </span><input required type='text' name='direccion' placeholder='calle,Av. o Jr./#'><br/>
		<span class='lf'>Correo electronico: </span><input required type='text' name='email' pattern="^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$" placeholder="ejemplo@ejemplo.com"><br/>
		<span class='lf'>Telefono: </span><input required type='text' name='telefono' pattern="[1-9]{6}|[0-9]{9}"><br/>
		<button class='boton' type='submit'>Guardar</button><br>
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
						<li><a href="#">Qui�nes Somos</a></li>
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
						<li><a href="https://github.com/bjac-pw2/ultima-esperanza" target='_blank'>GITHUB</a></li>
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