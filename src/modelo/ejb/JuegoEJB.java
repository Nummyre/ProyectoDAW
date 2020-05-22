package modelo.ejb;

import java.util.ArrayList;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import modelo.dao.JuegosDAO;
import modelo.pojo.Analisis;
import modelo.pojo.Comentario;
import modelo.pojo.Comunidad;
import modelo.pojo.Foto;
import modelo.pojo.Genero;
import modelo.pojo.Guia;
import modelo.pojo.Juego;
import modelo.pojo.Plataforma;

import modelo.pojo.Puntuacion;
import modelo.pojo.Top10;
import modelo.pojo.ValoracionLista;

@Stateless
@LocalBean
public class JuegoEJB {

	public ArrayList<Top10> listaTop10Plataformas(Integer id) {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaTop10Plataformas(id);
	}

	public ArrayList<Top10> listaTop10() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaTop10();
	}

	public ArrayList<Juego> listaJuego() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaJuegos();
	}

	public void deleteComentarioJuego(Integer id) {
		JuegosDAO juegoList = new JuegosDAO();

		juegoList.deleteComentarioJuego(id);
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

	public ArrayList<Comentario> listaComentarioJuegos() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaComentarioJuegos();
	}

	public ArrayList<Juego> xboxList() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.xboxList();
	}

	public ArrayList<Juego> playSList() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.playSList();
	}

	public int insertComentario(String comentario, String fecha, Integer idUsuario, Integer idJuego) {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.insertComentario(comentario, fecha, idUsuario, idJuego);
	}

	public ArrayList<Juego> pcList() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.pcList();
	}

	public ArrayList<Foto> listaFotosJuegos() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaFotosJuegos();
	}


	public void insertValoracion(Integer valoracion, Integer idJuego, Integer idUsuario) {
		JuegosDAO juegoList = new JuegosDAO();

		juegoList.insertValoracion(valoracion, idJuego, idUsuario);
	}

	public ArrayList<ValoracionLista> listaValoracion() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaValoracion();
	}
	
	
	public Puntuacion valoracionJuegoXIdUsuario(Integer idJuego, Integer idUsuario) {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.valoracionJuegoXIdUsuario(idJuego, idUsuario);
	}

	public ArrayList<Comunidad> listaHilos() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaHilos();
	}

	public int insertHilo(String titulo, String hilo, String fecha, Integer idUsuario, String foto) {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.insertHilo(titulo, hilo, fecha, idUsuario, foto);
	}
	public Puntuacion valoracionJuego(Integer idJuego) {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.valoracionJuego(idJuego);
	}

	public Comunidad hilo(Integer id) {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.hilo(id);
	}

	public void deleteComentarioComunidad(Integer id) {
		JuegosDAO juegoList = new JuegosDAO();

		juegoList.deleteComentarioComunidad(id);
	}

	public int insertComentarioComunidad(String comentario, String fecha, Integer idUsuario, Integer idComunidad) {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.insertComentarioComunidad(comentario, fecha, idUsuario, idComunidad);
	}

	public ArrayList<Comentario> listaComentarioComunidad() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaComentarioComunidad();
	}
}
