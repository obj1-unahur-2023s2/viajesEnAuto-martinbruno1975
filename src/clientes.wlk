object ludmila {
	method precio() = 18
}

object anaMaria {
	var esEstable = true
	
	method esEstable() = esEstable
	method cambiarSituacionEconomica() {
		esEstable = !esEstable
	}
	
	method precio() = if (esEstable) {30} else {25}
}

object teresa {
	var property precio = 22
	
	/*var precio = 22
	
	method precio() = precio
	method precio(unPrecio){
		precio = unPrecio
	}
	*/
}

object melina {
	var trabajaPara
	
	method trabajaPara() = trabajaPara
	method trabajaPara(unCliente){
		if (self == unCliente) {
			self.error("Error de Trabaja Para")
		} 
			
		trabajaPara = unCliente
	}
	
	method precio() = trabajaPara.precio() - 3 
}

