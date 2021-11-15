<%@ page import="java.util.ArrayList" %>
<%@ page import="pe.edu.pucp.iweb.trabajo.Beans.BPedidoCliente" %>
<%@ page import="pe.edu.pucp.iweb.trabajo.Beans.BCliente" %>
<%@ page import="pe.edu.pucp.iweb.trabajo.Beans.BFarmacia" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%ArrayList<BPedidoCliente> listaPedidos = (ArrayList) request.getAttribute("listaPedidos");%>
<%String correo = (String) request.getAttribute("correo");%>
<%ArrayList<BFarmacia> listafarmacias = (ArrayList) request.getAttribute("listafarmacias");%>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Producto</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="FlujoUsuario/css/styles.css" rel="stylesheet" />
		
    </head>
    <body>
                <!-- Navigation-->
              <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!">Teledrugs</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link" aria-current="page" href="<%=request.getContextPath()%>/Usuario?correo=<%=correo%>">Pagina principal</a></li>
                        <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/Usuario?correo=<%=correo%>&opcion=historialPedidos">Estado de pedido</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Farmacias</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">

                                <div class="signup-content">
                                    <div class="signup-form">
                                        <div style="text-align: center;"><h4 class="form-title">ELEGIR FARMACIA</h4></div>
                                        <form method="post" action="<%=request.getContextPath()%>/Usuario?correo=<%=correo%>&opcion=mostrarFarmacia" class="register-form" id="register-form">

                                            <div class="form-group">
												<div class="fake-input">
													<input id="farmacia" type="search" name="campo" list="listafarmacias" placeholder="Elige una farmacia" label for="listafarmacias">
													<img src="FlujoUsuario/images/home-icon.png" width="20" />
												</div>
                                                <datalist id="listafarmacias">
                                                    <%for (BFarmacia bFarmacia : listafarmacias){%>
                                                    <option value="<%=bFarmacia.getNombre()%>"><%=bFarmacia.getDireccion()%></option>
                                                    <%}%>
                                                </datalist>

                                            </div>
                                            <div class="form-group form-button">
                                                <div style="margin-top:5px; text-align: center;"><button type="submit" class="btn btn-success">Continuar</button></div>
                                            </div>
                                        </form>
                                    
									
									</div>
                                </div>
                            </ul>
                        </li>
                    	
					
					
					</ul>
						<div class="dropdown">
						  <a class="btn btn-outline-dark dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
							 <i class='bi bi-person-circle' style='font-size:15px'></i>
							 Usuario	
						  </a>

						  <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                              <li><a href="<%= request.getContextPath()%>/Usuario?correo=<%=correo%>&opcion=mostrarPerfil" class="dropdown-item" >Ver perfil</a></li>
                              <li><a href="<%= request.getContextPath()%>" class="dropdown-item" >Cerrar sesión</a></li>
						  </ul>
						</div>

                    <form method="post" action="<%= request.getContextPath()%>/Usuario?correo=<%=correo%>&opcion=carrito">
                        <form class="d-flex">
                            <button class="btn btn-outline-dark" type="submit">
                                <i class="bi-cart-fill me-1"></i>
                                Carrito
                                <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                            </button>
                        </form>
                    </form>
                </div>
            </div>
        </nav>

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<div class="container padding-bottom-3x mb-1", style=" margin-top: 25px;">
    <!-- Shopping Cart-->
    <div class="table-responsive shopping-cart">
        <table class="table">
            <thead>
                <tr>
                    <td>Historial de Pedidos</td>
					<td class="text-center">Resumen de pago</td>
                    <td class="text-center">Estado</td>
                    <td class="text-center">Cancelar</td>
					
                </tr>
            </thead>
            <tbody>
            <%for (BPedidoCliente bCliente : listaPedidos) {%>
                <tr>
                    <td>
                        <div class="product-item">
                            <a class="product-thumb" href="#"><img src="FlujoUsuario/images/shopping-icon.png" alt="Product"></a>
                            <div class="product-info">
                                <h4 class="product-title"><a href="#"><%=bCliente.getFarmacia()%></a></h4><span><em>Codigo:</em><%=bCliente.getNumeroOrden()%></span><span><em>Cant. prod:</em><%=bCliente.getCantidad()%></span>
                            </div>
                        </div>
                    </td>
					<td class="text-center text-lg text-medium">"S/.<%=bCliente.getResumenPago()%>"</td>
                    <td class="text-center text-lg text-medium"><%=bCliente.getEstado()%></td>
					<td class="text-center">
						<div class="modal" id="exampleModalToggle" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
						  <div class="modal-dialog modal-dialog-centered">
							<div class="modal-content">
							  <div class="modal-header">
								<h5 class="modal-title" id="exampleModalToggleLabel">Confirmación</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							  </div>
							  <div class="modal-body">
								¿Estas seguro de que quiere eliminar el pedido?
							  </div>
							  <div class="modal-footer">
								<button style="margin-right:10px" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
								<button class="btn btn-success" onclick="alert('Se ha eliminado el pedido')" data-bs-dismiss="modal">Aceptar</button>
							  </div>
							</div>
						  </div>
						</div>
						<a class="remove-from-cart" data-bs-toggle="modal" href="#exampleModalToggle" data-toggle="tooltip" title="" data-original-title="Remove item"><i class="bi bi-trash"></i></a>
					</td> 
                </tr>
            <%}%>
            </tbody>
        </table>
    </div>
</div>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
