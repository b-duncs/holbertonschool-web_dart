import '0-util.dart';

Future<void> usersCount() async {
  try {
    final userCount = await fetchUsersCount();
    print('$userCount');
  } catch (error) {
    print('Failed to fetch user count: $error');
  }
}
