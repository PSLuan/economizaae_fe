// ignore_for_file: unnecessary_null_comparison

import 'package:economiza_ae/auth/firebase_auth/auth_util.dart';
import 'package:economiza_ae/models/filial_model.dart';

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

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}
