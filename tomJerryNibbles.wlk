object tom {// Gato
  var energia = 50 // comienza
//* method CONSULTA / estado = mayormente no tiene parametros.
// no vamos hacer una methos de consulta que comio se comio ya que en lo asigno en el paramatro del method(indicaion)
  method velocidadMaxima() = 0.max (5 + energia / 10) // el calculo de velocidad minima nunca me va a dar negativo 
  method puedeCazar(unaDistancia) = self.energiaConsumida(unaDistancia) <= energia //bool
  method energiaConsumida(unaDistancia) {
    return unaDistancia / 2
  }
  method energia() = energia 

//* method INDICACION
  method correr(unaDistancia) {
    energia = energia - unaDistancia / 2
  }
  method comer(unRaton) {
    energia += 12 + unRaton.peso()
  }
  method cazar(unRaton, unaDistancia) { 
    if(self.puedeCazar(unaDistancia)){
      self.correr(unaDistancia)   //tom.correr(unaDistancia)
      self.comer(unRaton)         //tom.comer(unRaton)
    }
  }
}
//! RATONES
object jerry {// Raton
  var edad = 2 // comienza
//* method CONSULTA
  method peso() = edad * 20
  method edad() = edad

//* method INDICAION
  method edad(unaEdad) {
    edad = unaEdad
  }
}
object nibbles {//Raton
  method peso() = 35 
}
// Inventar otro ratón
object hantaro {
  method peso() = 45 
}