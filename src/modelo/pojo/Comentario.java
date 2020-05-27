package modelo.pojo;

/**
 * Clase pojo de Comentario
 * 
 * @author Cintia
 *
 */
public class Comentario {

	private Integer id;
	private Integer idUsuario;
	private Integer idJuego;
	private String comentario;
	private String fecha;

	public Comentario() {

	}

	public Comentario(Integer id, Integer idUsuario, Integer idJuego, String comentario, String fecha) {
		super();
		this.id = id;
		this.idUsuario = idUsuario;
		this.idJuego = idJuego;
		this.comentario = comentario;
		this.fecha = fecha;

	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(Integer idUsuario) {
		this.idUsuario = idUsuario;
	}

	public Integer getIdJuego() {
		return idJuego;
	}

	public void setIdJuego(Integer idJuego) {
		this.idJuego = idJuego;
	}

	public String getComentario() {
		return comentario;
	}

	public void setComentario(String comentario) {
		this.comentario = comentario;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

}
