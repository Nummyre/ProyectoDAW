package modelo.ejb;

import java.util.ArrayList;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import modelo.dao.AnalisisDAO;
import modelo.dao.JuegosDAO;
import modelo.pojo.Analisis;
import modelo.pojo.Comentario;
import modelo.pojo.Foto;

@Stateless
@LocalBean
public class AnalisisEJB {
	public ArrayList<Analisis> listaAnalisisPorIdUser(Integer id) {

		AnalisisDAO juegoList = new AnalisisDAO();

		return juegoList.listaAnalisisPorIdUser(id);
	}

	public void deleteAnalisis(Integer id) {
		AnalisisDAO juegoList = new AnalisisDAO();

		juegoList.deleteAnalisis(id);
	}

	public int insertAnalisi(String titulo, String descripcion, String fecha, String texto, Integer idUsuario) {
		AnalisisDAO juegoList = new AnalisisDAO();

		return juegoList.insertAnalisi(titulo, descripcion, fecha, texto, idUsuario);
	}

	public void updateAnalisi(String titulo, String descripcion, String texto, Integer id) {
		AnalisisDAO juegoList = new AnalisisDAO();

		juegoList.updateAnalisi(titulo, descripcion, texto, id);
	}

	public void insertAnalisiFoto(String foto, Integer idAnalisis) {
		AnalisisDAO juegoList = new AnalisisDAO();

		juegoList.insertAnalisiFoto(foto, idAnalisis);
	}

	public void updateAnalisisFoto(String foto, Integer idAnalisis) {
		AnalisisDAO juegoList = new AnalisisDAO();

		juegoList.updateAnalisisFoto(foto, idAnalisis);

	}

	public Analisis analisis(Integer id) {
		AnalisisDAO juegoList = new AnalisisDAO();

		return juegoList.analisis(id);
	}

	public ArrayList<Foto> listaFotosAnalisi() {
		AnalisisDAO juegoList = new AnalisisDAO();

		return juegoList.listaFotosAnalisi();
	}

	public ArrayList<Comentario> listaComentarioAnalisi() {
		AnalisisDAO juegoList = new AnalisisDAO();

		return juegoList.listaComentarioAnalisi();

	}

	public void deleteComentarioAnalisis(Integer id) {
		AnalisisDAO juegoList = new AnalisisDAO();

		juegoList.deleteComentarioAnalisis(id);
	}

	public int insertComentarioAnalisis(String comentario, String fecha, Integer idUsuario, Integer idAnalisis) {
		AnalisisDAO juegoList = new AnalisisDAO();

		return juegoList.insertComentarioAnalisis(comentario, fecha, idUsuario, idAnalisis);
	}

	public ArrayList<Analisis> listaAnalisis() {
		AnalisisDAO juegoList = new AnalisisDAO();

		return juegoList.listaAnalisis();
	}

}
