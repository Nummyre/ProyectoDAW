package modelo.pojo;

/**
 * Clase pojo de análisis
 * 
 * @author Cintia
 *
 */
public class Analisis {

	private Integer id;
	private String titulo;
	private String descripcion;
	private String fecha;
	private String texto;
	private Integer idUsuario;

	public Analisis() {

	}

	public Analisis(Integer id, String titulo, String descripcion, String fecha, String texto, Integer idUsuario) {
		super();
		this.id = id;
		this.titulo = titulo;
		this.descripcion = descripcion;
		this.fecha = fecha;
		this.texto = texto;
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

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
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
