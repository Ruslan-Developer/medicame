class Medicamento {
  int? _id;
  late String _nombre;
  late String _descripcion;
  late String _imagenMedicamento;
  late String _imagenEnvase;
  late DateTime _fechaCaducidad;
  late int _cantidadPorEnvase;
  late int _frecuencia;
  late int _cantidadActual;
  late int _cantidadMinima;
  late int _dosis;
  late bool _activo;
  //constructor
  Medicamento() {
    this._nombre = '';
    this._descripcion = '';
    this._imagenMedicamento = '';
    this._imagenEnvase = '';
    this._fechaCaducidad = DateTime.now();
    this._cantidadPorEnvase = 0;
    this._frecuencia = 0;
    this._cantidadActual = 0;
    this._cantidadMinima = 0;
    this._dosis = 0;
    this._activo = false;
  }
  //constructor sin id
  Medicamento.withoutId(this._nombre, this._descripcion, this._imagenMedicamento, this._imagenEnvase, this._fechaCaducidad, this._cantidadPorEnvase, this._frecuencia, this._cantidadActual, this._cantidadMinima, this._activo);
  //constructor con id
  Medicamento.withId(this._id, this._nombre, this._descripcion, this._imagenMedicamento, this._imagenEnvase, this._fechaCaducidad, this._cantidadPorEnvase, this._frecuencia, this._cantidadActual, this._cantidadMinima, this._activo);
  //constructor con map
  Medicamento.fromMap(Map<String, dynamic> map) {
    this._id = (map['id']!=null)?map['id']:null;
    this._nombre = (map['nombre']!=null)?map['nombre']:'';
    this._descripcion = (map['descripcion']!=null)?map['descripcion']:'';
    this._imagenMedicamento = (map['imagenMedicamento']!=null)?map['imagenMedicamento']:'';
    this._imagenEnvase = (map['imagenEnvase']!=null)?map['imagenEnvase']:'';
    this._fechaCaducidad = (map['fechaCaducidad']!=null)?DateTime.parse(map['fechaCaducidad']):DateTime.now();
    this._cantidadPorEnvase = (map['cantidadPorEnvase']!=null)?map['cantidadPorEnvase']:0;
    this._frecuencia = (map['frecuencia']!=null)?map['frecuencia']:0;
    this._cantidadActual = (map['cantidadActual']!=null)?map['cantidadActual']:0;
    this._cantidadMinima = (map['cantidadMinima']!=null)?map['cantidadMinima']:0;
    this._dosis = (map['dosis']!=null)?map['dosis']:0;
    this._activo = (map['activo']!=null)?map['activo']:true;
  }

  //Getters y setters 
  int? get id => _id;
  String get nombre => _nombre;
  String get descripcion => _descripcion;
  String get imagenMedicamento => _imagenMedicamento;
  String get imagenEnvase => _imagenEnvase;
  DateTime get fechaCaducidad => _fechaCaducidad;
  int get cantidadPorEnvase => _cantidadPorEnvase;
  int get cantidadInicial => _frecuencia;
  int get cantidadActual => _cantidadActual;
  int get cantidadMinima => _cantidadMinima;
  int get dosis => _dosis;
  bool get activo => _activo;

  set nombre(String nombre) {
    this._nombre = nombre;
  }

  set descripcion(String descripcion) {
    this._descripcion = descripcion;
  }

  set imagenMedicamento(String imagenMedicamento) {
    this._imagenMedicamento = imagenMedicamento;
  }

  set imagenEnvase(String imagenEnvase) {
    this._imagenEnvase = imagenEnvase;
  }

  set fechaCaducidad(DateTime fechaCaducidad) {
    this._fechaCaducidad = fechaCaducidad;
  } 

  set cantidadPorEnvase(int cantidadPorEnvase) {
    this._cantidadPorEnvase = cantidadPorEnvase;
  }

  set frecuencia(int frecuencia) {
    this._frecuencia = cantidadInicial;
  }

  set cantidadActual(int cantidadActual) {
    this._cantidadActual = cantidadActual;
  }

  set cantidadMinima(int cantidadMinima) {
    this._cantidadMinima = cantidadMinima;
  }

  set dosis(int dosis) {
    this._dosis = dosis;
  }

  set activo(bool activo) {
    this._activo = activo;
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (_id != null) map['id'] = _id;
    map['nombre'] = _nombre;
    map['descripcion'] = _descripcion;
    map['imagenMedicamento'] = _imagenMedicamento;
    map['imagenEnvase'] = _imagenEnvase;
    map['fechaCaducidad'] = _fechaCaducidad.toIso8601String();
    map['cantidadPorEnvase'] = _cantidadPorEnvase;
    map['cantidadInicial'] = _frecuencia;
    map['cantidadActual'] = _cantidadActual;
    map['cantidadMinima'] = _cantidadMinima;
    map['dosis'] = _dosis;
    map['activo'] = _activo;
    return map;
  }

}