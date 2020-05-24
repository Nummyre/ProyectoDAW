package modelo.pojo;

public class Usuario {

	private Integer id;
	private String nombre;
	private String user;
	private String password;
	private String foto;
	private String email;
	private String fechaAlta;
	private Integer administrador;
	
	public Usuario(Integer id, String nombre, String user, String password, String foto, String email, String fechaAlta,
			Integer administrador) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.user = user;
		this.password = password;
		if(foto.contentEquals("null")) {
			this.foto="desconocido.png";
		}else {
			this.foto = foto;
		}
		this.email = email;
		this.fechaAlta = fechaAlta;
		this.administrador = administrador;
	}
	
	public Usuario() {
		
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

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		if(foto.contentEquals("null")) {
			this.foto="desconocido.png";
		}else {
			this.foto = foto;
		}
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFechaAlta() {
		return fechaAlta;
	}

	public void setFechaAlta(String fechaAlta) {
		this.fechaAlta = fechaAlta;
	}

	public Integer getAdministrador() {
		return administrador;
	}

	public void setAdministrador(Integer administrador) {
		this.administrador = administrador;
	}
	
	
	
	
	
}