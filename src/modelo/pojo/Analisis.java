package modelo.pojo;

public class Analisis {

	private Integer id;
	private String titulo;
	private String texto;
	private Integer idUsuario;
	
	public Analisis(Integer id, String titulo, String texto, Integer idUsuario) {
	
		this.id = id;
		this.titulo = titulo;
		this.texto = texto;
		this.idUsuario = idUsuario;
	}
	
	
	public Analisis() {
		
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getTitulo() {
		return titulo;
	}


	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}


	public String getTexto() {
		return texto;
	}


	public void setTexto(String texto) {
		this.texto = texto;
	}


	public Integer getIdUsuario() {
		return idUsuario;
	}


	public void setIdUsuario(Integer idUsuario) {
		this.idUsuario = idUsuario;
	}
	
	
	
	
	
	
}
