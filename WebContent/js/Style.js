/**
 * JS para la web en general
 */

/**
 * 
 * Metodo para habilitar y deshabilitar el boton de enviar
 * 
 * @returns un boton habilitado o dehsabilitado
 */
function myFunction() {

	// El checkbox esta dehsabilitado
	document.getElementById('box2').disabled = true;

	// si se hace click en aceptar las condiciones
	if (document.getElementById('condiciones').onclick) {

		// el checkbox estara con el stick
		document.getElementById('box2').checked = true;

		// el boton de enviar estara habilitado
		document.getElementById('registro').disabled = false;

		// sino el checkbox no tendra el stick y el boton de enviar
		// dehsabilitado
	} else {
		document.getElementById('box2').checked = false;

		document.getElementById('registro').disabled = true;
	}

}

/**
 * Metodo para que al aceptar las condiciones dentro del modal
 * 
 * @returns boton presionado aceptado
 */
function pres() {

	// checkbox tenga el stick
	document.getElementById('box2').checked = true;

	// boton de enviar habilitado
	document.getElementById('registro').disabled = false;

}

/**
 * metodo para abrir el icono del ojo de privacidad de la contraseña del login
 * 
 * @returns el ojo abierto
 */
function abrir() {

	// si el icono se hace click
	if (document.getElementById('ojo').onclick) {

		// el input de la contraseña se cambie el type por text
		document.getElementById('validationTooltip02').setAttribute("type", "text");

		// icono del ojo cambie al ojo cerrado
		document.getElementById('ojo').setAttribute("class", "fas fa-eye");

		// el icono del ojo cambie su onclick por el metodo cerrar()
		document.getElementById('ojo').setAttribute("onclick", "cerrar()");

	}

}

/**
 * Metodo para cerrar el ojo de privacidad de la contraseña del login
 * 
 * @returns ojo cerrad
 */
function cerrar() {

	// si el icono hace click
	if (document.getElementById('ojo').onclick) {

		// el input de la contraseña cambia su type por password
		document.getElementById('validationTooltip02').setAttribute("type", "password");

		// icono del ojo cambia al abierto
		document.getElementById('ojo').setAttribute("class", "fas fa-eye-slash");

		// icono del ojo cambia su onclick por el metodo de abrir()
		document.getElementById('ojo').setAttribute("onclick", "abrir()");

	}
}
