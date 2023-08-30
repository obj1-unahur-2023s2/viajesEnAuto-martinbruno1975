import clientes.*

object roxana {
	method precioViaje(cliente,kms){
		return cliente.precio() * kms
	}
}

object gabriela {
	method precioViaje(cliente,kms){
		return cliente.precio() * kms * 1.2
	}
}

object mariela {
	method precioViaje(cliente,kms){
		return 50.max(cliente.precio() * kms)
	}
}

object juana {
	method precioViaje(cliente,kms){
		return if (kms > 8) {200} else {100}
	}	
}

object lucia {
	var reemplazaA
	
	method reemplazaA() = reemplazaA
	method reemplazaA(unaRemisera){
		if (self == unaRemisera) {
			self.error("Error de Reemplazo")
		} 
			
		reemplazaA = unaRemisera
	}
	
	method precioViaje(cliente,kms){
		return reemplazaA.precioViaje(cliente,kms)
	}	
}
