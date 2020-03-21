package modelo.pojo;

public class Comentario {

	private Integer id;
	private String comentario;
	private Integer idUsuario;
	private Integer idJuego;
	
	public Comentario(Integer id, String comentario, Integer idUsuario, Integer idJuego) {
		this.id = id;
		this.comentario = comentario;
		this.idUsuario = idUsuario;
		this.idJuego = idJuego;
	}
	
	public Comentario() {
		
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getComentario() {
		return comentario;
	}

	public void setComentario(String comentario) {
		this.comentario = comentario;
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
	
	
	
}
