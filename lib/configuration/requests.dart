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
  try {
    Response response = await _dio.get(url);
    return response.data;
  } catch (e) {
    throw Exception(e);
  }
}

Future postRequest(String url, Object body) async {
  try {
    Response response = await _dio.post(
      url,
      data: body,
      options: await unauthenticatedOptions(),
    );
    return response.data;
  } catch (e) {
    throw Exception(e);
  }
}

Future deleteRequest(String url, Object? body) async {
  try {
    Response response = await _dio.delete(
      url,
      data: body,
    );
    return response.data;
  } catch (e) {
    throw Exception(e);
  }
}

Future putRequest(String url, Object? body) async {
  try {
    Response response = await _dio.put(
      url,
      data: body,
    );
    return response.data;
  } catch (e) {
    throw Exception(e);
  }
}

Future authenticatedGetRequest(String url) async {
  try {
    Response response = await _dio.get(
      url,
      options: await authenticationOptions(),
    );
    return response.data;
  } catch (e) {
    throw Exception(e);
  }
}

Future authenticatedPatchRequest(String url, Object body) async {
  try {
    Response response = await _dio.patch(
      url,
      options: await authenticationOptions(),
      data: body,
    );
    return response.data;
  } catch (e) {
    throw Exception(e);
  }
}

Future authenticatedPostRequest(String url, Object body) async {
  try {
    Response response = await _dio.post(
      url,
      options: await authenticationOptions(),
      data: body,
    );
    return response.data;
  } catch (e) {
    throw Exception(e);
  }
}

Future authenticatedPutRequest(String url, Object body) async {
  try {
    Response response = await _dio.put(
      url,
      options: await authenticationOptions(),
      data: json.encode(body),
    );
    return response.data;
  } catch (e) {
    throw Exception(e);
  }
}
