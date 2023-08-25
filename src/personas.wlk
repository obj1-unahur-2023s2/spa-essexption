object olivia {
	var concentracion = 6
	
	method recibirMasajes(){ concentracion += 3}
	method discutir() {concentracion = 0.max(concentracion-1)}
	method darBanioDeVapor() {}
	method gradoDeConcentracion() = concentracion
}

object bruno {
	var esFeliz = true
	var tieneSed = false
	var peso = 55000 //en gramos
	
	method esFeliz() = esFeliz
	method tieneSed() = tieneSed
	method peso() = peso
	
	method recibirMasajes() { esFeliz = true}
	method darBanioDeVapor() {
		peso = 0.max(peso-500)
		tieneSed = true
	}
	method tomarAgua(){
		tieneSed = false
	}
	method comerFideos(){
		peso+=250
		tieneSed = true
	}
	method correr(){
		peso = 0.max(peso-300)
	}
	method verNoticiero(){
		esFeliz = false
	}
	method estaPerfecto() = esFeliz and not tieneSed and peso.between(50000,70000)
	method mediodiaEnCasa() {
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
}

object ramiro {
	var estaContracturado = 0
	var tienePielGrasosa = true
	
	method estaContracturado() = estaContracturado
	method estaContracturado(nivelDeContractura) { estaContracturado = nivelDeContractura}
	method tienePielGrasosa() = tienePielGrasosa
	method tienePielGrasosa(esGrasosa) { tienePielGrasosa = esGrasosa}
	method recibirMasajes() {
		estaContracturado = 0.max(estaContracturado-2)
	} 
	method darBanioDeVapor() {
		tienePielGrasosa = false
	}
	method comerBigMac() {
		tienePielGrasosa = true
	}
	method bajarALaFosa(){
		tienePielGrasosa = true
		estaContracturado +=1
	}
	method jugarPaddle() {estaContracturado +=3}
	method diaDeTrabajo(){
		self.bajarALaFosa()
		self.comerBigMac()
		self.bajarALaFosa()
	}
}