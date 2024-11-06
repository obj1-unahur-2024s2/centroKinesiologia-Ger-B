class Paciente{
	const property edad 	// Numero entero posititvo
	var property fortaleza 	// Numero entero positivo
	var property dolor 		// Numero entero positivo

	// 2. Rutinas

	const rutina			// Coleccion
	method puedeRealizarRutina() = 
		not rutina.isEmpty() and rutina.all({rutina => rutina.puedeSerUsado(self)})
	method realizarRutina() {
	  	if(rutina.isEmpty())
	  		throw new DomainException(message = 'No esta hecha la rutina')
		else
	  		rutina.forEach({rutina => rutina.utilizar(self)})
	}

}

class Magneto{
	method puedeSerUsado(unPaciente) = true
	method utilizar(unPaciente){
		const dolor = unPaciente.dolor()
		unPaciente.dolor(dolor - dolor*0.1)
	}
}

class Bicicleta{
	method puedeSerUsado(unPaciente) = unPaciente.edad() > 8
	method utilizar(unPaciente){
		const dolor = unPaciente.dolor()
		const fortaleza = unPaciente.fortaleza()
		unPaciente.dolor(0.max(dolor - 4))
		unPaciente.fortaleza(fortaleza + 3)
	}

} 

class Minitramp{
	method puedeSerUsado(unPaciente) = unPaciente.dolor() < 20
	method utilizar(unPaciente){
		const dolor = unPaciente.dolor()
		const fortaleza = unPaciente.fortaleza()
		unPaciente.dolor(0.max(dolor - 4))
		unPaciente.fortaleza(fortaleza + unPaciente.edad() * 0.1)
	}
}


// Otra forma de usar la exception...
class MiExceptionPersonalizada inherits DomainException(message = 'No esta hecha la rutina'){}

// Luego instancio "MiExceptionPersonalizada" en donde corresponda
// y ya sabe cual es el mensaje.  

// 3. Pacientes Especiales

class Resistente inherits Paciente{
	
}