package pe.edu.pucp.iweb.trabajo.Controllers;

import pe.edu.pucp.iweb.trabajo.Beans.BCliente;
import pe.edu.pucp.iweb.trabajo.Beans.BPedido;
import pe.edu.pucp.iweb.trabajo.Beans.BPedidoCliente;
import pe.edu.pucp.iweb.trabajo.Daos.ClienteDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ClienteServlet", value = "/Usuario")
public class ClienteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String opcion = request.getParameter("opcion") != null ? request.getParameter("opcion") : "salir";
       String correo = request.getParameter("correo") != null ? request.getParameter("correo") : "salir";
       request.setAttribute("correo",correo);
       ClienteDao clienteDao = new ClienteDao();
        switch (opcion) {
            case "mostrarPerfil":
                BCliente bCliente = clienteDao.mostrarPerfil(correo);
                request.setAttribute("Perfil",bCliente);
                RequestDispatcher view = request.getRequestDispatcher("/FlujoUsuario/profile.jsp");
                view.forward(request, response);
                break;
            case "mostrarProducto":
                break;
            case "historialPedidos":
                String dni =  clienteDao.DNI(correo);
                ArrayList<BPedidoCliente> pedidos = clienteDao.mostrarHistorial(dni);
                request.setAttribute("listaPedidos",pedidos);
                RequestDispatcher view2 = request.getRequestDispatcher("/FlujoUsuario/historial.jsp");
                view2.forward(request, response);
                break;
            case "carrito":
                break;
            case "salir":
                RequestDispatcher view1 = request.getRequestDispatcher("/FlujoUsuario/homepage.jsp");
                view1.forward(request, response);
                break;
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre = request.getParameter("Nombres") != null ? request.getParameter("Nombres") : "";
        String apellidos = request.getParameter("Apellidos") != null ? request.getParameter("Apellidos") : "";
        String distrito = request.getParameter("Distrito") != null ? request.getParameter("Distrito") : "";
        String correo = request.getParameter("correo") != null ? request.getParameter("correo") : "";

        ClienteDao clienteDao = new ClienteDao();
        clienteDao.updatePerfil(nombre,apellidos,distrito,correo);
        response.sendRedirect(request.getContextPath() + "/Usuario?correo="+correo + "&opcion=mostrarPerfil");

    }
}
