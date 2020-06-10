SubProceso v <- valid ( c )
	Definir numerosvalidos Como Cadena;
	numerosvalidos<-"0123456789";
	Definir i,iv2 como entero;
    Definir v Como Logico;
	
	Para iv2<-0 Hasta Longitud(c)-1 Con Paso 1 Hacer
		
		Para i<- 0 Hasta 9 Con Paso 1 Hacer
			
			Si Subcadena(numerosvalidos,i,i) = SubCadena(c,iv2,iv2) Entonces
				v <- Verdadero;
				i <- 10;
			SiNo
				v <- Falso;
				
			FinSi
		FinPara
		Si v = Falso Entonces
			iv2<- Longitud(c);
		FinSi
		
	FinPara
	
FinSubProceso

Algoritmo banco
	
	Definir ch Como Cadena;
	Definir opcion, account,password, passwordsave Como Entero;
	Definir logbank2,logpass2,account2,password2 Como Cadena;
	Definir cuentaCreada como Logica;
	cuentaCreada<-Falso;
	Escribir "Bienvenido a Bancos SBV";
	esperar 1 segundos;
	Escribir "Tu seguridad como prioridad()";
	Escribir "<------------------------------------------------$";
	Escribir "¡Cargando nuestro sistema!()";
	esperar 4 segundos;
	Repetir
		Limpiar Pantalla;
		Escribir "<interface menu v1.0> santiago.romero";
		Escribir "";
		Escribir "\n1- Ingresar()";
		Escribir "\n2- Registrarme()";
		Escribir "\n3- Salir()";
		Escribir "";
		Escribir "[bot]: Seleccione una de las opciones"; 
		leer ch;
		opcion<-0;
		Si valid(ch) Entonces
			opcion <- ConvertirANumero(ch);
		
		SiNo
			Escribir "[bot]: Opcion no valida, Vuelva a escribir la opcion";
			
		FinSi
		Limpiar Pantalla;
		Segun opcion Hacer
			1:  
				
				Si cuentaCreada = Verdadero Entonces
					Repetir
						Escribir "";
						Escribir "Cuenta Bancaria()";
						Escribir "Ingrese su Usuario Bancario";
						Escribir "";
						Escribir "[bot]:Siempre cuida tus datos"; 
						leer logbank2;
						Escribir "Ingrese su Contraseña";
						leer logpass2;
						Si logbank2 = account2 y logpass2 = password2 Entonces
							Escribir "Bienvenido de nuevo ", account2;
							opcion<-3;
						SiNo
							Escribir "[Bot]Usuario y Contraseña incorrectos";
						FinSi
						
					Hasta Que opcion = 3;
				SiNo
					Repetir
						Limpiar Pantalla;
						Escribir "[Bot] Aun no tienes cuentas registradas";
						Escribir "[Bot] Volviendo al menu";
						Escribir "\n0 Quieres volver al menu?()";
						leer ch;
						Si valid(ch) Entonces
							opcion <- ConvertirANumero(ch);
							Escribir "[Bot] Volviendo al menu en su brevedad";
						SiNo
							Escribir "[bot]: Opcion no valida, Vuelva a escribir la opcion";
						FinSi
						
					Hasta Que opcion = 0;
				FinSi
				
			2:
				Escribir "Registrar Cuenta Bancaria()";
				Escribir "";
				Escribir "Ingrese Nombre de Cuenta()";
				leer account2;
				Escribir "Ingrese Contraseña para la cuenta()";
				leer password2;
				Repetir
					Escribir "Ingrese Clave de Recuperacion()";
					Escribir "[bot]Porfavor solo usa numeros";
					leer ch;
					Limpiar Pantalla;
					Si valid(ch) Entonces
						passwordsave <- ConvertirANumero(ch);
						Escribir "[Bot] Su clave de recuperacion es ",passwordsave;
						Escribir "[Bot] Suguremimos no olvidarla";
						
					SiNo
						Escribir "[bot]: Opcion no valida, Vuelva a escribir la Clave";
					FinSi
					
				Hasta Que valid(ch); 
				Escribir "¿Confirmar los datos asignados a la cuenta?()";
				Escribir "n1-(Si) | n2-(No)";
				leer opcion;
				Si opcion = 1 Entonces
					Escribir "Cuenta creada con exito";
					cuentaCreada<-Verdadero;
				SiNo
					Escribir "[Bot] Volviendo al menu, No tardaremos"; 
					Escribir "";
					Limpiar Pantalla;
					Escribir " _. . ._";
					Esperar 5 segundos;
					Limpiar Pantalla;
					Escribir "";
					Escribir "Presione cualquier tecla para Volver"; 
					Esperar Tecla;
				FinSi
			3:
				Escribir "[Bot] Saliendo del sistema";
		FinSegun
		
	Hasta Que opcion = 3;
FinAlgoritmo
