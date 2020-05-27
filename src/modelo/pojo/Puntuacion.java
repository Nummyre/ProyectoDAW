package modelo.pojo;

/**
 * Clase pojo de Puntuación
 * 
 * @author Cintia
 *
 */
public class Puntuacion {

	private Integer id;
	private Integer puntuacion;
	private Integer idJuego;
	private Integer idUsuario;
	private double valoracion;

	public Puntuacion() {

	}

	public Puntuacion(Integer id, Integer puntuacion, Integer idJuego, Integer idUsuario, double valoracion) {
		super();
		this.id = id;
		this.puntuacion = puntuacion;
		this.idJuego = idJuego;
		this.idUsuario = idUsuario;
		this.valoracion = valoracion;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getPuntuacion() {
		return puntuacion;
	}

	public void setPuntuacion(Integer puntuacion) {
		this.puntuacion = puntuacion;
	}

	public Integer getIdJuego() {
		return idJuego;
	}

	public void setIdJuego(Integer idJuego) {
		this.idJuego = idJuego;
	}

	public Integer getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(Integer idUsuario) {
		this.idUsuario = idUsuario;
	}

	public double getValoracion() {
		return valoracion;
	}

	public void setValoracion(double valoracion) {
		this.valoracion = valoracion;
	}

}
