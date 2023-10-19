import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    final userData = await fetchUserData();
    final Map<String, dynamic> userMap = json.decode(userData);
    final String userId = userMap['id'];

    final userOrdersJson = await fetchUserOrders(userId);
    final List<dynamic> userOrders = json.decode(userOrdersJson);

    double totalPrice = 0.0;

    for (var orderItem in userOrders) {
      final productPriceJson = await fetchProductPrice(orderItem);

      final double productPrice = double.tryParse(productPriceJson) ?? 0.0;

      totalPrice += productPrice;
    }

    return totalPrice;
  } catch (error) {
    return -1; // Return -1 in case of an error
  }
}
