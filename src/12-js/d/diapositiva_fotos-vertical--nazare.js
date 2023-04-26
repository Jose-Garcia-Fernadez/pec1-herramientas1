// Internet Explorer 10 y versiones anteriores no admiten el modo de pantalla completa./*div.addEventListener("click", () =>    { close_FullScreen();}) //function close_FullScreen() {closeFullscreen(div);}*/
// Variables globales y  carga Inicial 
import {l} from '/src/12-js/listados.js';
import {debug} from '/src/12-js/debug.js';
// Variables globales de este fichero
var ciudad='nazare',ciudadT="Nazaré"; 

var i_listado = 0;
var div=document.getElementById('div-ver-'+ ciudad);
var img=document.getElementById('img-ver-'+ ciudad);
var h2=document.getElementById('h2-ver-'+ ciudad);
var h3=document.getElementById('h3-ver-'+ ciudad);
// Asignar funciones al navegador
window.onload = ()=>{document.write(l);document.write(debug);}
window.siguiente_vertical_nazare=cargar_nazare_v;  
div.addEventListener("dblclick", () => { pantallaCompleta_nazare();})

// Ejecutar  CambiarAutomaticamente
CambiarAutomaticamente();

// Funciones que tienen que ser llamadas
function CambiarAutomaticamente() { 
  cargar_nazare_v(1,1);  
  setTimeout(CambiarAutomaticamente, 5000);
}
function Normaliza(s) {
  var str=s.trim();
  return (str.charAt(0).toUpperCase() + str.slice(1));
}

function cargar_nazare_v(incremento,parametro){
  var w=img.clientWidth;
  var listado, comentario,c;  
  c=" pequeño ";
  //comentario= l.comentario_6.nazaree_6_comentario; 
  listado=   l.fotos.nazaree_png_300_6;  
  if (w >  600) { listado=  l.fotos.nazaree_png_600_6;  c= " mediana " ; }
  if (w > 1000) { listado=  l.fotos.nazaree_png_900_6;  c= " grande " ; }  
  switch (parametro) {
    case 1:
      i_listado=i_listado+incremento;
      if (i_listado>(listado.length-1)) i_listado=0;
      if (i_listado<0) i_listado=listado.length-1;       
      img.src=listado[i_listado];      
      //img.alt= comentario[i_listado] + ' ' + i_listado;
      h2.innerHTML= "Fotos de "+ ciudadT + " " + (i_listado +1) + " de " +listado.length ;//+ " carga " +  tiempo_carga + "msg";
      //h3.innerHTML=Normaliza(comentario[i_listado]); //+ ' ' + i_listado +  "(horizontal"  +  c + ")" + " w=" + w + " h=" + h;  
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
