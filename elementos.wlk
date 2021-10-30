
object castillo{
	const altura = 20
	var nivelDeDefensa = 150
	method altura() = altura
	method nivelDeDefensa() = nivelDeDefensa
	method recibirAtaque(potenciaDeAtaque){nivelDeDefensa = nivelDeDefensa - potenciaDeAtaque}
	method valorQueOtorga() { return nivelDeDefensa / 5}
	method recibirTrabajo(){nivelDeDefensa = (nivelDeDefensa + 20).min(200)}
}


object aurora{
	const altura = 1
	var estaViva = true
	method altura() = altura
	method estaViva() = estaViva
	method setVida(valor) { estaViva = valor}
	method recibirAtaque(potenciaDeAtaque) { if (potenciaDeAtaque >= 10) {estaViva = false} }
	method valorQueOtorga() { return 15}
	method recibirTrabajo(){}
}


object tipa{
	var altura = 8
	method altura() = altura
	method setAltura(nuevaAltura) {
		 altura = nuevaAltura
	}
	method recibirAtaque(){}
	method valorQueOtorga() {return altura * 2}
	method recibirTrabajo(){altura += 1}
}
