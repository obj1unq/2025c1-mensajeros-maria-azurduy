
object chuckNorris {
	const peso = 900  

	method puedeLlamar() { 
		return true 
	} 

	method peso() = peso
}

object celular {
	var credito = 0 
	method puedeLlamar() = credito > 0
	method credito(_credito) {credito = +credito}
}
object neo {
	const peso = 0 				// xq en el anunciado dice que no pesa, uso cons
	const dispositivo = celular // xq en el anunciado dice que usa el celular, uso cons
	method peso() = peso
	method puedeLlamar() = dispositivo.puedeLlamar()
}

object lincolnHawk {
	var pesoPropio = 50 
	var vehiculo = camion
	method pesoPropio(_pesoPropio){
    		pesoPropio = _pesoPropio
	}
	method peso() {
		return pesoPropio + vehiculo.peso()
	}
	method puedeLlamar() {
		return false
	}

	method vehiculo(_vehiculo) {
		vehiculo =_vehiculo
	}
}

object camion {
	var cantidadAcoplados = 1

	method pesoDeAcoplados() = cantidadAcoplados * 500
	
	method peso() {
		return 500 + self.pesoDeAcoplados()
	}

	method cantidadAcoplados(_cantidadAcoplados) {
		cantidadAcoplados =_cantidadAcoplados
	}

}

object bici {
	const peso = 10
	method peso() = peso
}

object paquete {
	var estaPagado = false 

	method puedeSerEntregadoEnPor(destino,mensajero) = estaPagado && destino.puedeEntrar(mensajero)

	method estaPagado(_estaPagado) {
		estaPagado = _estaPagado
	}
}

object puenteBrooklyn {

  method puedeEntrar(mensajero) = mensajero.peso() <= 1000

}

object matrix {

  method puedeEntrar(mensajero) = mensajero.puedeLlamar()

}
