package modelo.pojo;

public class PopurriMain {
 
	private Integer idGuia;
	private Integer idJuego;
	private Integer idAnalisis;
	
	private String tituloJuego;
	private String tituloGuia;
	private String tituloAnalisis;
	
	private String plataforma;

	
	public PopurriMain() {
		
	}
	
	
	
	
	public PopurriMain(Integer idGuia, Integer idJuego, Integer idAnalisis, String tituloJuego, String tituloGuia,
			String tituloAnalisis, String plataforma) {
		super();
		this.idGuia = idGuia;
		this.idJuego = idJuego;
		this.idAnalisis = idAnalisis;
		this.tituloJuego = tituloJuego;
		this.tituloGuia = tituloGuia;
		this.tituloAnalisis = tituloAnalisis;
		this.plataforma = plataforma;
	}




	public Integer getIdGuia() {
		return idGuia;
	}

	public void setIdGuia(Integer idGuia) {
		this.idGuia = idGuia;
	}

	public Integer getIdJuego() {
		return idJuego;
	}

	public void setIdJuego(Integer idJuego) {
		this.idJuego = idJuego;
	}

	public Integer getIdAnalisis() {
		return idAnalisis;
	}

	public void setIdAnalisis(Integer idAnalisis) {
		this.idAnalisis = idAnalisis;
	}

	public String getTituloJuego() {
		return tituloJuego;
	}

	public void setTituloJuego(String tituloJuego) {
		this.tituloJuego = tituloJuego;
	}

	public String getTituloGuia() {
		return tituloGuia;
	}

	public void setTituloGuia(String tituloGuia) {
		this.tituloGuia = tituloGuia;
	}

	public String getTituloAnalisis() {
		return tituloAnalisis;
	}

	public void setTituloAnalisis(String tituloAnalisis) {
		this.tituloAnalisis = tituloAnalisis;
	}

	public String getPlataforma() {
		return plataforma;
	}

	public void setPlataforma(String plataforma) {
		this.plataforma = plataforma;
	}
	
	
	
	
}
