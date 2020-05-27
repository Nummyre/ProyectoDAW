package modelo.ejb;

import java.util.ArrayList;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import modelo.dao.JuegosDAO;

import modelo.pojo.Comentario;
import modelo.pojo.Comunidad;
import modelo.pojo.Foto;
import modelo.pojo.Genero;

import modelo.pojo.Juego;
import modelo.pojo.PlataformasJuegos;
import modelo.pojo.Plataforma;

import modelo.pojo.Puntuacion;
import modelo.pojo.Top10;
import modelo.pojo.ValoracionLista;

/**
 * Clase EJB para coger el método del DAO
 * 
 * @author Cintia
 *
 */
@Stateless
@LocalBean
public class JuegoEJB {

	/**
	 * Método que muestra ua lista de top 10 por plataformas
	 * 
	 * @param id = clave que identifica una plataforma
	 * @return devuelve una lista por su id
	 */
	public ArrayList<Top10> listaTop10Plataformas(Integer id) {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaTop10Plataformas(id);
	}

	/**
	 * Método para mostrar una lista de top 10
	 * 
	 * @return devuelve una lista
	 */
	public ArrayList<Top10> listaTop10() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaTop10();
	}

	/**
	 * Método para listar los juegos
	 * 
	 * @return una lista de juegos
	 */
	public ArrayList<Juego> listaJuego() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaJuegos();
	}

	/**
	 * Método para eliminar un comentario de la ficha juego
	 * 
	 * @param id = clave que identifica al juego
	 */
	public void deleteComentarioJuego(Integer id) {
		JuegosDAO juegoList = new JuegosDAO();

		juegoList.deleteComentarioJuego(id);
	}

	/**
	 * Método que muestra una lista de juegos por el id de usuario
	 * 
	 * @param id = clave de identificación del usuario
	 * @return devuelve una lista de juegos por usuario
	 */
	public ArrayList<Juego> listaJuegosPorIdUser(Integer id) {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaJuegosPorIdUser(id);
	}

	/**
	 * Método para actualizar un juego
	 * 
	 * @param titulo  = titulo del juego
	 * @param desc    = descripción del juego
	 * @param anyo    = año en el que lanzó el juego
	 * @param idGen   = clave de identificación de la tabla género
	 * @param idPla   = clave de identificación de la tabla plataformas
	 * @param idJuego = clave de indetificación del juego
	 */
	public void updateJuego(String titulo, String desc, Integer anyo, Integer idGen, Integer idPla, Integer idJuego) {
		JuegosDAO juegoList = new JuegosDAO();

		juegoList.updateJuego(titulo, desc, anyo, idGen, idPla, idJuego);
	}

	/**
	 * Método que elimina un juego
	 * 
	 * @param id = clave de identificación del juego
	 */
	public void deleteJuego(Integer id) {
		JuegosDAO juegoList = new JuegosDAO();

		juegoList.deleteJuego(id);
	}

	/**
	 * Método que inserta una foto para un juego
	 * 
	 * @param foto    = párametro donde guarda el nombre de la foto
	 * @param idJuego = clave de identificación de un juego
	 */
	public void updateJuegoFoto(String foto, Integer idJuego) {
		JuegosDAO juegoList = new JuegosDAO();

		juegoList.updateJuegoFoto(foto, idJuego);
	}

	/**
	 * Método que muestra una lista de los géneros
	 * 
	 * @return devuelve una lista de géneros
	 */
	public ArrayList<Genero> genero() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.genero();
	}

	/**
	 * Método que devuelve una lista de plataformas
	 * 
	 * @return devuelve una lista de plataformas
	 */
	public ArrayList<Plataforma> plataforma() {

		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.plataforma();
	}

	/**
	 * Método que inserta un juego
	 * 
	 * @param titulo = titulo del juego
	 * @param desc   = descripción del juego
	 * @param anyo   = año que se lanzó el juego
	 * @param idGen  = clave de identificación de la tabla género
	 * @param idPla  = clave de identificación de la tabla plataformas
	 * @param idUser = clade de identificación del usuario
	 * @return devuelve el id del juego insertado
	 */
	public int insertJuego(String titulo, String desc, Integer anyo, Integer idGen, Integer idPla, Integer idUser) {

		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.insertJuego(titulo, desc, anyo, idGen, idPla, idUser);

	}

	/**
	 * Método que inserta una foto para un juego
	 * 
	 * @param foto    = párametro donde guarda el nombre de la foto
	 * @param idJuego = clave de identificación de un juego
	 */
	public void insertJuegoFoto(String foto, Integer idJuego) {

		JuegosDAO juegoList = new JuegosDAO();

		juegoList.insertJuegoFoto(foto, idJuego);
	}

	/**
	 * Método que muestra una lista de juegos relacionados con nintendo
	 * 
	 * @return devuelve una lista de juegos
	 */
	public ArrayList<PlataformasJuegos> nintendoList() {

		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.nintendoList();
	}

	/**
	 * Método que devuelve un juego
	 * 
	 * @param id = clave de identificación del juego
	 * @return devuelve un juego
	 */
	public Juego juego(Integer id) {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.juego(id);
	}

	/**
	 * Método que de devuelve una lista de comentarios para los juegos
	 * 
	 * @return devuelve una lista de comentarios
	 */
	public ArrayList<Comentario> listaComentarioJuegos() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaComentarioJuegos();
	}

	/**
	 * Método que devuelve una lista realacionada con juegos de xbox
	 * 
	 * @return devuelve una lista de juegos
	 */
	public ArrayList<PlataformasJuegos> xboxList() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.xboxList();
	}

	/**
	 * Método que devuelve una lista relacionada con los juegos de PlayStation
	 * 
	 * @return devuelve una lista de juegos
	 */
	public ArrayList<PlataformasJuegos> playSList() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.playSList();
	}

	/**
	 * Método que inserta un comentario
	 * 
	 * @param idUsuario  = clave de identificación de un usuario
	 * @param idJuego    = clave de identificación de un juego
	 * @param comentario = párametro donde se guarda el comentario
	 * @return devuelve el id generado del comentario
	 */
	public int insertComentario(String comentario, String fecha, Integer idUsuario, Integer idJuego) {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.insertComentario(comentario, fecha, idUsuario, idJuego);
	}

	/**
	 * Método ue devuelve una lista relacionada con los juegos de PC
	 * 
	 * @return devuelve una lista de juegos
	 */
	public ArrayList<PlataformasJuegos> pcList() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.pcList();
	}

	/**
	 * Método que devuelve una lista de fotos para los juegos
	 * 
	 * @return devuelve una lista de fotos
	 */
	public ArrayList<Foto> listaFotosJuegos() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaFotosJuegos();
	}

	/**
	 * Método para insertar la valoración d eun juego
	 * 
	 * @param valoracion = párametro de la puntuación
	 * @param idJuego    = clave que identifica al juego
	 * @param idUsuario  = clave que identifica a un usuario
	 */
	public void insertValoracion(Integer valoracion, Integer idJuego, Integer idUsuario) {
		JuegosDAO juegoList = new JuegosDAO();

		juegoList.insertValoracion(valoracion, idJuego, idUsuario);
	}

	/**
	 * Método que devuelve una lista de las valorciones de cada juego
	 * 
	 * @return devuelve una lista
	 */
	public ArrayList<ValoracionLista> listaValoracion() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaValoracion();
	}

	/**
	 * Método que muestra una lista de hilos qu ehay en la comunidad
	 * 
	 * @return devuelve una lista
	 */
	public ArrayList<Comunidad> listaHilos() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaHilos();
	}

	/**
	 * Método que inserta un hilo en la comunidad
	 * 
	 * @param titulo    = párametro del título
	 * @param hilo      = párametro del texto
	 * @param fecha     = párametro de la fecha
	 * @param idUsuario = clave que identifica a un usuario
	 * @param foto      = párametro de la foto
	 * @return devuelve el id del hilo insertado
	 */
	public int insertHilo(String titulo, String hilo, String fecha, Integer idUsuario, String foto) {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.insertHilo(titulo, hilo, fecha, idUsuario, foto);
	}

	/**
	 * Método que recoge la puntuación de un juego
	 * 
	 * @param idJuego = clave de identificación del juego
	 * @return devuelve la media de una puntuación de un juego
	 */
	public Puntuacion valoracionJuego(Integer idJuego) {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.valoracionJuego(idJuego);
	}

	/**
	 * Método que muestra la ficha de un hilo
	 * 
	 * @param id = clave que identidica al hilo
	 * @return devuelve un hilo
	 */
	public Comunidad hilo(Integer id) {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.hilo(id);
	}

	/**
	 * Método que elimina un comentario de la comunidad
	 * 
	 * @param id = clave que identifica al comentario
	 */
	public void deleteComentarioComunidad(Integer id) {
		JuegosDAO juegoList = new JuegosDAO();

		juegoList.deleteComentarioComunidad(id);
	}

	/**
	 * Método que inserta un comentario en la ficha de un hilo (Comunidad)
	 * 
	 * @param comentario  = párametro del comentario
	 * @param fecha       = párametro para introducir la fecha
	 * @param idUsuario   = clave que identifica a un usuario
	 * @param idComunidad = clave que identifica a la comunidad
	 * @return devuelve el id del comentario insertado
	 */
	public int insertComentarioComunidad(String comentario, String fecha, Integer idUsuario, Integer idComunidad) {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.insertComentarioComunidad(comentario, fecha, idUsuario, idComunidad);
	}

	/**
	 * Método que muestra una lista de los comentarios que hay en la comunidad
	 * 
	 * @return devuelve una lista
	 */
	public ArrayList<Comentario> listaComentarioComunidad() {
		JuegosDAO juegoList = new JuegosDAO();

		return juegoList.listaComentarioComunidad();
	}
}
