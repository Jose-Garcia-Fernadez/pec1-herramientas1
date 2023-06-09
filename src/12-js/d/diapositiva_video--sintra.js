// Internet Explorer 10 y versiones anteriores no admiten el modo de pantalla completa./*div.addEventListener("click", () =>    { close_FullScreen();}) //function close_FullScreen() {closeFullscreen(div);}*/
// Variables globales y  carga Inicial 
import {l,tiempo_carga,escribir_tiempo} from '/src/12-js/listados.js';
import {debug} from '/src/12-js/debug.js';
// Variables globales de este fichero
var ciudad='sintra',ciudadT="Sintra"; 
var i_listado = 0,tiempo_video;
var div=document.getElementById('div-video-'+ ciudad);
var video=document.getElementById('video-video-'+ ciudad);
var h2=document.getElementById('h2-video-'+ ciudad);
var h3=document.getElementById('h3-video-'+ ciudad);
// Asignar funciones al navegador
window.onload = ()=>{document.write(l);document.write(debug);}
window.siguiente_video_sintra=cargar_sintra_video;  
div.addEventListener("dblclick", () => { pantallaCompleta_sintra();})

// Ejecutar  CambiarAutomaticamente
CambiarAutomaticamente();


// Funciones que tienen que ser llamadas
function CambiarAutomaticamente() { 
  cargar_sintra_video(1,1);  
  setTimeout(CambiarAutomaticamente,tiempo_video*1000);
}
function Normaliza(s) {
  var str=s.trim();
  return (str.charAt(0).toUpperCase() + str.slice(1));
}

function cargar_sintra_video(incremento,parametro){
  var w=video.clientWidth,h=video.clientHeight;
  var listado, comentario;   
  listado=   l.mp4.sintra_mp4[0];  
  if (w >  600) { listado=  l.mp4.sintra_mp4[1];  }
  if (w > 1000) { listado=  l.mp4.sintra_mp4[2];   }
  
  switch (parametro) {
    case 1:
      i_listado=i_listado+incremento;
      if (i_listado>(listado.length-1)) i_listado=0;
      if (i_listado<0) i_listado=listado.length-1;       
      video.src=listado[i_listado];            
      h2.innerHTML= "Videos de "+ ciudadT + ": " + (i_listado +1) + " de " +listado.length ;
      comentario= l.comentario_mp4.sintra_mp4_comentario; 
      h3.innerHTML=Normaliza(comentario[i_listado]);
      tiempo_video=l.duracion.sintra_duracion[i_listado];
      break;
    case 2: break; // ????
  }  
}
function pantallaCompleta_sintra() {  
  var s={ navigationUI: "hide" };
  if (div.requestFullscreen)      { div.requestFullscreen(s); return;}
  if (div.webkitRequestFullscreen){ div.webkitRequestFullscreen(s);return;} //safari
  if (div.msRequestFullscreen)    { div.msRequestFullscreen(s);return;}// IE11 
}

















// ctrl + h  ---> sintra - 'otra ciudad'
/*var ciudad='sintra'; 
import {l} from '/src/12-js/listados.js';
import {debug} from '/src/12-js/debug.js';
// funciones publicas
window.onload = ()=>{document.write(l);document.write(debug);}
window.siguiente_sintra=cargar_sintra_video;  


var div=document.getElementById('div-'+ ciudad);
var img= new Image(), p= document.createElement("p"),i_listado = 0;


img.className='diapositivas-img-ciudad'; 
p.className="diapositivas-p-ciudad";
div.appendChild(p); 
div.appendChild(img);  

if (div==null) 
  console.log("div con id=div-%s no existe y la imagen de %s no se vera",ciudad,ciudad); 
console.log("style=%s",img.className);
solo();


function cargar_sintra_video(incremento,parametro){
  var w=document.documentElement.clientWidth,h=document.documentElement.clientHeight;
  var listado, comentario;
  // Dependiendo del ancho cargo un conjunto distintos de fotos y la ciudad
  comentario= w>h ? l.comentario_1.sintra_1: l.comentario_6.sintra_6;
  listado= w>h ? l.fotos.sintra_png_300_1: l.fotos.sintra_png_300_6; 
  if (w >  600) listado= w>h ? l.fotos.sintra_png_600_1: l.fotos.sintra_png_600_6;
  if (w > 1000) listado= w>h ? l.fotos.sintra_png_900_1: l.fotos.sintra_png_900_6;
 
  switch (parametro) {
    case 1:
      i_listado=i_listado+incremento;
      if (i_listado>(listado.length-1)) i_listado=0;
      if (i_listado<0) i_listado=listado.length-1; 
      img.src=listado[i_listado];
      img.alt=comentario[i_listado] + ' ' + i_listado;
      p.innerHTML=comentario[i_listado] + ' ' + i_listado;
      //console.log("Fin carga de imagen= %s con éxito de la ciudad %s ",i_listado,ciudad);
      break;
    case 2: break; // ????
  }  
}
*//*
var ciudad='sintra'; 
import {l} from '/src/12-js/listados.js';
import {debug} from '/src/12-js/debug.js';
// funciones publicas
window.onload = ()=>{document.write(l);document.write(debug);}
window.siguiente_video_sintra=cargar_video_sintra;  
var p= document.createElement("p"),i_listado = 0;

var d=document.getElementById('div-video-'+ ciudad);
var video=document.createElement('video');

p.className='diapositivas-horizontal-p-ciudad';
video.autoplay=true; video.muted=true; video.controls=true;video.loop=true;
d.appendChild(video);

solo();
function solo() { 
  var t=Math.random()*2000+3000;
  var inc=Math.floor( Math.random()*3+1);
  cargar_video_sintra(inc,1);  
  setTimeout(solo, t);
}

function cargar_video_sintra(incremento,parametro){
  var ww=video.clientWidth;
  var listado, comentario,c;
  listado=l.mp4.sintra_mp4[0]; c= " pequeña " ;
  if (ww >  600)  { listado=l.mp4.sintra_mp4[1];c= " mediana " ; }
  if (ww > 1000)  { listado=l.mp4.sintra_mp4[2];c= " grande " ;}
  switch (parametro) {
    case 1:
      i_listado=i_listado+incremento;
      if (i_listado>(listado.length-1)) i_listado=0;
      if (i_listado<0) i_listado=listado.length-1; 
      video.src=listado[i_listado];
      video.alt=comentario[i_listado] + ' ' + i_listado;
      //p.innerHTML=comentario[i_listado] + ' ' + i_listado + c;      
      break;
    case 2: break; // ????
  }    
}
*/


/*  var t=video.duration*1000; // no funciona ????
  if (t==NaN ) t=tiempo_video*1000;
  if (t<5000) t=5000;
  //alert(tiempo_video*1000);*/
