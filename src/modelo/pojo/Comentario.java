package modelo.pojo;

public class Comentario {

	private Integer id;
	private Integer idUsuario;
	private Integer idJuego;
	private String comentario;
	
	public Comentario () {
		
	}
	
	public Comentario(Integer id, Integer idUsuario, Integer idJuego, String comentario) {
		super();
		this.id = id;
		this.idUsuario = idUsuario;
		this.idJuego = idJuego;
		this.comentario = comentario;
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
	
	
	

	
	
}
