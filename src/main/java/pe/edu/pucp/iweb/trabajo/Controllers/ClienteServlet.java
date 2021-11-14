package pe.edu.pucp.iweb.trabajo.Controllers;

import pe.edu.pucp.iweb.trabajo.Beans.BCliente;
import pe.edu.pucp.iweb.trabajo.Daos.ClienteDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ClienteServlet", value = "/Usuario")
public class ClienteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String opcion = request.getParameter("opcion") != null ? request.getParameter("opcion") : "salir";
        switch (opcion){
            case "mostrarPerfil":
                ClienteDao clienteDao =  new ClienteDao();
                clienteDao.mostrarPerfil("");
                break;
            case "mostrarProducto":
                break;
            case "carrito":
                break;
            case "salir":
                response.sendRedirect(request.getContextPath() + "/Usuario");
                break;
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
