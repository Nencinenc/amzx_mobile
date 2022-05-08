import 'package:amzx/configuration/requests.dart';
import 'package:amzx/models/network/login_response.dart';
import 'package:amzx/repositories/secure_storage_repo.dart';

import '../global_variables.dart';

class API {
  final SecureStorageRepo storageService;

  API({
    required this.storageService,
  });

  Future<LoginResponse> login(
    String email,
    String password,
  ) async {
    final url = '$baseUrl/auth/login';
    final body = {
      'email': email,
      'password': password,
    };
    final data = await postRequest(url, body);
    return LoginResponse.fromJson(data);
  }
}
