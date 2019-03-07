object exposicion {
	var obras = #{};	
	var jurado = #{};
	
	method esArtistaInfluyente(artista) = jurado.any{ miembroDelJurado => miembroDelJurado.maestro() == artista } 
	method autores() = obras.map{ obra => obra.autor() }.asSet()
	method cantidadObrasArtista(artista) = obras.count{ obra => obra.autor() == artista }
	method artistaConMasObras() = self.autores().max{ autor => self.cantidadObrasArtista(autor) }
	method obrasConAutorInfluyente() = obras.filter{ obra => self.esArtistaInfluyente(obra.autor()) }
	method esBrillante() = obras.all{ obra => obra.esRelevante() }
	
	
}
