import 'package:flutter/material.dart';

import 'order_manager.dart';
import 'order_item_card.dart';
import '../shared/app_drawer.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('buiding orders');

    final orderManager = OrderManager();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Orders'),
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: orderManager.orderCount,
        itemBuilder: (context, index) =>
            OrderItemCard(orderManager.orders[index]),
      ),
    );
  }
}
