package modelo.pojo;

/**
 * Clase pojo de Género
 * 
 * @author Cintia
 *
 */
public class Genero {

	private Integer id;
	private String nombre;

	public Genero(Integer id, String nombre) {
		this.id = id;
		this.nombre = nombre;
	}

	public Genero() {

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

}
