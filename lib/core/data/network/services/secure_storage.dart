import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  final FlutterSecureStorage secureStorage = const FlutterSecureStorage();

  Future<void> storeToken(String key, String token) async {
    await secureStorage.write(key: key, value: token);
  }

  Future<String?> readToken(String key) async {
    return await secureStorage.read(key: key);
  }

  Future<void> deleteToken(String key) async {
    await secureStorage.delete(key: key);
  }
}
