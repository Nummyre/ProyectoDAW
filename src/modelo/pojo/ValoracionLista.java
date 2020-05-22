package modelo.pojo;

public class ValoracionLista {
	private Integer id;
	private Integer puntuacion;
	private Integer idJuego;
	private Integer idUsuario;
	
	public  ValoracionLista() {
		
	}
	
	public ValoracionLista(Integer id, Integer puntuacion, Integer idJuego, Integer idUsuario) {
		super();
		this.id = id;
		this.puntuacion = puntuacion;
		this.idJuego = idJuego;
		this.idUsuario = idUsuario;
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
	
}
