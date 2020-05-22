function editor() {
	CKEDITOR.replace('editor1',
			{
				toolbar : [
						{
							name : 'document',
							groups : [ 'mode', 'document', 'doctools' ],
							items : [ 'Source', '-', 'Save', 'NewPage',
									'Preview', 'Print', '-', 'Templates' ]
						},
						{
							name : 'clipboard',
							groups : [ 'clipboard', 'undo' ],
							items : [ 'Cut', 'Copy', 'Paste', 'PasteText',
									'PasteFromWord', '-', 'Undo', 'Redo' ]
						},
						{
							name : 'editing',
							groups : [ 'find', 'selection', 'spellchecker' ],
							items : [ 'Find', 'Replace', '-', 'SelectAll', '-',
									'Scayt' ]
						},
						{
							name : 'forms',
							items : [ 'Form', 'Checkbox', 'Radio', 'TextField',
									'Textarea', 'Select', 'Button',
									'ImageButton', 'HiddenField' ]
						},
						{
							name : 'basicstyles',
							groups : [ 'basicstyles', 'cleanup' ],
							items : [ 'Bold', 'Italic', 'Underline', 'Strike',
									'Subscript', 'Superscript', '-',
									'RemoveFormat' ]
						},
						{
							name : 'paragraph',
							groups : [ 'list', 'indent', 'blocks', 'align',
									'bidi' ],
							items : [ 'NumberedList', 'BulletedList', '-',
									'Outdent', 'Indent', '-', 'Blockquote',
									'CreateDiv', '-', 'JustifyLeft',
									'JustifyCenter', 'JustifyRight',
									'JustifyBlock', '-', 'BidiLtr', 'BidiRtl',
									'Language' ]
						},
						{
							name : 'links',
							items : [ 'Link', 'Unlink', 'Anchor' ]
						},
						{
							name : 'insert',
							items : [ 'Flash', 'Table', 'HorizontalRule',
									'Smiley', 'SpecialChar', 'PageBreak',
									'Iframe' ]
						}, {
							name : 'styles',
							items : [ 'Styles', 'Format', 'Font', 'FontSize' ]
						}, {
							name : 'colors',
							items : [ 'TextColor', 'BGColor' ]
						}, {
							name : 'others',
							items : [ '-' ]
						},

				]
			});
	CKEDITOR.config.width = "100%";

};

$(document).ready(function() {
	$("#ra1").on( "click", function() {
		var idJ = $("#idJ").val();
		var idU = $("#idU").val();
		var estrellas = $("#ra1").val();
		$.post("ValoracionJuego", {
			idJ : idJ,
			idU : idU,
			estrellas : estrellas
			
		})
	$(".clasificacion").hide();
	});

	$("#ra2").on( "click", function() {
		var idJ = $("#idJ").val();
		var idU = $("#idU").val();
		var estrellas = $("#ra2").val();
		$.post("ValoracionJuego", {
			idJ : idJ,
			idU : idU,
			estrellas : estrellas
		})
		$(".clasificacion").hide();
	});

	$("#ra3").on( "click", function() {
		var idJ = $("#idJ").val();
		var idU = $("#idU").val();
		var estrellas = $("#ra3").val();
		$.post("ValoracionJuego", {
			idJ : idJ,
			idU : idU,
			estrellas : estrellas
		})
		$(".clasificacion").hide();
	});

	$("#ra4").on( "click", function() {
		var idJ = $("#idJ").val();
		var idU = $("#idU").val();
		var estrellas = $("#ra4").val();
		$.post("ValoracionJuego", {
			idJ : idJ,
			idU : idU,
			estrellas : estrellas
		})
		$(".clasificacion").hide();
	});

	$("#ra5").on( "click", function() {
		var idJ = $("#idJ").val();
		var idU = $("#idU").val();
		var estrellas = $("#ra5").val();
		$.post("ValoracionJuego", {
			idJ : idJ,
			idU : idU,
			estrellas : estrellas
		})
		$(".clasificacion").hide();
	});

});

window.onload = function() {

	if (document.getElementById("ra1").onclik) {
		document.getElementById("ra1").disabled = true;
	} else {
		document.getElementById("ra1").disabled = false;
	}
	if (document.getElementById("ra2").onclik) {
		document.getElementById("ra2").disabled = true;
	} else {
		document.getElementById("ra2").disabled = false;
	}
	if (document.getElementById("ra3").onclik) {
		document.getElementById("ra3").disabled = true;
	} else {
		document.getElementById("ra3").disabled = false;
	}
	if (document.getElementById("ra4").onclik) {
		document.getElementById("ra4").disabled = true;
	} else {
		document.getElementById("ra4").disabled = false;
	}
	if (document.getElementById("ra5").onclik) {
		document.getElementById("ra5").disabled = true;
	} else {
		document.getElementById("ra5").disabled = false;
	}
}


function contadorChars(obj){
    var maxLength = 255;
    var strLength = obj.value.length;
    var caracteres = (maxLength - strLength);
    
    if(charRemain < 0){
    }else{
        document.getElementById("charNum").innerHTML = caracteres+' carácteres';
    }
}
