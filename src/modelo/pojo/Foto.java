package modelo.pojo;

public class Foto {

	
	private Integer id;
	private String foto;
	private Integer idJuego;
	private Integer idGuia;
	private Integer idAnalisis;
	
	public Foto(Integer id, String foto, Integer idJuego, Integer idGuia, Integer idAnalisis) {
	
		this.id = id;
		this.foto = foto;
		this.idJuego = idJuego;
		this.idGuia = idGuia;
		this.idAnalisis = idAnalisis;
	}
	
	public Foto() {
		
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	public Integer getIdJuego() {
		return idJuego;
	}

	public void setIdJuego(Integer idJuego) {
		this.idJuego = idJuego;
	}

	public Integer getIdGuia() {
		return idGuia;
	}

	public void setIdGuia(Integer idGuia) {
		this.idGuia = idGuia;
	}

	public Integer getIdAnalisis() {
		return idAnalisis;
	}

	public void setIdAnalisis(Integer idAnalisis) {
		this.idAnalisis = idAnalisis;
	}
	
	
	
}
