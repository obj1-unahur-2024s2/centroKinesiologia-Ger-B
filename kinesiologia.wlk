class Paciente{
	const property edad 
	var property fortaleza
	var property dolor
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