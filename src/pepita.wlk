import extras.*
import wollok.game.*

object pepita {
	var property energia = 100
	var property position = game.origin()
	var property seguidor = silvestre
	
	method image() = if (self.estaEnElNido()) "pepita-grande.png" else "pepita.png"
	
	method come(comida) {
		energia += comida.energiaQueOtorga()
	}
	
	method vola(kms) {
		energia -= kms * 9
	}
	
	method irA(nuevaPosicion) {
		self.vola(position.distance(nuevaPosicion))
		position = nuevaPosicion
		seguidor.position(game.at(nuevaPosicion.x(), seguidor.position().y()))
	}
	
	method estaCansada() = energia <= 0
	
	method estaEnElNido() = self.position() == nido.position()
}