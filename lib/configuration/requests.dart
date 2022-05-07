import 'dart:convert';

import 'package:dio/dio.dart';

import '../repositories/secure_storage_repo.dart';
import 'locator.dart';

final _dio = getIt<Dio>();
final _storageService = getIt<SecureStorageRepo>();

Future<Options> authenticationOptions() async {
  final token = await _storageService.getToken();
  return Options(headers: {
    Headers.acceptHeader: 'application/json',
    Headers.contentTypeHeader: 'application/json',
    'Authorization': 'Bearer $token',
    'Access-Control_Allow_Origin': '*',
  });
}

Future<Options> unauthenticatedOptions() async {
  return Options(headers: {
    Headers.acceptHeader: 'application/json',
    Headers.contentTypeHeader: 'application/json',
    'Access-Control_Allow_Origin': '*',
  });
}

Future getRequest(String url) async {
  Response response = await _dio.get(url);
  return response.data;
}

Future postRequest(String url, Object body) async {
  Response response = await _dio.post(
    url,
    data: body,
    options: await unauthenticatedOptions(),
  );
  return response.data;
}

Future deleteRequest(String url, Object? body) async {
  Response response = await _dio.delete(
    url,
    data: body,
  );
  return response.data;
}

Future putRequest(String url, Object? body) async {
  Response response = await _dio.put(
    url,
    data: body,
  );
  return response.data;
}

Future authenticatedGetRequest(String url) async {
  Response response = await _dio.get(
    url,
    options: await authenticationOptions(),
  );
  return response.data;
}

Future authenticatedPatchRequest(String url, Object body) async {
  Response response = await _dio.patch(
    url,
    options: await authenticationOptions(),
    data: body,
  );
  return response.data;
}

Future authenticatedPostRequest(String url, Object body) async {
  Response response = await _dio.post(
    url,
    options: await authenticationOptions(),
    data: body,
  );
  return response.data;
}

Future authenticatedPutRequest(String url, Object body) async {
  Response response = await _dio.put(
    url,
    options: await authenticationOptions(),
    data: json.encode(body),
  );
  return response.data;
}