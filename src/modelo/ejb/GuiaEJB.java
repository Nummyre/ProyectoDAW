package modelo.ejb;

import java.util.ArrayList;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import modelo.dao.GuiasDAO;
import modelo.pojo.Comentario;
import modelo.pojo.Foto;
import modelo.pojo.Guia;

/**
 * Clase EJB para coger el método desde el DAO
 * 
 * @author Cintia
 *
 */
@Stateless
@LocalBean
public class GuiaEJB {

	/**
	 * Método para eliminar un comentario en ua ficha de la guía
	 * 
	 * @param id = clave que identifica el comentario
	 */
	public void deleteComentarioGuia(Integer id) {
		GuiasDAO juegoList = new GuiasDAO();

		juegoList.deleteComentarioGuia(id);
	}

	/**
	 * Método para actualizar una guía
	 * 
	 * @param titulo = titulo de la guía
	 * @param texto  = texto en el que se quiera escribir en la guía
	 * @param id     = clave de identificación del usuario
	 */
	public void updateGuia(String titulo, String texto, Integer id) {
		GuiasDAO juegoList = new GuiasDAO();

		juegoList.updateGuia(titulo, texto, id);
	}

	/**
	 * Método que elimina una guía
	 * 
	 * @param id = clave de identificación de una guía
	 */
	public void deleteGuia(Integer id) {
		GuiasDAO juegoList = new GuiasDAO();
		juegoList.deleteGuia(id);
	}

	/**
	 * Método que actualiza la foto de una guía
	 * 
	 * @param foto   = párametro que guarda el nombre de la foto
	 * @param idGuia = clave de identificación de guía
	 */
	public void updateGuiaFoto(String foto, Integer idGuia) {
		GuiasDAO juegoList = new GuiasDAO();
		juegoList.updateGuiaFoto(foto, idGuia);
	}

	/**
	 * Método que inserta una guía
	 * 
	 * @param titulo    = titulo de la guía
	 * @param texto     = texto en el que se quiera escribir en la guía
	 * @param idUsuario = clave de identificación del usuario
	 * @return devuelve el id generado de la guía
	 */
	public int insertGuia(String titulo, String fecha, String texto, Integer idUsuario) {
		GuiasDAO juegoList = new GuiasDAO();
		return juegoList.insertGuia(titulo, fecha, texto, idUsuario);
	}

	/**
	 * Método que inserta una foto para una guía
	 * 
	 * @param foto   = párametro donde guarda el nombre de la foto
	 * @param idGuia = clave de identificación de una guía
	 */
	public void insertGuiaFoto(String foto, Integer idGuia) {
		GuiasDAO juegoList = new GuiasDAO();
		juegoList.insertGuiaFoto(foto, idGuia);
	}

	/**
	 * Método que lista las guías por id del usuario
	 * 
	 * @param id = clave de identificación del usuario
	 * @return devuelve una lista de guías por usuario
	 */
	public ArrayList<Guia> listaGuiasPorIdUser(Integer id) {
		GuiasDAO juegoList = new GuiasDAO();
		return juegoList.listaGuiasPorIdUser(id);

	}

	/**
	 * Método que devuelve una guía
	 * 
	 * @param id = clave de identificación de una guía
	 * @return devuelve una guía
	 */
	public Guia guia(Integer id) {
		GuiasDAO juegoList = new GuiasDAO();
		return juegoList.guia(id);
	}

	/**
	 * Método que muestra una lista de fotos de las guías
	 * 
	 * @return devuelve una lista
	 */
	public ArrayList<Foto> listaFotosGuia() {
		GuiasDAO juegoList = new GuiasDAO();
		return juegoList.listaFotosGuia();
	}

	/**
	 * Método para mostrar una lista de comentarios de una guía
	 * 
	 * @return devuelve una lista
	 */
	public ArrayList<Comentario> listaComentarioGuia() {
		GuiasDAO juegoList = new GuiasDAO();
		return juegoList.listaComentarioGuia();
	}

	/**
	 * Método que inserta un comentario en la ficha de la guía
	 * 
	 * @param comentario = pármetro del comentario
	 * @param fecha      = párametro para introducir una fecha
	 * @param idUsuario  = clave que identifica a un usuario
	 * @param idGuia     = cñave que identifica una guía
	 * @return devuelve el id del comentario insertado
	 */
	public int insertComentarioGuia(String comentario, String fecha, Integer idUsuario, Integer idGuia) {
		GuiasDAO juegoList = new GuiasDAO();
		return juegoList.insertComentarioGuia(comentario, fecha, idUsuario, idGuia);
	}

	/**
	 * Método que muestra una lista de guías
	 * 
	 * @return devuelve una lista
	 */
	public ArrayList<Guia> listaGuias() {
		GuiasDAO juegoList = new GuiasDAO();
		return juegoList.listaGuias();
	}
}
