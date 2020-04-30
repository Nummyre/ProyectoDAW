package modelo.ejb;

import java.util.ArrayList;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import modelo.dao.JuegosDAO;
import modelo.pojo.Analisis;
import modelo.pojo.Comentario;
import modelo.pojo.Foto;
import modelo.pojo.Genero;
import modelo.pojo.Guia;
import modelo.pojo.Juego;
import modelo.pojo.Plataforma;
import modelo.pojo.Puntuacion;

@Stateless
@LocalBean
public class JuegoEJB {

	public ArrayList<Juego> listaJuego() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaJuegos();
	}
	
	public ArrayList<Analisis> listaAnalisisPorIdUser(Integer id) {
		
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaAnalisisPorIdUser(id);
	}
	
	public void deleteComentarioJuego(Integer id) {
		JuegosDAO juegoList = new JuegosDAO();

		juegoList.deleteComentarioJuego(id);
	}
	
	public void deleteAnalisis(Integer id) {
		JuegosDAO juegoList = new JuegosDAO();

		juegoList.deleteAnalisis(id);
	}
	
	public int insertAnalisi(String titulo, String texto, Integer idUsuario) {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.insertAnalisi(titulo, texto, idUsuario);
	}
	
	public void updateAnalisi(String titulo, String texto, Integer id) {
		JuegosDAO juegoList = new JuegosDAO();

		 juegoList.updateAnalisi(titulo, texto, id);
	}
	
	public void insertAnalisiFoto(String foto, Integer idAnalisis) {
		JuegosDAO juegoList = new JuegosDAO();

		juegoList.insertAnalisiFoto(foto, idAnalisis);
	}
	public void updateAnalisisFoto(String foto, Integer idAnalisis) {
		JuegosDAO juegoList = new JuegosDAO();

		 juegoList.updateAnalisisFoto(foto, idAnalisis);
		
	}

	public ArrayList<Juego> listaJuegosPorIdUser(Integer id) {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaJuegosPorIdUser(id);
	}

	public void updateJuego(String titulo, String desc, Integer anyo, Integer idGen, Integer idPla, Integer idJuego) {
		JuegosDAO juegoList = new JuegosDAO();

		juegoList.updateJuego(titulo, desc, anyo, idGen, idPla, idJuego);
	}
	
	public void updateGuia(String titulo, String texto, Integer id) {
		JuegosDAO juegoList = new JuegosDAO();

		juegoList.updateGuia(titulo,texto, id);
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
	
	public void updateGuiaFoto(String foto, Integer idGuia) {
		JuegosDAO juegoList = new JuegosDAO();

		juegoList.updateGuiaFoto(foto, idGuia);
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
	
	public Guia guia(Integer id) {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.guia(id);
	}
	
	public Analisis analisis(Integer id) {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.analisis(id);
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
	
	public ArrayList<Foto> listaFotosGuia() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaFotosGuia();
	}
	
	public ArrayList<Foto> listaFotosAnalisi() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaFotosAnalisi();
	}
	
	public ArrayList<Comentario> listaComentarioGuia() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaComentarioGuia();
	}
	
	public ArrayList<Comentario> listaComentarioAnalisi() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaComentarioAnalisi();
	
	}
	public void deleteComentarioGuia(Integer id) {
		JuegosDAO juegoList = new JuegosDAO();

		 juegoList.deleteComentarioGuia(id);
	}
	
	public void deleteComentarioAnalisis(Integer id) {
		JuegosDAO juegoList = new JuegosDAO();

		 juegoList.deleteComentarioAnalisis(id);
	}
	
	public int insertComentarioGuia(String comentario, String fecha, Integer idUsuario, Integer idGuia) {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.insertComentarioGuia(comentario, fecha, idUsuario, idGuia);
	}
	
	public int insertComentarioAnalisis(String comentario, String fecha, Integer idUsuario, Integer idAnalisis) {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.insertComentarioAnalisis(comentario, fecha, idUsuario, idAnalisis);
	}
	
	public ArrayList<Guia> listaGuias() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaGuias();
	}
	
	public ArrayList<Analisis> listaAnalisis() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaAnalisis();
	}
	
	public void insertValoracion(Integer valoracion, Integer idJuego, Integer idUsuario ) {
		JuegosDAO juegoList = new JuegosDAO();

		juegoList.insertValoracion(valoracion, idJuego, idUsuario);
	}
	
	public ArrayList<Puntuacion> listaValoracion(Integer idJuego) {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaValoracion(idJuego);
	}
}
