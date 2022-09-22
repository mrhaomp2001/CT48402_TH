import 'package:flutter/material.dart';

import 'order_manager.dart';
import 'order_item_card.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('buiding orders');

    final orderManager = OrderManager();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Orders'),
      ),
      body: ListView.builder(
        itemCount: orderManager.orderCount,
        itemBuilder: (context, index) =>
            OrderItemCard(orderManager.orders[index]),
      ),
    );
  }
}
