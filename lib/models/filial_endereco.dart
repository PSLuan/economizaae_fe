class FilialEndereco {
  String? cep;
  String? pais;
  String? estado;
  String? cidade;
  String? logradouro;
  String? numero;
  String? bairro;
  String? complemento;

  FilialEndereco(
      {this.cep,
      this.pais,
      this.estado,
      this.cidade,
      this.logradouro,
      this.numero,
      this.bairro,
      this.complemento});

  FilialEndereco.fromJson(Map<String, dynamic> json) {
    cep = json['cep'];
    pais = json['pais'];
    estado = json['estado'];
    cidade = json['cidade'];
    logradouro = json['logradouro'];
    numero = json['numero'];
    bairro = json['bairro'];
    complemento = json['complemento'];
  }
}
