/** First Wollok example */

object milena {
	var property edad = 5
}

object azul {
	var property edad = 8
}

object zoe {
	var property edad = 13
}

object victoria {
	var property edad = 7
}

object nico {
	var property edad = 20
}

object flia {
	var	property primes = [milena, azul, zoe, victoria, nico]
	
	//El forEach es solo para enviar órdenes!
	method cumplirAnios() {
		primes.forEach({prime => prime.edad(prime.edad() + 1)})
	}
	
	//A partir de aca son todos métodos de consulta que no alteran la colección original!
	method edades() {
		return primes.map( {prime => prime.edad()} )
	}
	
	method mayores(edad) {
		return primes.filter( { prime => prime.edad() > edad } )
	}
	
	method unMayor(edad) {
		return primes.find( { prime => prime.edad() > edad } )		
	}
	
	method hayMayor(edad) {
		return primes.any( { prime => prime.edad() > edad  })
	}

	method todosSonMayores(edad) {
		return primes.all( { prime => prime.edad() > edad  })
	}

	method promedioEdad() {
		return primes.sum( { prime => prime.edad() }) / primes.size()
	}
	
	method mayor() {
		return primes.max( { prime => prime.edad() })	
	}

	method menor() {
		return primes.min( { prime => prime.edad() })	
	}
	
	//Esta es una orden que altera la familia!
	method removerMayoresDe18() {
		primes = primes.filter({prime => prime.edad() < 18})
	}
	
}