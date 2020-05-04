package modelo.pojo;

public class Comunidad {

	private Integer id;
	private String titulo;
	private String hilo;
	private String fecha;
	private Integer idUsuario;
	private String foto;
	
	public Comunidad() {
		
	}
	
	

	public Comunidad(Integer id, String titulo, String hilo, String fecha, Integer idUsuario, String foto) {
		super();
		this.id = id;
		this.titulo = titulo;
		this.hilo = hilo;
		this.fecha = fecha;
		this.idUsuario = idUsuario;
		this.foto = foto;
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

	public String getHilo() {
		return hilo;
	}

	public void setHilo(String hilo) {
		this.hilo = hilo;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public Integer getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(Integer idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}
	

	
	
}
