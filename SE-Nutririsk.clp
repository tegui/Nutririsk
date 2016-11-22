;*********************************************
;********** John James Culma Cadavid
;********** Julián David Amórtegui Franco
;**********
;********** Universidad Nacional de Colombia
;********** Sede Medellín
;*********************************************


;********** Plantillas

(deftemplate paciente
	(slot genero (type STRING))
	(slot edad (type INTEGER))
	(slot estrato (type INTEGER))
)

(deftemplate antecedentes
	(slot nombre (type STRING))
)



;********** Initial Facts

(deffacts initial-fact
	
	(paciente 
		(genero "unknown")
		(edad 0)
		(estrato -1)
	)
	(DM2)
	(gastritis)
	(anemia)
	(obesidad)
	(ECV)
	(testing)
)


;*****************************************************************************************"
;*                               MODULO   EXPLICATIVO                                    *"
;* 											 *" 
;*****************************************************************************************" 
(deffunction ModExpZero()
(printout t "" crlf)
(printout t "+---------------------------------------------------------------------------------------+" crlf)
(printout t "| EXPLICACIÓN:                                                                          " crlf)
(printout t "| NUTRIRISK es un sistema experto con el proposito de hacer un diagnóstico temprano     " crlf)
(printout t "| de posibles enfermedades ocasionadas por malos hábitos nutricionales y recomendar     " crlf)
(printout t "| posibles acciones que debe tomar el paciente de acuerdo a los resultados arrojados    " crlf)
(printout t "| por el sistema experto	" crlf)
(printout t "+---------------------------------------------------------------------------------------+" crlf)
)

(deffunction Despedida()
(printout t "+-----------------------------------------------------------------------------------------+" crlf)
(printout t "| Gracias por utilizar NUTRIRISK, esperamos que los diagnósedentariosticos arrojados por el sistema " crlf)
(printout t "| hayan sido de utilidad para usted                                              " crlf)
(printout t "+-----------------------------------------------------------------------------------------+" crlf)
)

(deffunction ModExpAntecedentesFamiliares ()
(printout t "+---------------------------------------------------------------------------------------+" crlf)
(printout t "| EXPLICACIÓN:                                                                          " crlf)
(printout t "| Son las enfermedades que alguno de sus familiares ha tenido anteriormente             " crlf)
(printout t "+---------------------------------------------------------------------------------------+" crlf)
)

(deffunction ModExpAntecedentesPersonales ()
(printout t "+---------------------------------------------------------------------------------------+" crlf)
(printout t "| EXPLICACIÓN:                                                                          " crlf)
(printout t "| Son las enfermedades que ha tenido usted anteriormente                                " crlf)
(printout t "+---------------------------------------------------------------------------------------+" crlf)
)

(deffunction ModExpFrecuencias()
(printout t "+---------------------------------------------------------------------------------------+" crlf)
(printout t "| Para esta sección por favor marque la cantidad de                                     " crlf)
(printout t "| vasos, tajadas o porciones que consume de ciertos alimentos teniendo en cuenta        " crlf)
(printout t "| seleccionar la frecuencia de consumo (Diario, semanal, mensual u ocasional),          " crlf)
(printout t "| Por ejemplo:					                                                          " crlf)
(printout t "| Cantidad de Frutas que consume: 6   (Press Enter)                                 " crlf)
(printout t "| (opcion 2) 2.Semanal			                                                          " crlf)
(printout t "| De esta forma habrá seleccionado 6 frutas semanalmente.                              " crlf)
(printout t "+---------------------------------------------------------------------------------------+" crlf)
)

(deffunction ModExpTipoAliment()
(printout t "+---------------------------------------------------------------------------------------+" crlf)
(printout t "| Por favor especifique la cantidad aproximada de alimentos que consume el              " crlf)
(printout t "| paciente a partir de las siguientes opciones:                  " crlf)
(printout t "| p. Para porciones pequeñas                " crlf)
(printout t "| n. Para porciones normales o promedios                                             " crlf)
(printout t "| m. Para porciones mayores de lo usual, aplica cuando el paciente repite platos " crlf)
(printout t "+---------------------------------------------------------------------------------------+" crlf)
)

(deffunction ModExpRisk_OB_DM()
(printout t "+---------------------------------------------------------------------------------------+" crlf)
(printout t "DIAGNÓSTICO:                                                       " crlf)
(printout t "Usted tiene riesgo de sufrir de diabetes tipo 2 y obesidad   " crlf)
(printout t "Se recomienda solicitar una cita con un nutricionista para analizar a profundidad   " crlf)
(printout t "sus hábitos alimenticios y prevenir o tratar dicha enfermedad a futuro   " crlf)
(printout t "Se sugiere reducir el consumo de azúcares: dulces, gaseosas, postres o snacks dulces" crlf)
(printout t "recuerde además realizar ejercicio de manera regular " crlf)
(printout t "+---------------------------------------------------------------------------------------+" crlf)
)


(deffunction ModExpRisk_Ecv()
(printout t "+---------------------------------------------------------------------------------------+" crlf)
(printout t "DIAGNÓSTICO:                                                       " crlf)
(printout t "Usted tiene riesgo de sufrir de Enfermedad Cardiovascular   " crlf)
(printout t "Se sugiere que realice una consulta pronto con su nutricionista,  " crlf)
(printout t "realice regularmente ejercicio y procure evitar excesos en las grasas y " crlf)
(printout t "los azúcares y las gaseosas" crlf)
(printout t "Recuerde consumir alimentos altos en verduras y frutas, no se exceda con los fritos" crlf)
(printout t "+---------------------------------------------------------------------------------------+" crlf)
)


(deffunction ModExpRisk_gastritis()
(printout t "+---------------------------------------------------------------------------------------+" crlf)
(printout t "DIAGNÓSTICO:                                                       " crlf)
(printout t "Usted tiene riesgo de sufrir de gastritis   " crlf)
(printout t "Se recomienda realizar una gastroscopia para analizar su mucosa gástrica,   " crlf)
(printout t "por favor consulte con su nutricionista/médico en caso de presentar síntomas   " crlf)
(printout t "como dolores, vómito, eructos, o sangre en heces o vómito." crlf)
(printout t "Evite consumir alimentos a deshoras, procure alimentarse regularmente" crlf)
(printout t "3 veces al día en porciones módicas." crlf)
(printout t "+---------------------------------------------------------------------------------------+" crlf)
)


(deffunction ModExpRisk_Obesidad_solo()
(printout t "+---------------------------------------------------------------------------------------+" crlf)
(printout t "DIAGNÓSTICO:                                                       " crlf)
(printout t "Usted tiene riesgo de sufrir de obesidad   " crlf)
(printout t "Se recomienda solicitar una cita con un nutricionista para analizar a profundidad   " crlf)
(printout t "sus hábitos alimenticios y prevenir o tratar dicha enfermedad a futuro   " crlf)
(printout t "Se sugiere reducir el consumo de azúcares: dulces, gaseosas, postres o snacks dulces" crlf)
(printout t "recuerde además realizar ejercicio de manera regular " crlf)
(printout t "+---------------------------------------------------------------------------------------+" crlf)
)

(deffunction ModExpRisk_anemia()
(printout t "+---------------------------------------------------------------------------------------+" crlf)
(printout t "DIAGNÓSTICO:                                                       " crlf)
(printout t "Usted tiene riesgo de sufrir de anemia   " crlf)
(printout t "Se recomienda solicitar una cita con un nutricionista para analizar a profundidad   " crlf)
(printout t "su caso y prevenir o tratar el riesgo que tiene   " crlf)
(printout t "Se recomienda consumir alimentos altos en hierro, preferiblemente carnes rojas," crlf)
(printout t "en caso contrario, utilizar complementos ferricos acorde a tratamiento nutricional" crlf)
(printout t "+---------------------------------------------------------------------------------------+" crlf)
)


;********* Rules
(defrule start
	(declare (salience 6000))
=>
	(ModExpZero)
)


(defrule bienvenida
	(declare (salience 5000))
=>
	(bind ?op nill)
	(while (and (neq ?op s) (neq ?op n) (neq ?op e))
		(printout t "Desea obtener un diagnostico completo y especializado (s/n):" )
		(bind ?op (lowcase (read)))
		(if (eq ?op e) then
	 		;(modulo_explicativo_zero)
			(bind ?op nill)
		)
	)
	(if (eq ?op s) then
		(assert (inicio))
	else
		(if (eq ?op n) then
				(reset)
				;(retract 0 1 2 3 4)
				;(modulo_explicativo_salida)
		)	
	)
)



(defrule initt
	(declare (salience 3001))
	(inicio)
=>
	(assert (DM2))
	(assert (gastritis))
	(assert (anemia))
	(assert (obesidad))
	(assert (ECV))
	(assert (testing))
)

(defrule pregunta1
	(declare (salience 3000))
	(inicio)
=>
	(printout t "ingrese su edad: ")
	(assert
		(age (read))
	)
	(printout t "ingrese su género (H / M): ")
	(assert
		(genre (read))
	)
	(printout t "ingrese su estrato social (0 a 7): ")
	(assert
		(social (read))
	)
	(printout t crlf)
)



(defrule asignacion
	(declare (salience 3000))
	(genre ?g)
	(age ?e)
	(social ?es)
=>
	(assert
		(paciente
			(genero ?g)
			(edad ?e)
			(estrato ?es)
		)
	)
)

(defrule nino_o_no
	(declare (salience 2800))
	(age ?e)
=>
	(if (< ?e 7) then
		(assert (childrenSI))
	else
		(assert (childrenNO))
	)
)


(defrule pregunta2
	(declare (salience 3000))
=>
	(bind ?op nill)
	(while (and (neq ?op s) (neq ?op n) (neq ?op e))
		(printout t "¿Ha tenido antecedentes de enfermedades familiares? (s/n/e):" )
		(bind ?op (lowcase (read)))
		(if (eq ?op e) then
	 		(ModExpAntecedentesFamiliares)
			(bind ?op nill)
		)
	)
	(if (eq ?op s) then
		(assert (antecedentesFamiliaresSi))
	else
		(if (eq ?op n) then
				(assert (antecedentesFamiliaresNo))
				;Llevar a la pregunta de antecedentes personales
				;(modulo_explicativo_salida)
		)	
	)
)


(defrule menuAntecedentesFamiliares
	(declare (salience 3000))
	(or 
		(and (antecedentesFamiliaresSi))
	)
=>
	(bind ?op nill)
	(while (neq ?op 0)
		(printout t crlf "Porfavor seleccione los antecedentes y marque 0 para continuar:" crlf)
		(printout t "1. Diabetes" crlf)
		(printout t "2. Enfermedades cardiovasculares" crlf)
		(printout t "3. Hipertensión" crlf)
		(printout t "4. Obesidad" crlf)
		(printout t "5. Cancer" crlf)
		(printout t "6. Asma" crlf)
		(printout t "=> ")
		(bind ?op (read))
		(if (not (eq ?op 0)) then
				(switch ?op
					(case 1 then (assert (antecedenteFamDiabetes)))
					(case 2 then (assert (antecedenteFamCardio)))
					(case 3 then (assert (antecedenteFamHipertension)))
					(case 4 then (assert (antecedenteFamObesidad)))
					(case 5 then (assert (antecedenteFamCancer)))
					(case 6 then (assert (antecedenteFamAsma)))
					(default (printout t "por favor elija una opción válida" crlf))
				)
			(bind ?op nill)
		)
	)
)


(defrule pregunta3
	(declare (salience 2999))
=>
	(bind ?op nill)
	(while (and (neq ?op s) (neq ?op n) (neq ?op e))
		(printout t "¿Ha tenido antecedentes de enfermedades personales? (s/n/e):" )
		(bind ?op (lowcase (read)))
		(if (eq ?op e) then
	 		(ModExpAntecedentesPersonales)
			(bind ?op nill)
		)
	)
	(if (eq ?op s) then
		(assert (antecedentesPersonalesSi))
	else
		(if (eq ?op n) then
				(assert (antecedentesPersonalesNo))
				;Llevar a la pregunta de antecedentes personales
				;(modulo_explicativo_salida)
		)	
	)
)

(defrule menuAntecedentesPersonales
	(declare (salience 2999))
	(or 
		(and (antecedentesPersonalesSi))
	)
=>
	(bind ?op nill)
	(while (neq ?op 0)
		(printout t crlf "Porfavor seleccione los antecedentes y marque 0 para continuar:" crlf)
		(printout t "1. Desnutrición" crlf)
		(printout t "2. EDA" crlf)
		(printout t "3. IRA" crlf)
		(printout t "4. Obesidad" crlf)
		(printout t "5. Anemia" crlf)
		(printout t "6. Gastritis" crlf)
		(printout t "7. Asma" crlf)
		(printout t "=> ")
		(bind ?op (read))
		(if (not (eq ?op 0)) then
				(switch ?op
					(case 1 then (assert (antecedentePerDesnutricion)))
					(case 2 then (assert (antecedentePerEDA)))
					(case 3 then (assert (antecedentePerIRA)))
					(case 4 then (assert (antecedentePerObesidad)))
					(case 5 then (assert (antecedentePerAnemia)))
					(case 6 then (assert (antecedentePerGastritis)))
					(case 7 then (assert (antecedentePerAsma)))
					(default (printout t "por favor elija una opción válida" crlf))
				)
			(bind ?op nill)
		)
	)
)


;*** 

(defrule gustos1
	(declare (salience 2600))
=>
	(bind ?op nill)
	(while (and (neq ?op s) (neq ?op n) (neq ?op e))
		(printout t "¿consume carne? (s/n):" )
		(bind ?op (lowcase (read)))
		(if (eq ?op e) then
	 		;(modulo_explicativo_zero)
			(bind ?op nill)
		)
	)
	(if (eq ?op s) then
		(assert (vegetarianoNO))
	else
		(if (eq ?op n) then
				(assert (vegetarianoSI))
				(assert (carnesNO))
				(assert (carnesFriasNO))
				(assert (polloNO))
				(assert (pescadoNO))
		)	
	)
)

(defrule gustos2
	(declare (salience 2500))
=>
	(bind ?op nill)
	(while (and (neq ?op s) (neq ?op n) (neq ?op e))
		(printout t "¿Come tres veces al día regularmente? (s/n):" )
		(bind ?op (lowcase (read)))
		(if (eq ?op e) then
	 		;(modulo_explicativo_zero)
			(bind ?op nill)
		)
	)
	(if (eq ?op s) then
		(assert (tresVeces))
	else
		(if (eq ?op n) then
				(assert (tresVecesNO))
		)	
	)
)




(defrule gustos3
	(declare (salience 2500))
=>
	(bind ?op nill)
	(while (and (neq ?op p) (neq ?op m) (neq ?op e) (neq ?op n))
		(printout t "¿Las porciones de sus alimentos consume mucha, normal o poca cantidad? (p/n/m/e):" )
		(bind ?op (lowcase (read)))
		(if (eq ?op e) then
	 		(ModExpTipoAliment)
			(bind ?op nill)
		)
	)
	(if (eq ?op n) then
		(assert (comeNormal))
	)
	(if (eq ?op p) then
		(assert (comePoco))
	else
		(if (eq ?op m) then
				(assert (comeMucho))
		)	
	)
)


(defrule gustos4_nino
	(declare (salience 2500))
	(childrenSI)
=>
	(bind ?op nill)
	(while (and (neq ?op s) (neq ?op n) (neq ?op e))
		(printout t "¿Es el niño activo para jugar, correr o ejercitarse? (s/n):" )
		(bind ?op (lowcase (read)))
		(if (eq ?op e) then
	 		;(modulo_explicativo_zero)
			(bind ?op nill)
		)
	)
	(if (eq ?op s) then
		(assert (sedentarioNO))
	else
		(if (eq ?op n) then
				(assert (sedentarioSI))
		)	
	)
)


(defrule gustos4
	(declare (salience 2500))
	(childrenNO)
=>
	(bind ?op nill)
	(while (and (neq ?op s) (neq ?op n) (neq ?op e))
		(printout t "¿Practica deporte regularmente? (s/n):" )
		(bind ?op (lowcase (read)))
		(if (eq ?op e) then
	 		;(modulo_explicativo_zero)
			(bind ?op nill)
		)
	)
	(if (eq ?op s) then
		(assert (sedentarioNO))
	else
		(if (eq ?op n) then
				(assert (sedentarioSI))
		)	
	)
)



;*** Frecuency food

(deffunction frecuency_Menu(?type ?op)
	(bind ?ops 0)
	(while (and (neq ?ops 1) (neq ?ops 2) (neq ?ops 3) (neq ?ops 4))
		(printout t "¿Con qué frecuencia consume ")
		(printout t ?type)
		(printout t ": " crlf)
	 	(printout t "1. Diario" crlf)
		(printout t "2. Semanal" crlf)
		(printout t "3. Mensual" crlf)
		(printout t "4. Ocasional" crlf)
		(printout t "=> ")
		(bind ?ops (read))
		(switch ?ops
			(case 1 then 
				(assert
					(Frec ?type "Diario" ?op) 
				)
				(break)
			)
			(case 2 then 
				(assert
					(Frec ?type "Semanal" ?op) 
				)
				(break)
			)
			(case 3 then 
				(assert
					(Frec ?type "Mensual" ?op) 
				)
				(break)
			)
			(case 4 then 
				(assert
					(Frec ?type "Ocasional" ?op) 
				)
				(break)
			)
		)
	)
)

(defrule explicacion_frecuencias
	(declare (salience 2100))
=>
	(printout t "" crlf)
	(ModExpFrecuencias)
)



(defrule frecuencia1
	(declare (salience 2000))
	(inicio)
=>
	(printout t "" crlf)
	(printout t "Cantidad de lácteos [vasos promedio] que consume " crlf)
	(printout t "(marque 0 si no consume o la cantidad de la porción): ")
	(bind ?op (integer (read)))
	(if (neq ?op 0) then
		(frecuency_Menu "lacteos" ?op)
	else
		(assert (lacteosNO))	
	) 
)
(defrule frecuencia2
	(declare (salience 2000))
	(inicio)
=>
	(printout t "" crlf)
	(printout t "Cantidad de quesos [tajadas] que consume" crlf)
	(printout t "(marque 0 si no consume o la cantidad de la porción): ")
	(bind ?op (integer (read)))
	(if (neq ?op 0) then
		(frecuency_Menu "quesos" ?op)	
	else
		(assert (quesosNO))
	) 
)
(defrule frecuencia3
	(declare (salience 2000))
	(vegetarianoNO)
	(inicio)
=>
	(printout t "" crlf)
	(printout t "Cantidad de carnes frias [unidades] que consume" crlf)
	(printout t "(marque 0 si no consume o la cantidad de la porción): ")	(bind ?op (integer (read)))
	(if (neq ?op 0) then
		(frecuency_Menu "carnesFrias" ?op)
	else
		(assert (carnesFriasNO))	
	) 
)
(defrule frecuencia4
	(declare (salience 2000))
	(inicio)
=>
	(printout t "" crlf)
	(printout t "Cantidad de huevos [unidades] que consume" crlf)
	(printout t "(marque 0 si no consume o la cantidad de la porción): ")	(bind ?op (integer (read)))
	(if (neq ?op 0) then
		(frecuency_Menu "huevos" ?op)	
	else
		(assert (huevosNO))
	) 
)
(defrule frecuencia5
	(declare (salience 2000))
	(vegetarianoNO)
	(inicio)
=>
	(printout t "" crlf)
	(printout t "Cantidad de carne roja [unidades] que consume" crlf)
	(printout t "(marque 0 si no consume o la cantidad de la porción): ")	(bind ?op (integer (read)))
	(if (neq ?op 0) then
		(frecuency_Menu "carnes" ?op)
	else
		(assert (carnesNO))	
	) 
)
(defrule frecuencia6
	(declare (salience 2000))
	(vegetarianoNO)
	(inicio)
=>
	(printout t "" crlf)
	(printout t "Cantidad de pollo [unidades] que consume" crlf)
	(printout t "(marque 0 si no consume o la cantidad de la porción): ")	(bind ?op (integer (read)))
	(if (neq ?op 0) then
		(frecuency_Menu "pollo" ?op)
	else
		(assert (polloNO))	
	) 
)

(defrule frecuencia7
	(declare (salience 2000))
	(vegetarianoNO)
	(inicio)
=>
	(printout t "" crlf)
	(printout t "Cantidad de pescado [unidades] que consume" crlf)
	(printout t "(marque 0 si no consume o la cantidad de la porción): ")	(bind ?op (integer (read)))
	(if (neq ?op 0) then
		(frecuency_Menu "pescado" ?op)
	else
		(assert (pescadoNO))	
	) 
)



(defrule frecuencia9
	(declare (salience 2000))
	(inicio)
=>
	(printout t "" crlf)
	(printout t "Cantidad de leguminosas [platos promedio] que consume" crlf)
	(printout t "(marque 0 si no consume o la cantidad de la porción): ")	(bind ?op (integer (read)))
	(if (neq ?op 0) then
		(frecuency_Menu "leguminosas" ?op)
	else
		(assert (leguminosasNO))	
	) 
)


(defrule frecuencia10
	(declare (salience 2000))
	(inicio)
=>
	(printout t "" crlf)
	(printout t "Cantidad de cereal [platos promedio] que consume" crlf)
	(printout t "(marque 0 si no consume o la cantidad de la porción): ")	(bind ?op (integer (read)))
	(if (neq ?op 0) then
		(frecuency_Menu "cereal" ?op)
	else
		(assert (cerealNO))	
	) 
)


(defrule frecuencia11
	(declare (salience 2000))
	(inicio)
=>
	(printout t "" crlf)
	(printout t "Cantidad de frutas [unidades] que consume" crlf)
	(printout t "(marque 0 si no consume o la cantidad de la porción): ")	(bind ?op (integer (read)))
	(if (neq ?op 0) then
		(frecuency_Menu "frutas" ?op)	
	else
		(assert (frutasNO))
	) 
)


(defrule frecuencia12
	(declare (salience 2000))
	(inicio)
=>
	(printout t "" crlf)
	(printout t "Cantidad de verduras que consume" crlf)
	(printout t "(marque 0 si no consume o la cantidad de la porción): ")	(bind ?op (integer (read)))
	(if (neq ?op 0) then
		(frecuency_Menu "verduras" ?op)
	else
		(assert (verdurasNO))	
	) 
)


(defrule frecuencia14
	(declare (salience 2000))
	(inicio)
=>
	(printout t "" crlf)
	(printout t "Cantidad de dulces [unidades] que consume" crlf)
	(printout t "(marque 0 si no consume o la cantidad de la porción): ")	(bind ?op (integer (read)))
	(if (neq ?op 0) then
		(frecuency_Menu "dulces" ?op)
	else
		(assert (dulcesNO))
	) 
)


(defrule frecuencia15
	(declare (salience 2000))
	(inicio)
=>
	(printout t "" crlf)
	(printout t "Cantidad de aguapanela [Vasos promedio] que consume" crlf)
	(printout t "(marque 0 si no consume o la cantidad de la porción): ")	(bind ?op (integer (read)))
	(if (neq ?op 0) then
		(frecuency_Menu "aguapanela" ?op)
	else
		(assert (aguapanelaNO))	
	) 
)


(defrule frecuencia16
	(declare (salience 2000))
	(inicio)
=>
	(printout t "" crlf)
	(printout t "Cantidad de gaseosas [botellas] que consume" crlf)
	(printout t "(marque 0 si no consume o la cantidad de la porción): ")	(bind ?op (integer (read)))
	(if (neq ?op 0) then
		(frecuency_Menu "gaseosas" ?op)
	else
		(assert (gaseosasNO))	
	) 
)


(defrule frecuencia17
	(declare (salience 2000))
	(inicio)
=>
	(printout t "" crlf)
	(printout t "Cantidad de postres [unidades] que consume" crlf)
	(printout t "(marque 0 si no consume o la cantidad de la porción): ")	(bind ?op (integer (read)))
	(if (neq ?op 0) then
		(frecuency_Menu "postres" ?op)
	else
		(assert (postresNO))	
	) 
)


(defrule frecuencia18
	(declare (salience 2000))
	(inicio)
=>
	(printout t "" crlf)
	(printout t "Cantidad de enlatados [unidades] que consume" crlf)
	(printout t "(marque 0 si no consume o la cantidad de la porción): ")	(bind ?op (integer (read)))
	(if (neq ?op 0) then
		(frecuency_Menu "enlatados" ?op)
	else
		(assert (enlatadosNO))	
	) 
)


(defrule frecuencia19
	(declare (salience 2000))
	(inicio)
=>
	(printout t "" crlf)
	(printout t "Cantidad de comidas rápidas [unidades] que consume" crlf)
	(printout t "(marque 0 si no consume o la cantidad de la porción): ")	(bind ?op (integer (read)))
	(if (neq ?op 0) then
		(frecuency_Menu "comidasRapidas" ?op)	
	else
		(assert (comidasRapidasNO))
	) 
)


(defrule frecuencia20
	(declare (salience 2000))
	(inicio)
=>
	(printout t "" crlf)
	(printout t "Cantidad de snacks [paquetes] que consume" crlf)
	(printout t "(marque 0 si no consume o la cantidad de la porción): ")	(bind ?op (integer (read)))
	(if (neq ?op 0) then
		(frecuency_Menu "snacks" ?op)	
	else
		(assert (snacksNO))
	) 
)


(defrule obvius
	(snacksNO)
	(comidasRapidasNO)
	(enlatadosNO)
	(postresNO)
	(gaseosasNO)
	(aguapanelaNO)
	(dulcesNO)
	(verdurasNO)
	(frutasNO)
	(cerealNO)
	(leguminosasNO)
	(pescadoNO)
	(polloNO)
	(carnesNO)
	(huevosNO)
	(carnesFriasNO)
	(quesosNO)
	(lacteosNO)
	
=>
	(printout t "+====================================================" crlf)
	(printout t "+====================================================" crlf)
	(printout t "Cuerpo glorioso :D no comes nada y aún vives \(^_^)/" crlf)
	(printout t "+====================================================" crlf)
	(printout t "+====================================================" crlf)
)





(defrule metarule_verdes
	(declare (salience 1000))
	(Frec "verduras" ?fv ?cv)
	(Frec "leguminosas" ?fl ?cl)
	(Frec "frutas" ?ff ?cf)
=> 
	(if (eq ?fv "Ocasional") then
		(assert (alimentacionVerde))
	)
)


(defrule metarule_azucar
	(declare (salience 1000))
	(Frec "dulces" ?fd ?cd)
	(Frec "snacks" ?fs ?cs)
	(Frec "postres" ?fp ?cp)
	(Frec "gaseosas" ?fg ?cg)
	(Frec "aguapanela" ?fa ?ca)
	
	
=>
	(if (or (neq ?fd "Ocasional") (neq ?fg "Ocasional")) then
		(assert (azucarALTO))
	)

)


(defrule pregunta_tamano
	(declare (salience 1999))
	(azucarALTO)
=>
	(bind ?op nill)
	(while (and (neq ?op s) (neq ?op n) (neq ?op e))
		(printout t "¿se considera a usted delgado? (s/n):" )
		(bind ?op (lowcase (read)))
		(if (eq ?op e) then
	 		;(modulo_explicativo_zero)
			(bind ?op nill)
		)
	)
	(if (eq ?op s) then
		(assert (gordilloNO))
	else
		(if (eq ?op n) then
				(assert (gordillo))
		)	
	)
)


(defrule metarule_grasa
	(declare (salience 1000))
	(or
		(Frec "pollo" ?fp ?cp)
		(Frec "pescado" ?p ?cp)
		(Frec "carnesFrias" ?fs ?cs)
		(Frec "carnes" ?fd ?cd)
	)
	(or
		(Frec "comidasRapidas" "Diario" ?ccr)
		(Frec "comidasRapidas" "Semanal" ?ccr)
	)
	
	(or
		(Frec "lacteos" ?fl ?cl)
		(Frec "quesos" ?fq ?cq)
	)
=>
	(if (> ?ccr 3) then
		(assert (grasaALTA))
	)
)

(defrule metarule_carne
	(Frec "carnes" "Ocasional" ?cc)
	(Frec "carnesFrias" "Ocasional" ?ccf)
=>
	(if (< ?cc 4) then
		(assert (bajoConsumoCarne))
	)
)


;****

(defrule grasa1
	(declare (salience 1999))
	(Frec "carnes" ?f ?c)
	(Frec "comidasRapidas" ?f ?c)
=>
	(bind ?op nill)
	(while (and (neq ?op s) (neq ?op n) (neq ?op e))
		(printout t "¿Tiende a fritar todos los alimentos? (s/n):" )
		(bind ?op (lowcase (read)))
		(if (eq ?op e) then
	 		;(modulo_explicativo_zero)
			(bind ?op nill)
		)
	)
	(if (eq ?op s) then
		(assert (fritaSI))
	else
		(if (eq ?op n) then
			(assert (fritaNO))
		)	
	)
)




;**** REGLAS ENFERMEDAD


(defrule anemia
	(declare (salience 500))
	(or
		(and
			(bajoConsumoCarne)
			(comePoco)
		)
		(vegetarianoSI)
	)
	?x <- (DM2)
	?y <- (obesidad)
	?c <- (ECV)
=>
	(assert (anemia))
	(retract ?x ?y ?c)
)

(defrule gastritis
	(declare (salience 500))
	(or 
		(tresVecesNO)
		(and
			(frutasNO)
			(comePoco)
		)
		(and
			(antecedentePerGastritis)
			(comePoco)
			(tresVecesNO)
		)
	)
	?x <- (DM2)
	?y <- (obesidad)
	?c <- (ECV)
=>
	(assert (gastritis))
	(retract ?x ?y ?c)
)


(defrule ECV
	(declare (salience 502))
	(or
		(azucarALTO)
		(grasasALTO)
	)
	(sedentarioSI)
	?x <- (DM2)
	?c <- (anemia)
	?g <- (gastritis)
=>
	(assert (ECV))
	(retract ?x ?c ?g)
)


(defrule obesidad
	(declare (salience 502))
	(azucarALTO)
	(grasasALTO)
	(fritaSI)
	(sedentarioSI)
	(gordillo)
	?y <- (anemia)
	?g <- (gastritis)
=>
	(assert (obesidad))
	(assert (DM2_NO))
	(retract ?y ?g)
)

(defrule DM2
	(declare (salience 499))
	(or
		(obesidad)
		(antecedenteFamDiabetes)
	)
	(sedentarioSI)
	?x <- (anemia)
	?c <- (ECV)
	?g <- (gastritis)
=>
	(assert (DM2))	
	(retract ?x ?c ?g)
)

(defrule DM2_2
	(declare (salience 490))
	(or
		(obesidad)
		(antecedenteFamDiabetes)
	)
	(sedentarioSI)
	?x <- (anemia)
	?c <- (ECV)
	?g <- (gastritis)
	?n <- (DM2_NO)
=>
	(assert (DM2))	
	(retract ?x ?c ?g ?n)
)

;*** Diagnosticos

(defrule diabetes_diag
	(declare (salience 100))
	(obesidad)
	(DM2)
=>
	(ModExpRisk_OB_DM)
	;(reset)
)

(defrule obesidad_diag
	(declare (salience 100))
	(obesidad)
	(DM2_NO)
=>
	(ModExpRisk_Obesidad_solo)
	;(reset)
)

(defrule anemia_diag
	(declare (salience 100))
	(anemia)
=>
	(ModExpRisk_anemia)
	;(reset)
)

(defrule ECV_diag
	(declare (salience 100))
	(ECV)
=>
	(ModExpRisk_Ecv)
	;(reset)
)

(defrule gastritis_diag
	(declare (salience 100))
	(gastritis)
=>
	(ModExpRisk_gastritis)
	;(reset)
)




(defrule riesgo_nino_grasa
	(declare (salience 5))
	(and
		(childrenSI)
		(or
			(ECV)
			(obesidad)
			(DM2)
		)
	)
=>
		(printout t "+--------------------------------------------------------------------------------+" crlf)
		(printout t "Recomendamos realizar una consulta urgente con un nutricionista / médico para el niño/a" crlf)
		(printout t "y poder garantizar un sano desarrollo desde edad temprana y prevenir posibles" crlf)
		(printout t "enfermedades como ECV, Obesidad o diabetes de las cuales puede ser propenso" crlf)
		(printout t "+--------------------------------------------------------------------------------+" crlf)

)


(defrule riesgo_nino_malNutricion
	(declare (salience 5))
	(and
		(childrenSI)
		(or
			(anemia)
			(gastritis)
		)
	)
=>
		(printout t "+--------------------------------------------------------------------------------+" crlf)
		(printout t "Recomendamos realizar una consulta urgente con un nutricionista / médico para el niño/a" crlf)
		(printout t "y poder garantizar un sano desarrollo desde edad temprana y prevenir posibles" crlf)
		(printout t "enfermedades como gastritis o anemia de las cuales puede ser propenso" crlf)
		(printout t "+--------------------------------------------------------------------------------+" crlf)
	
)





(defrule end
	(declare (salience 0))
=>
	(printout t "" crlf)
	(printout t "" crlf)
	(printout t "" crlf)
	(reset)
)


(defrule default
	(declare (salience 1))
	(gastritis)
	(ECV)
	(anemia)
	(obesidad)
	(DM2)
=>
	(printout t "+--------------------------------------------------------------------------------+" crlf)
	(printout t "No encontramos ningún riesgo para tu salud, si deseas por favor vuelve a empezar" crlf)
	(printout t "+--------------------------------------------------------------------------------+" crlf)
	(reset)
)
