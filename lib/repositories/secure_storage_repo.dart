import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageRepo {
  final FlutterSecureStorage storage;

  SecureStorageRepo({
    required this.storage,
  });

  AndroidOptions _getAndroidOptions() =>
      const AndroidOptions(encryptedSharedPreferences: true);

  Future addToken(String token) async {
    try {
      await storage.write(
        key: 'access_token',
        value: token,
        aOptions: _getAndroidOptions(),
      );
    } catch (e) {
      throw Exception('Unable to write token');
    }
  }

  Future<String?> getToken() async {
    try {
      String? token = await storage.read(
        key: 'access_token',
        aOptions: _getAndroidOptions(),
      );

      return token;
    } catch (e) {
      throw Exception('Unable to read token');
    }
  }

  Future deleteAll() async {
    try {
      await storage.deleteAll();
    } catch (e) {
      throw Exception('Unable to delete all');
    }
  }
}