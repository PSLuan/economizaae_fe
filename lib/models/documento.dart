// ignore_for_file: constant_identifier_names

class Documento {
  String? numeroDocumento;
  String? tipoDocumento;

  Documento({this.numeroDocumento, this.tipoDocumento});

  Documento.fromJson(Map<String, dynamic> json) {
    numeroDocumento = json['numero_documento'];
    tipoDocumento = json['tipo_documento'];
  }
}

enum TipoDocumento {
  CPF,
  CNPJ,
  RG,
  PASSAPORTE,
  INSCRICAO_ESTADUAL,
  INSCRICAO_MUNICIPAL;
}
