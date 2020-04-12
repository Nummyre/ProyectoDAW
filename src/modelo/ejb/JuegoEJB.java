package modelo.ejb;

import java.util.ArrayList;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import modelo.dao.JuegosDAO;
import modelo.pojo.Genero;
import modelo.pojo.Guia;
import modelo.pojo.Juego;
import modelo.pojo.Plataforma;

@Stateless
@LocalBean
public class JuegoEJB {

	public ArrayList<Juego> listaJuego() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaJuegos();
	}

	public ArrayList<Juego> listaJuegosPorIdUser(Integer id) {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaJuegosPorIdUser(id);
	}

	public void updateJuego(String titulo, String desc, Integer anyo, Integer idGen, Integer idPla, Integer idJuego) {
		JuegosDAO juegoList = new JuegosDAO();

		juegoList.updateJuego(titulo, desc, anyo, idGen, idPla, idJuego);
	}

	public void deleteJuego(Integer id) {
		JuegosDAO juegoList = new JuegosDAO();

		juegoList.deleteJuego(id);
	}
	
	public void deleteGuia(Integer id) {
		JuegosDAO juegoList = new JuegosDAO();

		juegoList.deleteGuia(id);
	}

	public void updateJuegoFoto(String foto, Integer idJuego) {
		JuegosDAO juegoList = new JuegosDAO();

		juegoList.updateJuegoFoto(foto, idJuego);
	}

	public ArrayList<Genero> genero() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.genero();
	}

	public ArrayList<Plataforma> plataforma() {

		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.plataforma();
	}

	public int insertGuia(String titulo, String texto, Integer idUsuario) {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.insertGuia(titulo, texto, idUsuario);
	}

	public void insertGuiaFoto(String foto, Integer idGuia) {
		JuegosDAO juegoList = new JuegosDAO();

		juegoList.insertGuiaFoto(foto, idGuia);
	}

	public ArrayList<Guia> listaGuiasPorIdUser(Integer id) {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaGuiasPorIdUser(id);

	}

	public int insertJuego(String titulo, String desc, Integer anyo, Integer idGen, Integer idPla, Integer idUser) {

		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.insertJuego(titulo, desc, anyo, idGen, idPla, idUser);

	}

	public void insertJuegoFoto(String foto, Integer idJuego) {

		JuegosDAO juegoList = new JuegosDAO();

		juegoList.insertJuegoFoto(foto, idJuego);
	}

	public ArrayList<Juego> nintendoList() {

		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.nintendoList();
	}

	public Juego juego(Integer id) {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.juego(id);
	}

}
