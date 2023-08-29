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
		var total = 50
		if ((cliente.precio() * kms) > 50){
			total = cliente.precio() * kms
		}
		return total
	}
}

object juana {
	method precioViaje(cliente,kms){
		var total = 100
		if (kms > 8) {
			total = 200
		}
		return total
	}	
}

object lucia {
	var reemplaza
	
	method reemplaza() = reemplaza
	method reemplaza(unaRemisera) {
		reemplaza = unaRemisera
	}
	
	method precioViaje(cliente,kms){
		return reemplaza.precioViaje(cliente,kms)
	}	
}
