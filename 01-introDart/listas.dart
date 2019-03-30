class Persona {
  String nombre;
}

main() {
  var personas = new List<Persona>();
  Persona p1 = Persona();
  p1.nombre = 'luis';

  Persona p2 = Persona();
  p2.nombre = 'carlos';

  personas.add(p1);
  personas.add(p2);

  for (var x in personas) {
    print('persona: ${x.nombre}');
  }

  var grupos = {'Perro': "Animal", 'Bus': "vehiculo"};

  grupos.forEach((k, v) => print(k));
var keyss = List<String>();
keyss=grupos.keys.toList();
print(keyss[1]);
print(grupos['Perro']);
}
