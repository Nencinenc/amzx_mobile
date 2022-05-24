import 'package:amzx/repositories/secure_storage_repo.dart';
import 'package:flutter/cupertino.dart';

import '../configuration/services/api.dart';
import '../routes/routes.dart';

class UserRepository {
  final API apiService;
  final SecureStorageRepo storageService;

  UserRepository({
    required this.apiService,
    required this.storageService,
  });

  Future handleAddToken(String email, String password) async {
    try {
      final data = await apiService.login(
        email,
        password,
      );
      final token = data.token ?? '';
      if (token != '') {
        await storageService.addToken(token);
      }
    } catch (e) {
      storageService.deleteAll();
    }
  }

  Future login(
    String email,
    String password,
    BuildContext context,
  ) async {
    await handleAddToken(
      email,
      password,
    );
    final isSignedIn = await isLogged();
    if (isSignedIn) {
      Navigator.pushNamedAndRemoveUntil(
        context,
        RouteManager.homePage,
        (route) => false,
      );
    }
  }

  Future<bool> isLogged() async {
    final token = await storageService.getToken();
    return token != null;
  }

  Future signOut(BuildContext context) async {
    await storageService.deleteAll();
    Navigator.pushNamedAndRemoveUntil(
      context,
      RouteManager.landingPage,
      (route) => false,
    );
  }
}
