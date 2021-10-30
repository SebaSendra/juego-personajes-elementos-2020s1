object ballesta{
	const potencia = 4 
	var carga = true
	var cantidadDeFlechas = 10
	
	method potencia() {return potencia} 
	method estaCargada() {return carga} 
	method registrarUso() {
		cantidadDeFlechas -= 1
		if (cantidadDeFlechas == 0) {carga = false}
	}
	method cantidadDeFlechas() {return cantidadDeFlechas}
}

object jabalina{
	const potencia = 30 
	var carga = true
	
	method potencia() {return potencia} 
	method estaCargada() {return carga} 
	method registrarUso() {carga = false}
}