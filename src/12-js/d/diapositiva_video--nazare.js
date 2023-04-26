// Internet Explorer 10 y versiones anteriores no admiten el modo de pantalla completa./*div.addEventListener("click", () =>    { close_FullScreen();}) //function close_FullScreen() {closeFullscreen(div);}*/
// Variables globales y  carga Inicial 
import {l,tiempo_carga,escribir_tiempo} from '/src/12-js/listados.js';
import {debug} from '/src/12-js/debug.js';
// Variables globales de este fichero
var ciudad='nazare',ciudadT="Nazaré"; 
var i_listado = 0,tiempo_video;
var div=document.getElementById('div-video-'+ ciudad);
var video=document.getElementById('video-video-'+ ciudad);
var h2=document.getElementById('h2-video-'+ ciudad);
var h3=document.getElementById('h3-video-'+ ciudad);
// Asignar funciones al navegador
window.onload = ()=>{document.write(l);document.write(debug);}
window.siguiente_video_nazare=cargar_nazare_video;  
div.addEventListener("dblclick", () => { pantallaCompleta_nazare();})

// Ejecutar  CambiarAutomaticamente
CambiarAutomaticamente();


// Funciones que tienen que ser llamadas
function CambiarAutomaticamente() { 
  cargar_nazare_video(1,1);  
  setTimeout(CambiarAutomaticamente,tiempo_video*1000);
}
function Normaliza(s) {
  var str=s.trim();
  return (str.charAt(0).toUpperCase() + str.slice(1));
}

function cargar_nazare_video(incremento,parametro){
  var w=video.clientWidth,h=video.clientHeight;
  var listado, comentario,c;  
  
  //comentario= l.comentario_mp4.nazaree_mp4_comentario; 
  listado=   l.mp4.nazaree_mp4[0];  

  if (w >  600) { listado=  l.mp4.nazaree_mp4[1];   }
  if (w > 1000) { listado=  l.mp4.nazaree_mp4[2];  }
  
  switch (parametro) {
    case 1:
      i_listado=i_listado+incremento;
      if (i_listado>(listado.length-1)) i_listado=0;
      if (i_listado<0) i_listado=listado.length-1;       
      video.src=listado[i_listado];            
      h2.innerHTML= "Videos de "+ ciudadT + " " + (i_listado +1) + " de " +listado.length ;
      h3.innerHTML="Presentación: videos de Nazaré"
      tiempo_video=l.duracion.nazare_duracion[i_listado];
      break;
    case 2: break; // ????
  }  
}
function pantallaCompleta_nazare() {  
  var s={ navigationUI: "hide" };
  if (div.requestFullscreen)      { div.requestFullscreen(s); return;}
  if (div.webkitRequestFullscreen){ div.webkitRequestFullscreen(s);return;} //safari
  if (div.msRequestFullscreen)    { div.msRequestFullscreen(s);return;}// IE11 
}