package modelo.pojo;

/**
 * Clase pojo de Juego
 * 
 * @author Cintia
 *
 */
public class Juego {

	private Integer id;
	private String titulo;
	private String descripcion;
	private Integer anyo;
	private Integer genero;
	private Integer plataforma;
	private Integer idUsuario;

	public Juego() {

	}

	public Juego(Integer id, String titulo, String descripcion, Integer anyo, Integer genero, Integer plataforma,
			Integer idUsuario) {
		super();
		this.id = id;
		this.titulo = titulo;
		this.descripcion = descripcion;
		this.anyo = anyo;
		this.genero = genero;
		this.plataforma = plataforma;
		this.idUsuario = idUsuario;

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

	public Integer getGenero() {
		return genero;
	}

	public void setGenero(Integer genero) {
		this.genero = genero;
	}

	public Integer getPlataforma() {
		return plataforma;
	}

	public void setPlataforma(Integer plataforma) {
		this.plataforma = plataforma;
	}

	public Integer getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(Integer idUsuario) {
		this.idUsuario = idUsuario;
	}

}
