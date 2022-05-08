import 'package:flutter/material.dart';

import '../configuration/services/api.dart';
import '../repositories/secure_storage_repo.dart';

class LoginProvider extends ChangeNotifier {
  final API apiService;
  final SecureStorageRepo storageService;

  LoginProvider({
    required this.apiService,
    required this.storageService,
  });

  Future login(String email, String password) async {
    final data = await apiService.login(
      email,
      password,
    );
    await storageService.addToken(data.token);
  }

  Future<bool> isLogged() async {
    final token = await storageService.getToken();
    return token != null;
  }

  Future signOut() async {
    await storageService.deleteAll();
  }
}
