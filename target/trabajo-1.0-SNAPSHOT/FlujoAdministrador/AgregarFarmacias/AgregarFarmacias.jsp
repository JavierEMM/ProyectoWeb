<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>TeleDrugs</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="FlujoAdministrador/css/styles.css" rel="stylesheet" />
    </head>
    <body>
              <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!">Teledrugs</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                    	
					
					
					</ul>
						<div class="dropdown">
						  <a class="btn btn-outline-dark dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
							 <i class='bi bi-person-circle' style='font-size:15px'></i>
							 Usuario	
						  </a>

						  <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
							<li><a href="Login/iniciar.jsp" class="dropdown-item" >Cerrar sesión</a></li>
						  </ul>
						</div>                
                </div>
            </div>
        </nav>
        <!-- Navigation-->
        <!-- <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-5 px-lg-0">
                <a class="navbar-brand" href="#!">Administrador</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Agregar Farmacias</a></li>
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Lista de Farmacias</a></li>
						<li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Bloqueo de Farmacias</a></li> -->
		
						

						
						
                      <!--   <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Bloqueo de Farmacias</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                                <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                            </ul>
                        </li> -->
		<!-- 			<i class='bi bi-person-circle' style='font-size:38px'></i>	
					
                    </ul>
					<form class="d-flex">	                 			
						<button class= "btn-outline-dark" style='font-size:18px' > Cerrar Sesión </i>
						</button>
                    </form>
                </div>
            </div>
        </nav> -->
        <!-- Header-->
		
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">Agregar Farmacia</h1>
                    <p class="lead fw-normal text-white-50 mb-0">Administrador(a) Juan Perez</p>
                </div>
            </div>
        </header>
        <!-- Section-->
		<form>
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-10 row-cols-xl-10 justify-content-center">
                    <div style="width:600px"class="col mb-5">
                        <div style="display:flex; justify-content:center; align-items:center; border-radius:10px; border: 2px solid #e1e7ec" class="card h-100">
							
							<h1 style="margin-top:20px;"class="display-7 fw-bolder">Farmacia</h1>
                            <!-- Product image-->
							
								<form>
								<i class="bi bi-camera-fill"style='font-size:30px'></i>
								<input type="file" name="Imagen" id="add-new-photo" value="image/*">
								<div class="signup-image">
									<figure style="display:flex; justify-content:center; align-items:center; margin-top:20px; margin-bottom:0px"><img src="FlujoAdministrador/Imagenes/farmacia.jpg" alt="house image" width="230px" height="200px"></figure>
								</div>
								</form>
								<!-- <img src="Imagenes/farmacia.jpg" alt="Imagen de Farmacia"></img> -->
								<!-- Product details-->
								<!-- <div class="card-body p-0">
									<div class="text-right">
									<br> -->
										<!-- Product name-->
									   <!--  <p>RUC:<input type="number" id="RUC" name="RUC"</p>
									</div>
									<div class="text-right"> -->
										<!-- Product name-->
									 <!--    <pre class="fw-bolder">Dirección: </pre>
									</div>
									<div class="text-right"> -->
										<!-- Product name-->
									<!-- <p> <i class="zmdi zmdi-home"></i> Distrito: -->
								<br>
								<input style="width:400px; border-radius:7px; border: 1px solid #e1e7ec; outline:none;" type="number" name="number" id="number" placeholder="RUC:">
								<br>
								<input style="width:400px; border-radius:7px; border: 1px solid #e1e7ec; outline:none;" type="text" name="Direccion" id="Dirección" placeholder="Dirección:">
								<br>
									<!-- <p><input list="Distrito" type="search" name="Busqueda" id="Distrito" placeholder="Distrito:">
											<datalist id="Distrito"> 	 -->							
											
											<!-- </datalist> -->
									<!-- </p>
									<form action="../../form-result.php" method="post" target="_blank"> -->

							

								<input style="width:400px; border-radius:7px; border: 1px solid #e1e7ec; outline:none;" type="search" name="campobusqueda" list="listadistritos" placeholder="Distrito">
									<datalist id="listadistritos">
                                    <option value="Ancón">Ancón</option>
                                    <option value="Ate">Ate</option>
                                    <option value="Barranco">Barranco</option>
                                    <option value="Breña">Breña</option>
                                    <option value="Carabayllo">Carabayllo</option>
                                    <option value="Chaclacayo">Chaclacayo</option>
                                    <option value="Chorrillos">Chorrillos</option>
                                    <option value="Cieneguilla">Cieneguilla</option>
                                    <option value="Comas">Comas</option>
                                    <option value="El Agustino">El Agustino</option>
                                    <option value="Independencia">Independencia</option>
                                    <option value="Jesus María">Jesus María</option>
                                    <option value="La Molina">La Molina</option>
                                    <option value="La Victoria">La Victoria</option>
                                    <option value="Lima">Lima</option>
                                    <option value="Lince">Lince</option>
                                    <option value="Los Olivos">Los Olivos</option>
                                    <option value="Lurigancho">Lurigancho</option>
                                    <option value="Lurín">Lurín</option>
                                    <option value="Magdalena del Mar">Magdalena del Mar</option>
                                    <option value="Miraflores">Miraflores</option>
                                    <option value="Pachacamac">Pachacamac</option>
                                    <option value="Pucusana">Pucusana</option>
                                    <option value="Pueblo Libre">Pueblo Libre</option>
                                    <option value="Puente Piedra">Puente Piedra</option>
                                    <option value="Punta Hermosa">Punta Hermosa</option>
                                    <option value="Punta Negra">Punta Negra</option>
                                    <option value="Rimac">Rimac</option>
                                    <option value="San Bartolo">San Bartolo</option>
                                    <option value="San Borja">San Borja</option>
                                    <option value="San Isidro">San Isidro</option>
                                    <option value="San Juan de Lurigancho">San Juan de Lurigancho</option>
                                    <option value="San Juan de Miraflores">San Juan de Miraflores</option>
                                    <option value="San Luis">San Luis</option>
                                    <option value="San Martin de Porres">San Martin de Porres</option>
                                    <option value="San Miguel">San Miguel</option>
                                    <option value="Santa Anita">Santa Anita</option>
                                    <option value="Santa María del Mar">Santa María del Mar</option>
                                    <option value="Santa Rosa">Santa Rosa</option>
                                    <option value="Santiago de Surco">Santiago de Surco</option>
                                    <option value="Surquillo">Surquillo</option>
                                    <option value="Villa el Salvador">Villa el Salvador</option>
                                    <option value="Villa María del Triunfo">Villa María del Triunfo</option>
								</datalist>
								<br>
								<input style="width:400px; border-radius:7px; border: 1px solid #e1e7ec; outline:none;" type="text" name="nombre" id="nombre" placeholder="Nombre de la Farmacia:">
								<br>
								<input style="width:400px; border-radius:7px; border: 1px solid #e1e7ec; outline:none;" type="email" name="email" id="email" placeholder="Correo:">

								<br>
								<head>
								<!-- Modal -->
								<div class="modal" id="exampleModalToggle" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
								  <div class="modal-dialog modal-dialog-centered">
									<div class="modal-content">
									  <div class="modal-header">
										<h5 class="modal-title" id="exampleModalToggleLabel">Confirmación</h5>
										<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									  </div>
									  <div class="modal-body">
										¿Estas seguro de que quiere agregar la Farmacia?.
									  </div>
									  <div class="modal-footer">
										<button class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
										<button class="btn btn-success" onclick="alert('Se le ha enviado una confirmacion al correo electronico')" data-bs-dismiss="modal">Aceptar</button>
									  </div>
									</div>
								  </div>
								</div>
								<a style="margin-bottom:20px; margin-top:0px; width:200px; float:left;" onclick="return eliminardatos()" class="btn btn-danger" href="FlujoAdministrador/AgregarFarmacias.jsp">Limpiar</a>
								<a style="margin-bottom:20px; margin-top:0px; width:200px; float:right;" class="btn btn-success" data-bs-toggle="modal" href="#exampleModalToggle" role="button">Aceptar</a>
								
                        </div>
                    </div>
                </div>
            </div>
			<a style="margin-bottom:20px; margin-right:20px; margin-top:0px; width:200px; float: right;" class="btn btn-secondary" href="FlujoAdministrador/Listafarmacias/Listafarmacias.jsp" data-toast="" data-toast-type="success" data-toast-position="topRight" data-toast-icon="icon-circle-check" data-toast-title="Your cart" data-toast-message="is updated successfully!" style="width:250px;">Regresar</a>
			<!-- <a href="javascript:history.back()"><img src="Imagenes/izquierda.jpg" height="48" width="48" style= "float:right" alt="Botón"</a> -->
			
        </section>
		<!-- <div id="regresar"> -->
		
          <!--  </div> -->
		
		</form>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; TeleDrugs 2021</p></div>
        </footer>
		
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>

