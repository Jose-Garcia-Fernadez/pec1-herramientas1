Alumno														
	Nombre								José García Fernández					
	Usuario								jgarciaferrnandez8					
	Email								jgarciaferrnandez8@uoc.edu					
Direcciones WEB														
	Fuente								José-García-Fernández/heramientas-1-pec1 (github.com)					
	Ejecución								Nazaré (jose-garcia-fernadez.github.io)					
Notas realización de la práctica:														
	Compilación modo desarrollo								npm run sdz					
	Compilación modo producción								npm run sp					
	Para crear copias seguridad								npm run copia					
	Para cambiar las etiquetas por textos								npm run lorem-por-buenos-en-destino					
									He intentado ser creativo en la creación de herramientas para hacer la práctica. He combinado VBA de Excel, ficheros BAT/CMD y ficheros JS.					
									Creo que he resuelto con cierto éxito la medidas en SCSS, con la función:					
									@function alturafuente($h){@return calc( 1rem * $h/2 + 1vw * $h/2 );}					
									La utilizo para los títulos,  párrafos, listas, etc… en el fichero variables.scss, de esta forma todo el programa tiene la misma altura de fuentes de letras.					
									También la utilizo para los margin y padding.					
Carpetas														
	Destino								z:\destino\					
									En este disco y carpeta es donde se genera el programa para su ejecución (Es un disco virtual de memoria RAM muy rápido y sin desgaste)					
	Proyecto								c:\4UOC\PEC1\					
		Ficheros Raíz proyecto												
				.editorconfig					Configuración editor VSC					
				.gitignore					Carpetas y ficheros que no tiene que copiar git					
				.posthtmlrc					Fichero de configuración posthtml					
				.htmlvalidate.json					Fichero de configuración de html-validate					
				.stylelintrc.json					Fichero de configuración de stylintrc					
				package.json					Fichero de configuración de node					
				package-lock.json					Fichero de configuración de node					
				README.md					Fichero donde explico el programa					
				ip.cmd					Instalar todas las dependencias node del proyecto					
				git-z.cmd					Enviar al servidor GITHUB el programa ya compilado (destino)					
				git-c.cmd					Enviar al servidor GITHUB la carpeta del proyecto, con todos los fuentes.					
				e.cmd					Para compilar el proyecto (npm run sdz)					
				debug-none.cmd					Para quitar todos los colores de fondo que utilizo para visualizar las cajas					
				debug-inline.cmd					Para añadir colores de fondo a las cajas					
				d.cmd					Para cambiar las textos-etiquetas de los ficheros html por los textos situados en cambia-variable.js					
				copia.cmd					Para realizar copias de seguridad de los fuentes a 3 discos distintos, uno de ellos externo (USB)					
				compimirfotos.cmd					Comprime las fotos y las distribuye en carpetas fuera del proyecto					
		/src							En esta carpeta se encuentran todos los fuentes					
				FotosParcel.xlsm					Hoja de cálculo para generar el contenido de los ficheros cambia-variable.js y listados.js					
				index.html					Fichero de arranque del programa contiene 3 textos y diapositivas de fotos y videos					
				010categoria.html					Contiene una lista de descripción con 5 ciudades-detalle, hay enlaces a páginas web externas y enlaces a páginas web internas: 011detalle-alcobasa.html, 012detalle-fatima.html, 013detalle-nazare.html, 014detalle-obidos.html y 015detalle-sintra.html.					
				020presentacion.html					Una breve descripción, dos fotografías y un video de Nazaré					
				030enlaces.html					Lista de fuentes de donde he sacado imágenes, los textos y una lista de agradecimientos (mirar el agradecimiento a mi esposa)					
			0100detalle-base.html						Antes de compilar el proyecto copio este fichero como: 011detalle-alcobasa.html, 012detalle-fatima.html, 013detalle-Nazaré.html, 014detalle-obidos.html y 015detalle-sintra.html. Una vez copiados cambio el nombre de Nazaré por el nombre de otra ciudad, de esta forma cuando tengo que modificar algo, solo modifico este fichero (0100detalle-base.html). Los textos de cada ciudad son modificados en la carpeta destino por cambia-lorem-por-buenos-en-destino.js. 					
									De esta forma, con un solo fichero original puedo tener de 1 a infinitas ciudades. 					
				011detalle-alcobasa.html					Ficheros copia de 0100detalle-base.html,  al crearlos modifico los textos y la ciudad.					
				012detalle-fatima.html										
				013detalle-nazare.html										
				014detalle-obidos.html										
				015detalle-sintra.html										
														
			Ficheros Parciales HTML						Todos comienzan con subrayado					
				_11cabecera-páginas.html					Contiene el header, el cual esta compuesto por el icono de Nazaré y el menu principal, se añade al principio a todos los ficheros html 					
				_12pie-páginas.html					Contiene footer ( el pie de página ) , éste está compuesto por un link a una página web con  a las previsiones de olas de Nazaré, una entrada de email, botón, iconos de Facebook, Instagram y WhatsApp, link y mi @ (me ha hecho gracia poner mi año de nacimiento)					
				_13dipositivas_horizontales.html					Estos tres ficheros controlan las diapositivas, cuando son llamados el programa padre le pasa la ciudad que hay que reproducir, Ejecuta el siguiente script <script type="module" src="/src/12-js/d/diapositiva_video--{{ciudad}}.js"></script>. Cada ciudad tiene su propio JS, para fotos horizontales, fotos verticales y videos. Dichos JS son copias modificadas de diapositiva_fotos-horizontal-Nazaré.js, diapositiva_fotos-vertical-Nazaré.js y diapositiva_video-Nazaré.js. En total habrá 3 * N.º ciudades ficheros JS,  estos ficheros los crea ejecuta-cmd.js antes de compilar.					
				_14dipositivas_verticales.html										
				_15dipositivas_videos.html										
				_16dipositivas_fotos.html					No lo utilizo, es para sustituir ha  _13dipositivas_horizontales.html y a _14dipositivas_verticales.html					
														
		/11-scss							Es la carpeta donde están los ficheros SCSS					
				inicio.scss					Contiene los import de los ficheros _*.scss					
				_debug.scss					Contiene $debug:none; o $debug:inline; antes de compilar ejecuto que se copie _debug-inline.scss o _debug-none.scss sobre este fichero					
				_debug-inline.scss					Para que se vean ciertas etiquetas y colores de fondo saltones, versión desarrollo					
				_debug-none.scss					Lo contrario que _debug-inline.scss, versión producción					
				_variables.scss					Para todos los ficheros html					
				_index.scss					Para el fichero index.html					
				_010categoria.scss					Para el fichero 010caregoria.html					
				_020presentacion.scss					Para el fichero 020presentacion.html					
				_030enlaces.scss					Para el fichero 030enlaces.html					
				_11cabecera-de-páginas.scss					Para el fichero _11cabecera-páginas.html (Header)					
				_12pie-de-páginas.scss					Para el fichero _12pie-de-páginas.html (Footer)					
				_13-14-15diapositivas.scss					Para todas las diapositivas de los ficheros: _13dipositivas_horizontales.html, _14dipositivas_verticales.html y _15dipositivas_videos.html					
				inicio.css.map					Lo genera el compilador scss, sirve para developers tools					
														
		12-js\							Contiene todos los ficheros JS del programa					
				mi.js					Para escribir las coordenadas del ratón el ancho y alto de la ventana del explorador en el título. Haciendo zoom con la rueda del ratón del 30% a 500% puedo hacer la que la ventana del explorador pase de ancho 200 pixeles a 5000 pixeles, es muy cómodo, para ver como se comporta con distintos anchos el programa. 					
				main.js					Escribe Hola mundo					
				listados.js					Contiene arrays con los datos, de las fotografías y videos, los utilizan los ficheros diapositiva_fotos-Nazaré.js,diapositiva_fotos-vertical-Nazaré.js y diapositiva_fotos-horizontal-Nazaré.js. Estos datos están creados con la hoja de cálculo FotosParcel.xlsm					
				ejecuta-debug-none.js					Ejecuta debug-none.cmd, modo producción					
				ejecuta-debug-inline.js					Ejecuta debug-inline.cmd modo desarrollo					
				cambia-variable.js					Contiene una array para cambiar los textos-etiquetas por textos que verá el usuario					
				cambia-lorem-por-buenos-en-origen.js					Para cambiar en los ficheros fuente los textos-etiquetas por textos usuario					
				cambia-buenos-por-lorem-en-origen.js					Para revertir el proceso anterior					
				cambia-lorem-por-buenos-en-destino.js					Para cambiar en los ficheros destino los textos-etiquetas por textos usuario. Si estoy en modo desarrollo lo ejecuto en otra ventana de CMD					
			d_origen\						Carpeta que contiene los ficheros origen de diapositivas 					
				diapositiva_video-Nazaré.js					Controla la carga de videos, la ciudad por defecto es nazaré					
				diapositiva_fotos-vertical-Nazaré.js					Controla la carga de las fotos verticales, la ciudad por defecto es nazaré					
				diapositiva_fotos-horizontal-Nazaré.js					Controla la carga de las fotos verticales, la ciudad por defecto es nazaré					
				diapositiva_fotos-Nazaré.js					No lo utilizo, es para controlar las fotos horizontales y verticales					
			d\											
				diapositiva_fotos--alcobasa.js					Son ficheros copiados de d_origen y modificados según la ciudad. La secuencia de ejecución es: cuando se abre por ejemplo el fichero 013detalle-nazare.html. Cargo una sola fotografía horizontal y vertical y un solo video. Al pulsar las fechas o al cabo de 5 segundos el programa elige la siguiente foto/video y lo carga. Según el ancho de la ventana que aloja las fotos o videos, cargo un tamaño u otro. Ejemplo para anchos mayores de 1000 pixeles, cargo fotografías de 900 pixeles, para anchos de 600 a 1000 pixeles cargo fotografías de 600 pixeles, para anchos menores de 600 pixeles cargo fotografías de 300 pixeles. Con los videos hago una cosa parecida.					
				diapositiva_fotos--fatima.js										
				diapositiva_fotos-horizontal--alcobasa.js										
				diapositiva_fotos-horizontal--fatima.js										
				diapositiva_fotos-horizontal--Nazaré.js										
				diapositiva_fotos-horizontal--obidos.js										
				diapositiva_fotos-horizontal--sintra.js										
				diapositiva_fotos--Nazaré.js										
				diapositiva_fotos--obidos.js										
				diapositiva_fotos--sintra.js										
				diapositiva_fotos-vertical--alcobasa.js										
				diapositiva_fotos-vertical--fatima.js										
				diapositiva_fotos-vertical--Nazaré.js										
				diapositiva_fotos-vertical--obidos.js										
				diapositiva_fotos-vertical--sintra.js										
				diapositiva_video--alcobasa.js										
				diapositiva_video--fatima.js										
				diapositiva_video--Nazaré.js										
				diapositiva_video--obidos.js										
				diapositiva_video--sintra.js										
														
			13-imagenes\no-propias\						Contiene los ficheros capturados de internet					
			13-imagenes\propias\						Contiene las fotos y videos hechas por mi esposa y por mí					
				alcobasa\					Fotos y videos alcobas					
					mp4\				Videos mp4					
						320\			Videos baja resolución, los utilizo cuando el ancho de la ventana es menor de 600px					
						640\			Videos media resolución, los utilizo cuando el ancho de la ventana es mayor de 600px y menor 1000 pixeles					
						1280\			Videos alta resolución, los utilizo cuando el ancho de la ventana es mayor de 1000px					
					png\				Fotos pgn					
						300\1\			Fotos horizontales de baja resolución, los utilizo cuando el ancho de la ventana es menor de 600px					
						300\6\			Fotos verticales de baja resolución, los utilizo cuando el ancho de la ventana es menor de 600px					
						600\1\			Fotos horizontales de media resolución, los utilizo cuando el ancho de la ventana es mayor de 600px y menor 1000 pixeles					
						600\6\			Fotos verticales de media resolución, los utilizo cuando el ancho de la ventana es mayor de 600px y menor 1000 pixeles					
						900\1\			Fotos horizontales de alta resolución, los utilizo cuando el ancho de la ventana es mayor de 1000px					
						900\6\			Fotos verticales de alta resolución, los utilizo cuando el ancho de la ventana es mayor de 1000px					
				fatima\					La distribución es la misma para las 5 ciudades, la generación de las carpetas, compresión y copia a cada carpeta se realiza mediante el compimirfotos.cmd y la macro CreaPestañaTodas del fichero FotosParcel.xlsm, que distribuye y renombra las fotos, crea un array en la pestaña "Todas",  la columna 10 se copia y se pega en el fichero listados.js.  Después de muchos años en la programación cada herramienta resuelve más fácil algunos problemas. Lo difícil es conjuntar varias herramientas.					
				nazare\										
				obidos\										
				sintra\										
														
														
Herramientas														
	Hardware													
		 Proveedor de Red							Móvil 5G					
		 Ordenador							Portátil y ordenador de sobremesa					
		 Pantallas							Monitores de 5k , 4k, 2k y 1k					
	Software Externo													
		Sistema Operativo							Windows 10 y 11					
			2. Accesos directos a programas											
				CMD										
					Destino				C:\Windows\System32\cmd.exe					
					Iniciar en				C:\4UOC\PEC1\ Carpeta del proyecto					
				VSC					C:\Users\renfe\AppData\Local\Programs\Microsoft VS Code\Code.exe "C:\4UOC\PEC1\"					
				Comentario					Si tengo varios proyectos, creo varias parejas de iconos.					
		Programas Externos												
			Editor de textos											
				VSC Extensiones Stylint					Errores css, js etc					
			Imágenes											
				Convertidor - Compresor de imágenes										
					i_view64.exe				Los ficheros jpgde una carpeta los convierte a png, cambiando la resolución a la deseada					
									Los he convertido a 3 anchos distintos 900x675, 600x338 y 300x169 pixeles. Al visualizar las fotos,  el programa js elige que tamaño de foto visualiza, dependiendo del marco.					
					iw.cmd				Ejecuta i_view.exe para varias carpetas					
			Videos					Recortador - Convertidor - Compresor de videos						
					FreeMake.exe									
									Es un programa que permite recortar un video, quitar el sonido y convertirlo a formato HTML5 (mp4)					
									Admite de 10 en 10 ficheros, los he convertido a 3 resoluciones distintas, con el ordenador de sobremesa, que es más potente.					
									Los he convertido en 640x360, 420x 236 y 312x176, el programa js al visualizar los videos elige qué tamaño hay que visualizar dependiendo del tamaño de la ventana					
	Programación													
		Programas NO propios												
			Node						Git es un software de control de versiones diseñado por Linus Torvalds					
			git						Compilador html, css ,scss, js etc…. Es el motor.					
			Parcel						Elimina ficheros de las carpetas que se pasa por parámetro antes de la ejecución de parcel					
			rimraf						Parcel lo utiliza para comprimir fotos, a la hora de compilar el programa					
			sharp						Detecta los errores de escritura de los ficheros fuente					
			styleint						En VSC detecta errores de escritura.					
			Compresor de ficheros		7zr.exe				Programa gratuito para comprimir ficheros. Antes de ejecutar parcel, node ejecuta ejecuta-cmd.js que copia mis ficheros a una carpeta, acto seguido comprimo dicha carpeta a tres discos ditintos (uno de ellos externo USB), con nombre fecha y hora actual. 					
			node-replace											
									La idea es escribir textos-marcas en los  ficheros html, crear una variable en JS en el  fichero listados.js, la marca y su traducción . He creado un programa en JS, que lee la variable, ejecuta node_replace, con el fichero, la marca y la traducción de la variable (array) situada en listados.js					
									El fichero, la marca y la traducción, las escribo en la hoja de cálculo FotosParcel.xlsm, pestaña traducir, que crea la variable, la cual la pego en el fichero listados.js					
		Programas propios												
			Visual Basic para Aplicaciones de Excel											
					 FotosParcel.xlsm									
									Esta hoja de cálculo contiene un programa en VBA, que lee ficheros de fotografías de una carpeta y los copia a carpetas del proyecto, según ciudad, tamaño y  si es horizontal y vertical.					
									Contiene la variable de traducción textos-etiqueta a textos					
			JavaScript						ejecuta-cmd.js					
				Antes de ejecutar Parcel					Node ejecuta ejecuta-cmd.js					
						ejecuta-cmd.js			Este programa lo ejecuta npm antes de ejecutar parcel y hace los siguiente					
									Copia el fichero 0100detalle-base.html como 012detalle-alcobasa/Fátima/nazare/obidos.html y en los ficheros copia cambio nazare por alcobasa  y Nazaré por la Alcobaça, para las 5 ciudades.					
									Copio diapositiva_fotos-horizontal-nazare.js a diapositiva_fotos-horizontal--ciudad.js y remplazo nazare por la ciudad					
									Copio diapositiva_fotos-vertical-nazare.js a diapositiva_fotos-vertical--ciudad.js y remplazo nazare por la ciudad					
									Copio diapositiva_video-nazare.js a diapositiva_fotos-horizontal--ciudad.js y remplazo nazare por la ciudad					
									De esta forma tengo 4 ficheros originales que se convierten en 20 ficheros muy parecidos, solo cambia el nombre de la ciudad. Podría lanzar las 15 diapositivas en un solo fichero html.					
									Crear copia de seguridad antes de la ejecución, ejecutando un fichero bat copia.cmd, el cual copia las carpetas que me interesan a otra carpeta (antes borra todos los ficheros de dicha carpeta) a continuación, comprime dicha carpeta con nombre del fichero comprimido copia_aaaa_mm_dd_hh_mm_ss-npm.zip, este fichero lo creo en tres discos distintos uno de ellos USB (a lo largo de mi vida se me han roto muchos discos, 2 en un día)					
														
						rimraf			Este programa sirve para eliminar los ficheros de la carpeta destino que le pasamos como parámetro					
					Cambiar las etiquetas de texto por su traducción									
				cambia-lorem-por-buenos-en-origen.js					Este programa cuando se ejecuta, lee un array declarado en el fichero cambia-variable.js, el cual contiene la siguiente información:					
									011detalle-alcobasa.html', 'p2-cambiar', '<span class=oculto>7</span>Tiene una población de 54973 habitantes',					
									El primer campo es el nombre del fichero, el segundo campo es la etiqueta que está puesta en dicho fichero, el tercero lo que quedará dentro del fichero.					
									Todos las etiquetas origen tienen que ser distintas dentro del mismo fichero					
									Las etiquetas destino siempre son distintas debido al id que añado dentro del span el cual está oculto, de esta forma he creado otro programa inverso que lee el mismo array y cambia las etiquetas destino por las de origen, el programa se llama cambia-buenos-por-lorem-en-origen.js					
				Después de ejecutar Parcel										
				cambia-lorem-por-buenos-en-destino.js					Este programa hace lo mismo que cambia-lorem-por-buenos-en-origen.js, lee el mismo array situado en  cambia-variable.js y cambia las etiquetas en la carpeta destino.					
									Si parcel esta en modo vigilante de cambios, lo que hago es abrir otro entorno CMD, y ejecuto npm run lorem-por-buenos-en-destino, y refresco el navegador					
			Explicación de la practica											
						index.html			Carga _11cabecera-páginas.html el cual contiene el header					
									Diapositivas fotografías horizontales y diapositivas de videos de Nazaré.					
									Carga _12pie-páginas.html el cual contiene el pie de página					
									Carga main.js					
									Carga mi.js					
						010categoria.html			Carga _11cabecera-páginas.html el cual contiene el header					
									Contiene una lista de descripción con las cinco ciudades, cada ciudad su nombre, una fotografía, un link para ver las diapositivas de fotos horizontales, verticales y videos de dicha ciudad.					
									Además, cada ciudad tiene un link a una página web externa que explica la ciudad					
									Carga _12pie-páginas.html el cual contiene el pie de página					
									Carga main.js					
									Carga mi.js					
									Los ficheros del 011 al 015 son copias casi exactas del fichero 0100detalle-base.html, solo se diferencian por el nombre de la ciudad, son creados antes de ejecutar parcel por el programa ejecuta-cmd.js, el cual además de crear los ficheros html, también crea 15 ficheros js, que visualizan las diapositivas de cada ciudad, también ejecuta un fichero bat el cual crea 3 copias de seguridad en tres discos distintos. En total se crean 15 ficheros js y 5 fichero html. Como hay 5 ficheros casi iguales (solo se diferencian con el nombre de la ciudad), hay que cambiar todas las etiquetas-textos por textos que verá el usuario. Esto lo realizo en la carpeta destino con el programa cambia-lorem-por-buenos-en-destino.js, si estoy en modo desarrollo abro otra ventana CMD, y ejecuto npm run lorem-por-buenos-en-destino. De está forma, cambia todos los textos-etiquetas en destino.					
						011detalle-alcobasa.html								
						012detalle-fatima.html								
						013detalle-nazare.html								
						014detalle-obidos.html								
						015detalle-sintra.html								
						0100detalle-base.html			Carga _11cabecera-páginas.html el cual contiene el header					
									Crea un título h2 y 3 tres párrafos.					
									Crea una lista de descripción con cinco ítems.					
									Todos los textos pueden ser cargados antes de ejecutar parcel con el programa cambia-lorem-por-buenos-en-origen.js en la carpeta src, o después de ejecutar parcel en la carpeta destino con el programa cambia-lorem-por-buenos-en-destino.js ejecutándolo en otra sesión de cmd.					
									Para restituir las etiquetas utilizo el programa cambia-buenos-por-lorem-en-origen.js					
									Cargo el fichero _13dipositivas_horizontales.html,  el cual crea una ventana de diapositivas de fotos horizontal controlada por el fichero d_origen/diapositiva_fotos-horizontal-nazare.js. Para cada ciudad hay un fichero js distinto, situado en la carpeta d/					
									Cargo el fichero _14dipositivas_verticales.html,  el cual crea una ventana de diapositivas de fotos verticales controlada por el fichero d_origen/diapositiva_fotos-vertical-nazare.js. Para cada ciudad hay un fichero js distinto, situado en la carpeta d/					
									Cargo el fichero _15dipositivas_video.html,  el cual crea una ventana de diapositivas de videos horizontales controlada por el fichero d_origen/diapositiva_videos-nazare.js. Para cada ciudad hay un fichero js distinto, situado en la carpeta d/					
					Funcionamiento de las diapositivas.									
									Si no se pulsa sobre los botones >  y < cada 5 segundos pasa a la siguiente foto, y en el caso de los videos cuando se termina el video pasa al siguiente video, el programa js tiene en una variable la duración de los videos.					
									Si se pulsa a los botones < o > se pasa a la siguiente foto o video.					
									Si se pulsa dos veces con el ratón sobre las fotos o los videos, aparecen dicha foto o video a pantalla completa.					
									Solamente se carga al principio 2 fotos y un video. Al cambiar de foto o video cargo la siguiente foto.					
									El programa controla el ancho de la ventana de la diapositiva y según su ancho cargo fotos de 300*200, 600*400 o 900*600 píxeles, con los videos hago lo mismo según el ancho de la ventana cargo videos de 150 píxeles, 300 píxeles o 450 píxeles de ancho					
									Todas  las fotos y videos están en carpetas de ciudad, disposición y tamaño.					
									En el fichero listado.js he creado un array que contiene todos los datos de las fotos, a los nombres de las fotos hay que aplicar la función new URL('ruta',import.meta.url), este nombre de fichero será el que genera PARCEL en la carpeta destino.					
									En  variables de este fichero escribo el comentario de cada foto y video. 					
									En una variable de este fichero, escribo cuantos segundos dura cada video para poder pasar al siguiente cuando se acabe la reproducción.					
									Casi todas las variables que están en el fichero listados.js están escritas con la ayuda de macros (VBA) de Excel.					
									Tanto las fotos como los videos, están realizadas por mi esposa y por mí, en dos viajes que hicimos a Portugal. 					
									Con un programa en VBA de Excel, renombro todos los ficheros al formato aaaa_mm_dd hh_ss @Comentario@.jpg o aaaa_mm_dd hh_ss @Comentario@#duracion.mkv. De esta forma, me es fácil seleccionar los ficheros.					
									Las variables se crean con la hoja de cálculo FotosParcel.xlsm función CreaPestañaTodas					
					020presentacion.html									
									Carga _11cabecera-páginas.html el cual contiene el header					
									Crea un título h2 y dos h3.					
									Creo picture con dos sources con imágenes de Nazaré					
									Creo una imagen de Narré					
									Creo un video de Nazaré					
									Carga _12pie-páginas.html el cual contiene el pie de página					
									Carga main.js					
									Carga mi.js					
					030enlaces.html									
									Carga _11cabecera-páginas.html el cual contiene el header					
									Una lista de enlaces a las imágenes/iconos que he copiado de internet					
									Una lista de enlaces a los textos que he copiado de internet					
									Una lista de agradecimientos. (Mirar el agradecimiento a mi esposa)					
									Carga _12pie-páginas.html el cual contiene el pie de página					
									Carga main.js					
									Carga mi.js					
