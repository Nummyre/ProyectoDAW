package modelo.pojo;

public class PlataformasJuegos {

	private Integer id;
	private String foto;
	private String titulo;
	private String descripcion;
	private Integer anyo;
	private String genero;
	private String plataforma;
	
	
	public PlataformasJuegos() {
		
	}


	public PlataformasJuegos(Integer id, String foto, String titulo, String descripcion, Integer anyo, String genero,
			String plataforma) {
		super();
		this.id = id;
		this.foto = foto;
		this.titulo = titulo;
		this.descripcion = descripcion;
		this.anyo = anyo;
		this.genero = genero;
		this.plataforma = plataforma;
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


	public String getTitulo() {
		return titulo;
	}


	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}


	public String getDescripcion() {
		return descripcion;
	}


	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}


	public Integer getAnyo() {
		return anyo;
	}


	public void setAnyo(Integer anyo) {
		this.anyo = anyo;
	}


	public String getGenero() {
		return genero;
	}


	public void setGenero(String genero) {
		this.genero = genero;
	}


	public String getPlataforma() {
		return plataforma;
	}


	public void setPlataforma(String plataforma) {
		this.plataforma = plataforma;
	}


	
	
}
