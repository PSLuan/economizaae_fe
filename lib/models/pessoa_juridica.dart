import 'package:economiza_ae/models/contato.dart';
import 'package:economiza_ae/models/documento.dart';

class PessoaJuridica {
  int? id;
  String? dataRegistro;
  String? nomeEmpresarial;
  List<Documento>? documentos;
  List<Contato>? contatos;

  PessoaJuridica(
      {this.id,
      this.dataRegistro,
      this.nomeEmpresarial,
      this.documentos,
      this.contatos});

  PessoaJuridica.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    dataRegistro = json['data_registro'];
    nomeEmpresarial = json['nome_empresarial'];

    if (json['documentos'] != null) {
      documentos = List<Documento>.from(json['documentos']
          .map((documentoJson) => Documento.fromJson(documentoJson)));
    }

    if (json['contatos'] != null) {
      contatos = List<Contato>.from(
          json['contatos'].map((contatoJson) => Contato.fromJson(contatoJson)));
    }
  }
}
