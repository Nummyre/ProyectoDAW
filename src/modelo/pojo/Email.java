package modelo.pojo;

public class Email {

	private Integer id;
	private String nombre;
	private String idUsuario;
	
	public Email() {
		
	}

	public Email(Integer id, String nombre, String idUsuario) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.idUsuario = idUsuario;
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

	public String getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(String idUsuario) {
		this.idUsuario = idUsuario;
	}
	

	
	
	
}
