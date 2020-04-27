package modelo.pojo;

public class Foto {

	
	private Integer id;
	private String foto;
	private Integer idJuego;
	
	
	public Foto(Integer id, String foto, Integer idJuego) {
		super();
		this.id = id;
		this.foto = foto;
		this.idJuego = idJuego;
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


	
}
