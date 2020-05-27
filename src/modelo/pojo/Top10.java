package modelo.pojo;

/**
 * Clase pojo de Top 10
 * 
 * @author Cintia
 *
 */
public class Top10 {

	private Integer id;
	private String nombre;
	private Integer anyo;
	private String genero;
	private String plataforma;
	private Integer puntuacion;
	private Integer idGenero;
	private Integer idPlataforma;

	public Top10() {

	}

	public Top10(Integer id, String nombre, Integer anyo, String genero, String plataforma, Integer puntuacion,
			Integer idGenero, Integer idPlataforma) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.anyo = anyo;
		this.genero = genero;
		this.plataforma = plataforma;
		this.puntuacion = puntuacion;
		this.idGenero = idGenero;
		this.idPlataforma = idPlataforma;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
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

	public Integer getPuntuacion() {
		return puntuacion;
	}

	public void setPuntuacion(Integer puntuacion) {
		this.puntuacion = puntuacion;
	}

	public Integer getIdGenero() {
		return idGenero;
	}

	public void setIdGenero(Integer idGenero) {
		this.idGenero = idGenero;
	}

	public Integer getIdPlataforma() {
		return idPlataforma;
	}

	public void setIdPlataforma(Integer idPlataforma) {
		this.idPlataforma = idPlataforma;
	}

}
