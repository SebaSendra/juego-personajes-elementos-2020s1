import armas.*
import elementos.*

object luisa {
	var property personajeActivo = floki
	method personajeActivo(personaje){personajeActivo = personaje}
	method aparece(elemento) {personajeActivo.encontrar(elemento)}
}


object floki {
	var arma
	
	method arma(nuevaArma) {arma = nuevaArma}
	method encontrar(elemento) {
	    if (arma.estaCargada()) {
	        elemento.recibirAtaque(arma.potencia()) 
	        arma.registrarUso()
	    }
	}
}


object mario {
	var valorRecolectado = 0
	var ultimoElementoEncontrado
	//var altura = 0
	method encontrar(elemento) {
	    valorRecolectado += elemento.valorQueOtorga()
	    elemento.recibirTrabajo()
	    ultimoElementoEncontrado = elemento
	  //  self.registrarAltura(elemento)
	}
	method valorRecolectado(){return valorRecolectado}
	//method registrarAltura(elemento){altura = elemento.altura()}
	method esFeliz() {return valorRecolectado>49 || ultimoElementoEncontrado.altura() > 9}
}


