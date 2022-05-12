import 'package:amzx/repositories/secure_storage_repo.dart';

import '../configuration/services/api.dart';

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
}
