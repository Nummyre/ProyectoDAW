package modelo.ejb;

import java.util.ArrayList;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import modelo.dao.AnalisisDAO;
import modelo.pojo.Analisis;
import modelo.pojo.Comentario;
import modelo.pojo.Foto;

/**
 * Clase EJB para coger el método desde el DAO
 * 
 * @author Cintia
 *
 */
@Stateless
@LocalBean
public class AnalisisEJB {

	/**
	 * Método que lista los análisis por id del usuario
	 * 
	 * @param id = clave de identificación del usuario
	 * @return devuelve una lista de análisis por usuario
	 */
	public ArrayList<Analisis> listaAnalisisPorIdUser(Integer id) {

		AnalisisDAO juegoList = new AnalisisDAO();

		return juegoList.listaAnalisisPorIdUser(id);
	}

	/**
	 * Método que elimina un análisis
	 * 
	 * @param id = clave de identificación de un análisis
	 */
	public void deleteAnalisis(Integer id) {
		AnalisisDAO juegoList = new AnalisisDAO();

		juegoList.deleteAnalisis(id);
	}

	/**
	 * Método que inserta un análisis
	 * 
	 * @param titulo    = titulo de la análisis
	 * @param texto     = texto en el que se quiera escribir en la análisis
	 * @param idUsuario = clave de identificación de un usuario
	 * @return devuelve el id generado del análisis
	 */
	public int insertAnalisi(String titulo, String descripcion, String fecha, String texto, Integer idUsuario) {
		AnalisisDAO juegoList = new AnalisisDAO();

		return juegoList.insertAnalisi(titulo, descripcion, fecha, texto, idUsuario);
	}

	/**
	 * Método para actualizar un análisis
	 * 
	 * @param titulo = titulo del análisis
	 * @param texto  = texto en el que se quiera escribir en el análisis
	 * @param id     = clave de indetificación de un usuario
	 */
	public void updateAnalisi(String titulo, String descripcion, String texto, Integer id) {
		AnalisisDAO juegoList = new AnalisisDAO();

		juegoList.updateAnalisi(titulo, descripcion, texto, id);
	}

	/**
	 * Método que inserta una foto para un análisis
	 * 
	 * @param foto       = párametro donde guarda el nombre de la foto
	 * @param idAnalisis = clave de identificación de un análaisis
	 */
	public void insertAnalisiFoto(String foto, Integer idAnalisis) {
		AnalisisDAO juegoList = new AnalisisDAO();

		juegoList.insertAnalisiFoto(foto, idAnalisis);
	}

	/**
	 * Método que actualiza la foto de un análisis
	 * 
	 * @param foto       = párametro que guarda el nombre de la foto
	 * @param idAnalisis = clave de identificación de un análisis
	 */
	public void updateAnalisisFoto(String foto, Integer idAnalisis) {
		AnalisisDAO juegoList = new AnalisisDAO();

		juegoList.updateAnalisisFoto(foto, idAnalisis);

	}

	/**
	 * Método que devuelve un análisis
	 * 
	 * @param id = clave de identificación de un análisis
	 * @return devuelve un análisis
	 */
	public Analisis analisis(Integer id) {
		AnalisisDAO juegoList = new AnalisisDAO();

		return juegoList.analisis(id);
	}

	/**
	 * Método para mostrar una lista de fotos de los análisis
	 * 
	 * @return devuelve una lista de fotos
	 */
	public ArrayList<Foto> listaFotosAnalisi() {
		AnalisisDAO juegoList = new AnalisisDAO();

		return juegoList.listaFotosAnalisi();
	}

	/**
	 * Método que muestra una lista de comentarios de los análisis
	 * 
	 * @return devuelve una lista
	 */
	public ArrayList<Comentario> listaComentarioAnalisi() {
		AnalisisDAO juegoList = new AnalisisDAO();

		return juegoList.listaComentarioAnalisi();

	}

	/**
	 * Método para eliminar un comentario de la ficha de un análisis
	 * 
	 * @param id = clave que identifica el comentario
	 */
	public void deleteComentarioAnalisis(Integer id) {
		AnalisisDAO juegoList = new AnalisisDAO();

		juegoList.deleteComentarioAnalisis(id);
	}

	/**
	 * Método que inserta un comentario en la ficha del análisis
	 * 
	 * @param comentario = es el párametro del comentario
	 * @param fecha      = párametro para introducir la fecha
	 * @param idUsuario  = es la clave que identifica al usuario
	 * @param idAnalisis = es la clave que identidica el análisis
	 * @return devuelve el id del comentario recien insertado
	 */
	public int insertComentarioAnalisis(String comentario, String fecha, Integer idUsuario, Integer idAnalisis) {
		AnalisisDAO juegoList = new AnalisisDAO();

		return juegoList.insertComentarioAnalisis(comentario, fecha, idUsuario, idAnalisis);
	}

	/**
	 * Método que muestra una lista de análisis
	 * 
	 * @return devuelve una lista
	 */
	public ArrayList<Analisis> listaAnalisis() {
		AnalisisDAO juegoList = new AnalisisDAO();

		return juegoList.listaAnalisis();
	}

}
