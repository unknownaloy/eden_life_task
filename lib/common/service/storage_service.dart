import 'dart:convert';

import 'package:eden_life_task/common/models/eden_user/eden_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

typedef JSON = Map<String, dynamic>;

class StorageService {
  // Create storage
  final _storage = const FlutterSecureStorage();

  /// Method for saving persisting user data on the device
  Future<void> cacheEdenUser(EdenUser? user) async {
    if (user == null) return;

    try {
      await _storage.write(
        key: 'edenUser',
        value: json.encode(
          user.toJson(),
        ),
      );
    } catch (err) {
      debugPrint(
        "StorageService - cacheEdenUser -- Error writing user to storage -> err = $err",
      );
    }
  }

  /// Method for getting user stored on the device
  Future<EdenUser?> getEdenUser() async {
    try {
      final value = await _storage.read(key: "edenUser");

      debugPrint("StorageService - getEdenUser -- value -> $value");

      if (value != null) {
        final userJSON = json.decode(value) as JSON;

        return EdenUser.fromJson(userJSON);
      }
    } catch (err) {
      debugPrint(
        "StorageService - getEdenUser -- Error getting user from storage -> err = $err",
      );
    }
    return null;
  }
}
