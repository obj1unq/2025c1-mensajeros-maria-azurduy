
object chuckNorris {

	const peso = 900  

	method puedeLlamar() = true 

	method peso() = peso
	
	}

object celular {
	credito = 0 
}
object neo {
	const peso = 0
	method peso() = peso
	method puedeLlamar() = credito > 0

}

object lincolnHawk {
	var peso = 50 //peso random. no se si puede ser pasado sin definirse? 
	var vehiculo = camion //valor random
	var pesoTotal = pesoPropio + peso.vehiculo()

	method peso(_peso){
    peso = _peso
	}
	method puedeLlamar() = false
  
}

object camion {
	var cantidadAcoplados = 0
	method pesoDeAcoplados() = cantidadAcoplados * 500
	var peso = 500 + self.pesoDeAcoplados()
	
	method peso() = peso

}

object bici {
	method peso() = 10
}

object paquete {

	var estaPagado = false //valor booleano random o calculo relacionado con el dinero de george?
	method puedeSerEntregadoEnPor(destino,mensajero) = estaPagado && destino.puedeEntrar(mensajero)
	

}



object puenteBrooklyn {
  method puedeEntrar(mensajero) = mensajero.peso() <= 1000
}

object matrix {
  method puedeEntrar(mensajero) = mensajero.puedeLlamar()
}

object george {

	var dinero = x//aca no se cómo poner que el valor sea lo que yo le ingrese para probar un caso. 
				// dado que se que puede ser que tenga dinero, o no. pero no lo se de entrada. 

	method dinero(_dinero) {
		dinero = _dinero
	}

	

}