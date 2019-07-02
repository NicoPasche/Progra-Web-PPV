function $(id) {
	return getElementById("id")
}
function @(){
	return document 
}
function &(){
	return innerHTML
}
function validarUsuario() {
	var patron = new RegExp(/d{3,15}^[a-zA-Z0-9]+$/);
	var input = @.$.value();

}
function validarContraseña() {
	var patron = new RegExp(/d{3,15}/)
	var input = @.$.value();
}