import 'package:economiza_ae/models/contato.dart';
import 'package:economiza_ae/models/filial_endereco.dart';
import 'package:economiza_ae/models/pessoa_juridica.dart';

class Filial {
  int? id;
  String? nomeFilial;
  FilialEndereco? filialEndereco;
  List<Contato>? contatos;
  PessoaJuridica? pessoaJuridica;
  String? dataRegistro;

  Filial(
      {this.id,
      this.nomeFilial,
      this.filialEndereco,
      this.contatos,
      this.pessoaJuridica,
      this.dataRegistro});

  Filial.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nomeFilial = json['nome_filial'];

    filialEndereco = FilialEndereco.fromJson(json['filial_endereco']);

    if (json['contatos'] != null) {
      contatos = List<Contato>.from(
          json['contatos'].map((contatoJson) => Contato.fromJson(contatoJson)));
    }

    pessoaJuridica = PessoaJuridica.fromJson(json['pessoa_juridica']);

    dataRegistro = json['data_registro'];
  }

  static List<Filial> filiaisFromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => Filial.fromJson(json)).toList();
  }
}
