object ludmila {
	method precio() = 18
}

object anaMaria {
	var estable = true
	
	method estable() = estable
	
	method precio() {
		var precio = 25
		if (estable) {
			precio = 30
		}
		return precio
	}
}

object teresa {
	var precio = 22
	
	method precio() = precio
	method precio(unPrecio){
		precio = unPrecio
	}
}

object melina {
	var trabajaPara
	
	method trabajaPara() = trabajaPara
	method trabajaPara(unCliente){
		trabajaPara = unCliente
	}
	
	method precio() = trabajaPara.precio() - 3 
}

