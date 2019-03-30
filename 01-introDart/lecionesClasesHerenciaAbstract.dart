class Vehiculo {
  String color;
  String modelo;
  String marca;
  
  Vehiculo(String modelo, String marca){
    this.modelo=modelo;
    this.marca=marca;
  }
  void MostrarVehiculo(){
    print("Marca: $marca, Modelo: $modelo, Color: $color");
  }
  void QueVehiculoSoy(){
    print('sin implementar');
  }
}
abstract class EsTransporte{
  void QueTransporteSoy();
}

class AutoMovil extends Vehiculo implements EsTransporte {
  String velocidad; 
  AutoMovil(String modelo, String marca) : super(modelo,marca);
  void MostrarVelocidad(){
    print('la Velocidad: $velocidad Km/h');
  }
  @override
  void QueVehiculoSoy(){
  print('soy un automovil');
  }
  
  @override
  void QueTransporteSoy(){
    print('transporte a 4 pasajeros');
  }
}

class Camion extends Vehiculo{
  Camion(String modelo, String marca) : super(modelo,marca);
}

main(){
  EsTransporte au = AutoMovil('1992','Honda');
//  au.velocidad='95';
//  au.color='azul';
 // au.modelo='1992';
 // au.marca='Honda';
 // au.MostrarVehiculo();
//  au.MostrarVelocidad();
// au.QueVehiculoSoy();
  au.QueTransporteSoy();
  
  
  Camion cami = Camion('1997','Mazda');
  cami.color='rojo';
//  cami.modelo='1997';
//  cami.marca='mazda';
  cami.QueVehiculoSoy();
  cami.MostrarVehiculo();
 
}





