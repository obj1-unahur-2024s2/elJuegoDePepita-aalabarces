import pepita.*
import wollok.game.*

object nido {
	method image() = "nido.png"
	
	method position() = game.at(game.width() - 1, game.height() - 1)
}

object silvestre {
	var property position = game.origin()
	
	method image() = "silvestre.png"
	
	method teEncontro(algo) {
		algo.image("pepita-gris.png")
	}
}