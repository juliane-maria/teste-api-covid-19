import 'package:dio/dio.dart';

class GetData {
  Future<Map> callGetData() async {
    final Response data =
        await Dio().get('https://covid-api.mmediagroup.fr/v1/cases');
    Map paises = data.data;
    return paises;
  }
}
