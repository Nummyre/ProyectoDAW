
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