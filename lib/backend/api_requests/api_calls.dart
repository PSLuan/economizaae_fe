// ignore_for_file: unnecessary_null_comparison

import 'package:economiza_ae/auth/firebase_auth/auth_util.dart';
import 'package:economiza_ae/models/filial_model.dart';
import 'package:economiza_ae/models/pessoa_juridica.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class ListarFiliaisCall {
  static Future<List<Filial>> call() async {
    List<Filial> result;
    try {
      result = await ApiManager.instance.makeApiCall(
        callName: 'Listar filiais',
        apiUrl: 'http://192.168.10.133:8099/api/v1/filial/',
        callType: ApiCallType.GET,
        headers: {
          'Authorization': 'Bearer $currentJwtToken',
          'Access-Control-Allow-Origin': '*'
        },
        params: {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        alwaysAllowBody: false,
      ) as List<Filial>;
    } catch (e) {
      result = List.empty();
    }
    return result;
  }
}

class ListarTiposEmpresaCall {
  static Future<List<TipoEmpresa>> call() async {
    List<TipoEmpresa> result;
    try {
      result = await ApiManager.instance.makeApiCall(
        callName: 'Listar tipos de empresas',
        apiUrl: 'http://192.168.10.133:8099/api/v1/util/tipo-empresa',
        callType: ApiCallType.GET,
        headers: {
          'Authorization': 'Bearer $currentJwtToken',
          'Access-Control-Allow-Origin': '*'
        },
        params: {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        alwaysAllowBody: false,
      ) as List<TipoEmpresa>;
    } catch (e) {
      result = List.empty();
    }
    return result;
  }
}
