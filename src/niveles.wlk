import pepita.*
import comidas.*
import extras.*
import wollok.game.*

object tutorial1 {
	method iniciar() {
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisual(pepita)
		config.configurarTeclas()
	}
}

object tutorial2 {
	method iniciar() {
		game.addVisual(manzana)
		game.addVisual(alpiste)
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisual(pepita)
		config.configurarTeclas()
	}
}

object tutorial3 {
	method iniciar() {
		game.addVisual(manzana)
		game.addVisual(alpiste)
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisual(pepita)
		config.configurarTeclas()
		config.configurarColisiones()
	}
}

object config {
	method configurarTeclas() {
		keyboard.left().onPressDo({ pepita.irA(pepita.position().left(1)) })
		keyboard.right().onPressDo({ pepita.irA(pepita.position().right(1)) })
		keyboard.up().onPressDo({ pepita.irA(pepita.position().up(1)) })
		keyboard.down().onPressDo({ pepita.irA(pepita.position().down(1)) })
		keyboard.m().onPressDo({ self.cambiarSeguidor(manzana) })
	}
	
	method cambiarSeguidor(nuevoSeguidor) {
		game.removeVisual(pepita.seguidor())
		nuevoSeguidor.position(pepita.seguidor())
		game.addVisual(nuevoSeguidor)
		pepita.seguidor(nuevoSeguidor)
	}
	
	method configurarColisiones() {
		game.onCollideDo(pepita, { algo => algo.teEncontro(pepita) })
	}
}