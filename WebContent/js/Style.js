
/**
 * Javascript para REGISTRO
 * @returns
 */




function myFunction() {
	 document.getElementById('box2').disabled = true;
	
	if (document.getElementById('condiciones').onclick) {

        document.getElementById('box2').checked = true;
      
        document.getElementById('registro').disabled = false;
    } else {
    	   document.getElementById('box2').checked = false;
    
           document.getElementById('registro').disabled = true;
    }
	
	
}

function pres() {

        document.getElementById('box2').checked = true;
      
        document.getElementById('registro').disabled = false;
  
    
	
}


/**
 * Javascript para LOGIN
 * @returns
 */


function abrir(){
	
	if(document.getElementById('ojo').onclick){
		document.getElementById('validationTooltip02').setAttribute("type", "text");
		document.getElementById('ojo').setAttribute("class", "fas fa-eye");
		document.getElementById('ojo').setAttribute("onclick", "cerrar()");
		
	}

	
}

function cerrar(){
	if(document.getElementById('ojo').onclick){
		document.getElementById('validationTooltip02').setAttribute("type", "password");
		document.getElementById('ojo').setAttribute("class", "fas fa-eye-slash");
		document.getElementById('ojo').setAttribute("onclick", "abrir()");
		
	}
}

/**
 * Javascript para AddJuego
 * @returns
 */

//Solo permite introducir numeros.
function soloNumeros(e){
  var key = window.event ? e.which : e.keyCode;
  if (key < 48 || key > 57) {
    e.preventDefault();
  }
}

