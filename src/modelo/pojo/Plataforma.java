package modelo.pojo;

/**
 * Clase pojo de Plataforma (para el arrayList de plataformas junto con género)
 * 
 * @author Cintia
 *
 */
public class Plataforma {

	private Integer id;
	private String nombre;

	public Plataforma(Integer id, String nombre) {
		this.id = id;
		this.nombre = nombre;
	}

	public Plataforma() {

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
