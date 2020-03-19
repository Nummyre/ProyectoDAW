package modelo.ejb;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import modelo.dao.UsuariosDAO;
import modelo.pojo.Usuario;

@Stateless
@LocalBean
public class UsuariosEJB {


	public Usuario existeUsuario(String user, String pass) {
    	UsuariosDAO usuariosDAO = new UsuariosDAO();

		return usuariosDAO.existeUsuario(user, pass);
	}
	


    public void insertUsuario(String nombre, String user, String password, String foto, String email)  {
    	UsuariosDAO usuariosDAO = new UsuariosDAO();

		usuariosDAO.insertUsuario(nombre, user, password, foto, email);
	}

}