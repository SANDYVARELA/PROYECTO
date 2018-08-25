function informar(){

    var mensaje = "Usuario no autorizado...";
    var usuarios = new Array(5);
    var claves = new Array(5);
    
    usuarios[0] = "BEVERLY";
    usuarios[1] = "BRAYAN";
    usuarios[2] = "DAVID";
	usuarios[3] = "SANDY";
	usuarios[4] = "MEYER";

    claves[0] = "12345"
    claves[1] = "12345"
    claves[2] = "12345"
	claves[3] = "12345"
    claves[4] = "12345"

    for (i=0; i<usuarios.length; i++){
        if ((usuarios[i]==document.miFormulario.usuario.value.toUpperCase())
            && (claves[i]==document.miFormulario.password.value)){
            mensaje = "Bienvenido al sistema...";
            window.location="file:\\\D:\mayala\Mis documentos\Plantillas personalizadas de Office\4 trimestre\1. PAGINA PROYECTO\PARQUEADERO\Formularios html\listado de plantillas.html";
        }
    } 
  
    alert(mensaje);
    document.miFormulario.botonLimpiar.click();
    document.miFormulario.usuario.focus();
  
  }

