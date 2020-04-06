package modelo.ejb;

import java.util.ArrayList;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import modelo.dao.JuegosDAO;
import modelo.pojo.Genero;
import modelo.pojo.Juego;

@Stateless
@LocalBean
public class JuegoEJB {

	public ArrayList<Juego> listaJuego() {
		JuegosDAO juegoList = new JuegosDAO();
		
		return juegoList.listaJuegos();
	}
	
	public ArrayList<Genero> genero() {
		JuegosDAO juegoList = new JuegosDAO();
		
		return juegoList.genero();
	}

}
