import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    final userData = await fetchUserData();
    final Map<String, dynamic> userMap = json.decode(userData);
    final String username = userMap['username'];
    return 'Hello $username';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    final isUser = await checkCredentials();
    print('There is a user: $isUser');

    if (isUser) {
      final greeting = await greetUser();
      return greeting;
    } else {
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}
