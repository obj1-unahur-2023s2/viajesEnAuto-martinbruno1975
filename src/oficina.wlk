import clientes.*
import remiseras.*

object oficina {
	var primeraRemisera
	var segundaRemisera
	
	method asignarRemiseras(remisera1, remisera2){
		primeraRemisera = remisera1
		segundaRemisera = remisera2
	}
	
	method cambiarPrimerRemiserarPor(remisera){
		primeraRemisera = remisera
	}
	
	method cambiarSegundoRemiseraPor(remisera){
		segundaRemisera = remisera
	}
	
	method intercambiarRemiseras(){
		self.asignarRemiseras(segundaRemisera,primeraRemisera)
	}
	
	method remiseraElegidaParaViaje(cliente, kms){
		var remiseraElegida = primeraRemisera
		if (segundaRemisera.precioViaje(cliente, kms) < remiseraElegida.precioViaje(cliente, kms)
			and (remiseraElegida.precioViaje(cliente, kms) - segundaRemisera.precioViaje(cliente, kms) > 30)){
			remiseraElegida = segundaRemisera
		}
		return remiseraElegida
	}
}
