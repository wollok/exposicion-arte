class Obra {
	var property autor;
	var property cantidadPersonasQueLaVieron;
	var property colores = #{}
	
	method esRelevante();	
}

class Pintura inherits Obra {
	override method esRelevante() = cantidadPersonasQueLaVieron > 10000
}

class Fotografia inherits Obra {
	override method esRelevante() = colores.size() > 3
}


class Artista {
	var property maestro;	
}