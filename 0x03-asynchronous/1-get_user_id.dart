import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  try {
    final userData = await fetchUserData();
    final Map<String, dynamic> userMap = json.decode(userData);
    final String userId = userMap['id'];
    return userId;
  } catch (error) {
    throw 'Failed to get user ID: $error';
  }
}
