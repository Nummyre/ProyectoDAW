package modelo.ejb;

import java.util.ArrayList;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import modelo.dao.GuiasDAO;
import modelo.pojo.Comentario;
import modelo.pojo.Foto;
import modelo.pojo.Guia;

@Stateless
@LocalBean
public class GuiaEJB {
	
	public void deleteComentarioGuia(Integer id) {
		GuiasDAO juegoList = new GuiasDAO();

		juegoList.deleteComentarioGuia(id);
	}
	
	public void updateGuia(String titulo, String texto, Integer id) {
		GuiasDAO juegoList = new GuiasDAO();

		juegoList.updateGuia(titulo,texto, id);
	}
	
	
	public void deleteGuia(Integer id) {
		GuiasDAO juegoList = new GuiasDAO();
		juegoList.deleteGuia(id);
	}
	
	
	public void updateGuiaFoto(String foto, Integer idGuia) {
		GuiasDAO juegoList = new GuiasDAO();
		juegoList.updateGuiaFoto(foto, idGuia);
	}
	
	public int insertGuia(String titulo, String fecha, String texto, Integer idUsuario) {
		GuiasDAO juegoList = new GuiasDAO();
		return juegoList.insertGuia(titulo, fecha, texto, idUsuario);
	}
	
	public void insertGuiaFoto(String foto, Integer idGuia) {
		GuiasDAO juegoList = new GuiasDAO();
		juegoList.insertGuiaFoto(foto, idGuia);
	}

	public ArrayList<Guia> listaGuiasPorIdUser(Integer id) {
		GuiasDAO juegoList = new GuiasDAO();
		return juegoList.listaGuiasPorIdUser(id);

	}
	
	public Guia guia(Integer id) {
		GuiasDAO juegoList = new GuiasDAO();
		return juegoList.guia(id);
	}
	
	public ArrayList<Foto> listaFotosGuia() {
		GuiasDAO juegoList = new GuiasDAO();
		return juegoList.listaFotosGuia();
	}
	
	public ArrayList<Comentario> listaComentarioGuia() {
		GuiasDAO juegoList = new GuiasDAO();
		return juegoList.listaComentarioGuia();
	}
	
	
	public int insertComentarioGuia(String comentario, String fecha, Integer idUsuario, Integer idGuia) {
		GuiasDAO juegoList = new GuiasDAO();
		return juegoList.insertComentarioGuia(comentario, fecha, idUsuario, idGuia);
	}
	
	
	public ArrayList<Guia> listaGuias() {
		GuiasDAO juegoList = new GuiasDAO();
		return juegoList.listaGuias();
	}
}
