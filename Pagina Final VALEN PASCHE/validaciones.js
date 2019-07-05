function contrasenia(contenido){
	pass=contenido.value;

}
function validacontrasenia(contenido){
	if (pass==contenido.value)
		vpas=true;
	else
		vpas=false;
}

function validatel(contenido){
	var reg= new RegExp ("^([0-9]){8,12}$");
	if(reg.test(contenido.value))
		vtel=true;
	else
		vtel=false;
}

function validaMail(contenido){
	var reg= new RegExp ("^\\w+([\.-]?\\w+)*@\\w+([\.-]?\\w+)*(\.\\w{2,3})+$");
	if(reg.test(contenido.value))
		vmail=true;
	else
		vmail=false;
}
function validacionTotal(){
	alert(vmail);
	if (vmail && vpas && vtel)
		alert("Se ha registrado con exito.");
	else
		alert("Verifique sus datos en el registro.");

}