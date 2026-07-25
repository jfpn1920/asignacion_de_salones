Algoritmo asignacion_de_salones
	Definir opcion, totalSalones Como Entero
	Definir i, j, idBuscar Como Entero
	Definir encontrado Como Logico
	Definir asignaciones Como Entero
	Definir disponibles, ocupados, mantenimiento Como Entero
	Dimension id[100]
	Dimension salon[100]
	Dimension curso[100]
	Dimension jornada[100]
	Dimension capacidad[100]
	Dimension docente[100]
	Dimension materia[100]
	Dimension horario[100]
	Dimension estado[100]
	totalSalones <- 0
	//------------------------------------------//
	//--|menu_principal_asignacion_de_salones|--//
	//------------------------------------------//
	Repetir
		Escribir "menu principal asignacion de salones"
		Escribir "1) registrar asignacion"
		Escribir "2) editar asignacion"
		Escribir "3) eliminar asignacion"
		Escribir "4) buscar asignacion"
		Escribir "5) listar asignaciones"
		Escribir "6) ver detalles de la asignacion"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//--------------------------//
			//--|registrar_asignacion|--//
			//--------------------------//
			1:
				Escribir "registrar asignacion"
				Si totalSalones < 100 Entonces
					totalSalones <- totalSalones + 1
					id[totalSalones] <- totalSalones
					Escribir "ingrese el nombre del salon:"
					Leer salon[totalSalones]
					Escribir "ingrese el curso o grado:"
					Leer curso[totalSalones]
					Escribir "ingrese la jornada:"
					Leer jornada[totalSalones]
					Escribir "ingrese la capacidad del salon:"
					Leer capacidad[totalSalones]
					Escribir "ingrese el nombre del docente:"
					Leer docente[totalSalones]
					Escribir "ingrese la materia:"
					Leer materia[totalSalones]
					Escribir "ingrese el horario:"
					Leer horario[totalSalones]
					estado[totalSalones] <- "ocupado"
					Escribir "asignacion registrada correctamente."
				SiNo
					Escribir "no hay espacio para registrar mas asignaciones."
				FinSi
			//-----------------------//
			//--|editar_asignacion|--//
			//-----------------------//
			2:
				Escribir "editar asignacion"
				Si totalSalones = 0 Entonces
					Escribir "no hay asignaciones registradas."
				SiNo
					Escribir "datos registrados:"
					Para i <- 1 Hasta totalSalones Hacer
						Escribir id[i], " | ", salon[i], " | ", curso[i], " | ", jornada[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la asignacion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalSalones Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "nueva informacion:"
							Escribir "ingrese el nombre del salon:"
							Leer salon[i]
							Escribir "ingrese el curso o grado:"
							Leer curso[i]
							Escribir "ingrese la jornada:"
							Leer jornada[i]
							Escribir "ingrese la capacidad:"
							Leer capacidad[i]
							Escribir "ingrese el nombre del docente:"
							Leer docente[i]
							Escribir "ingrese la materia:"
							Leer materia[i]
							Escribir "ingrese el horario:"
							Leer horario[i]
							Escribir "ingrese el estado:"
							Leer estado[i]
							Escribir "asignacion editada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una asignacion con ese id."
					FinSi
				FinSi
			//-------------------------//
			//--|eliminar_asignacion|--//
			//-------------------------//
			3:
				Escribir "eliminar asignacion"
				Si totalSalones = 0 Entonces
					Escribir "no hay asignaciones registradas."
				SiNo
					Escribir "datos registrados:"
					Para i <- 1 Hasta totalSalones Hacer
						
						Escribir "id: ", id[i]
						Escribir "salon: ", salon[i]
						Escribir "curso: ", curso[i]
						Escribir "jornada: ", jornada[i]
						Escribir "capacidad del salon: ", capacidad[i]
						Escribir "docente: ", docente[i]
						Escribir "materia: ", materia[i]
						Escribir "horario: ", horario[i]
						Escribir "estado: ", estado[i]
					FinPara
					Escribir "ingrese el id de la asignacion que desea eliminar:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalSalones Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "asignacion seleccionado"
							Escribir "id: ", id[i]
							Escribir "salon: ", salon[i]
							Escribir "curso: ", curso[i]
							Escribir "jornada: ", jornada[i]
							Escribir "capacidad del salon: ", capacidad[i]
							Escribir "docente: ", docente[i]
							Escribir "materia: ", materia[i]
							Escribir "horario: ", horario[i]
							Escribir "estado: ", estado[i]
							Escribir "¿esta seguro de eliminar esta asignacion?"
							Escribir "1) si"
							Escribir "2) no"
							Leer opcionEliminar
							Si opcionEliminar = 1 Entonces
								Si i < totalSalones Entonces
									Para j <- i Hasta totalSalones - 1 Hacer
										id[j] <- id[j + 1]
										salon[j] <- salon[j + 1]
										curso[j] <- curso[j + 1]
										jornada[j] <- jornada[j + 1]
										capacidad[j] <- capacidad[j + 1]
										docente[j] <- docente[j + 1]
										materia[j] <- materia[j + 1]
										horario[j] <- horario[j + 1]
										estado[j] <- estado[j + 1]
									FinPara
								FinSi
								totalSalones <- totalSalones - 1
								Escribir "asignacion eliminada correctamente."
							SiNo
								Escribir "eliminacion cancelada."
							FinSi
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una asignacion con ese id."
					FinSi
				FinSi
			//-----------------------//
			//--|buscar_asignacion|--//
			//-----------------------//
			4:
				Escribir "buscar asignacion"
				Si totalSalones = 0 Entonces
					Escribir "no hay asignaciones registradas."
				SiNo
					Escribir "ingrese el id de la asignacion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalSalones Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir " asignacion encontrado"
							Escribir "id: ", id[i]
							Escribir "salon: ", salon[i]
							Escribir "curso: ", curso[i]
							Escribir "jornada: ", jornada[i]
							Escribir "capacidad: ", capacidad[i]
							Escribir "docente: ", docente[i]
							Escribir "materia: ", materia[i]
							Escribir "horario: ", horario[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una asignacion con ese id."
					FinSi
				FinSi
			//-------------------------//
			//--|listar_asignaciones|--//
			//-------------------------//
			5:
				Escribir "listar asignaciones"
				Si totalSalones = 0 Entonces
					Escribir "no hay asignaciones registradas."
				SiNo
					Para i <- 1 Hasta totalSalones Hacer
						Escribir "id: ", id[i]
						Escribir "salon: ", salon[i]
						Escribir "curso: ", curso[i]
						Escribir "jornada: ", jornada[i]
						Escribir "capacidad: ", capacidad[i]
						Escribir "docente: ", docente[i]
						Escribir "materia: ", materia[i]
						Escribir "horario: ", horario[i]
						Escribir "estado: ", estado[i]
					FinPara
				FinSi
			//-----------------------------//
			//--|ver_detalles_asignacion|--//
			//-----------------------------//
			6:
				Escribir "ver detalles de la asignacion"
				Si totalSalones = 0 Entonces
					Escribir "no hay asignaciones registradas."
				SiNo
					Escribir "ingrese el id de la asignacion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalSalones Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles de la asignacion"
							Escribir "id: ", id[i]
							Escribir "salon: ", salon[i]
							Escribir "curso: ", curso[i]
							Escribir "jornada: ", jornada[i]
							Escribir "capacidad: ", capacidad[i]
							Escribir "docente: ", docente[i]
							Escribir "materia: ", materia[i]
							Escribir "horario: ", horario[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una asignacion con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalSalones = 0 Entonces
					Escribir "no hay asignaciones registradas."
				SiNo
					asignaciones <- 0
					disponibles <- 0
					ocupados <- 0
					mantenimiento <- 0
					Para i <- 1 Hasta totalSalones Hacer
						asignaciones <- asignaciones + 1
						Si estado[i] = "disponible" Entonces
							disponibles <- disponibles + 1
						FinSi
						Si estado[i] = "ocupado" Entonces
							ocupados <- ocupados + 1
						FinSi
						Si estado[i] = "mantenimiento" Entonces
							mantenimiento <- mantenimiento + 1
						FinSi
					FinPara
					Escribir "estadisticas de salones"
					Escribir "total de asignaciones: ", asignaciones
					Escribir "salones disponibles: ", disponibles
					Escribir "salones ocupados: ", ocupados
					Escribir "salones en mantenimiento: ", mantenimiento
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar asignacion de salones."
			De Otro Modo:
				Escribir "opcion no valida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo