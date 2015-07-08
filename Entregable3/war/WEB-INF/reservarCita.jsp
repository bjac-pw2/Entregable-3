<!DOCTYPE html>
<html lang="es">
<head>
	<title>Ultima Esperanza</title>
	<meta charset="utf-8"/>
	<link rel="stylesheet" type="text/css" href="css/calendar.css" />
	<link rel="stylesheet" type="text/css" href="css/custom_2.css" />
	<link rel="stylesheet" type="text/css" href="css/horario.css" />
	<script src="js/modernizr.custom.63321.js"></script>
	<script type="text/javascript" src="js/medicos.js"></script>
	
	<link rel="stylesheet" href="css/styles.css">
	<link rel="stylesheet" href="css/sesion.css">
	<link rel="stylesheet" href="css/animacion.css">
	<link rel="stylesheet" href="css/menu.css">
	
	<link rel="stylesheet" href="css/cita.css">
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
				<form action="cerrarSesion" method="post" accept-charset="utf-8">
				<% HttpSession sesion= request.getSession(); String nombre=(String) sesion.getAttribute("nombre");%>
				<%if(nombre!=null){%>
					Usuario: <%=nombre %></br>
					Tipo: <%=sesion.getAttribute("tipo")%><br/>
					<input type="submit" value="Salir" id="entrar">
				<% }else{
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
					<li><a href="controlJSP?option=1">INICIO</a>
					</li>
					<li><a href='#'>NUEVA CITA</a></li>
					<li><a href="#">HISTORIAL</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div id="contenido">
	<section id="contenido">
			<section class="main">
				<div class="custom-calendar-wrap">
					<div id="custom-inner" class="custom-inner">
						<div class="custom-header clearfix">
							<nav>
								<span id="custom-prev" class="custom-prev"></span>
								<span id="custom-next" class="custom-next"></span>
							</nav>
							<h2 id="custom-month" class="custom-month"></h2>
							<h3 id="custom-year" class="custom-year"></h3>
						</div>
						<div id="calendar" class="fc-calendar-container"></div>
					</div>
				</div>
			</section>
			<section id="citas">
				<div id="linea"></div>
				<div id="cabeceraCitas"></div>
				<br>
				<div>
					<h3>Realiza una cita</h3>
					<span>Escoja una fecha , luego un hora, luego el doctor disponible</span>
				</div>
				<br>
				<div class="entrada">
					<div class="tituloEntrada">REGISTRAR CITA</div>
					<div class="cuerpoEntrada">
						<form action ="save" accept-charset="utf-8">
							<div class="dis" id="cont"></div>
						</form>
					</div>
				</div>
			</section>
			<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
			<script type="text/javascript" src="js/jquery.calendario2.js"></script>
			<script type="text/javascript" src="js/data.js"></script>
			<script type="text/javascript" src="js/cita.js"></script>
			<script type="text/javascript">	
				$(function() {
				
					var transEndEventNames = {
							'WebkitTransition' : 'webkitTransitionEnd',
							'MozTransition' : 'transitionend',
							'OTransition' : 'oTransitionEnd',
							'msTransition' : 'MSTransitionEnd',
							'transition' : 'transitionend'
						},
						transEndEventName = transEndEventNames[ Modernizr.prefixed( 'transition' ) ],
						$wrapper = $( '#custom-inner' ),
						$calendar = $( '#calendar' ),
						cal = $calendar.calendario( {
							onDayClick : function( $el, $contentEl, dateProperties ) {
	
								if( $contentEl.length > 0 ) {
									showEvents( $contentEl, dateProperties );
								}
	
							},
							caldata : codropsEvents,
							displayWeekAbbr : true
						} ),
						$month = $( '#custom-month' ).html( cal.getMonthName() ),
						$year = $( '#custom-year' ).html( cal.getYear() );
	
					$( '#custom-next' ).on( 'click', function() {
						cal.gotoNextMonth( updateMonthYear );
					} );
					$( '#custom-prev' ).on( 'click', function() {
						cal.gotoPreviousMonth( updateMonthYear );
					} );
	
					function updateMonthYear() {				
						$month.html( cal.getMonthName() );
						$year.html( cal.getYear() );
					}
	
					// just an example..
					function showEvents( $contentEl, dateProperties ) {
	
						hideEvents();
						
						var $events = $( '<div id="custom-content-reveal" class="custom-content-reveal"><h4>Events for ' + dateProperties.monthname + ' ' + dateProperties.day + ', ' + dateProperties.year + '</h4></div>' ),
							$close = $( '<span class="custom-content-close"></span>' ).on( 'click', hideEvents );
	
						$events.append( $contentEl.html() , $close ).insertAfter( $wrapper );
						
						setTimeout( function() {
							$events.css( 'top', '0%' );
						}, 25 );
					}
					function hideEvents() {
	
						var $events = $( '#custom-content-reveal' );
						if( $events.length > 0 ) {
							
							$events.css( 'top', '100%' );
							Modernizr.csstransitions ? $events.on( transEndEventName, function() { $( this ).remove(); } ) : $events.remove();
	
						}
	
					}
				
				});
			</script>
		</section>
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
						<li><a href="controlJSP?option=4">Nuestros especialistas</a></li>
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