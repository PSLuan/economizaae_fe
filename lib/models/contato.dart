// ignore_for_file: constant_identifier_names

class Contato {
  String? informacao;
  String? tipoContato;

  Contato({this.informacao, this.tipoContato});

  Contato.fromJson(Map<String, dynamic> json) {
    informacao = json['informacao'];
    tipoContato = json['tipo_contato'];
  }
}

enum TipoContato {
  EMAIL,
  TELEFONE;
}
