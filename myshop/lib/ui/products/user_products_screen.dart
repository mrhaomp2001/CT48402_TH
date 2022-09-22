import 'package:flutter/material.dart';

import 'package:flutter/src/foundation/key.dart';

import 'user_product_list_tile.dart';
import 'ProductsManager.dart';
import '../shared/app_drawer.dart';

class UserProductsScreen extends StatelessWidget {
  const UserProductsScreen({super.key});
  static const routeName = '/user-products';
  @override
  Widget build(BuildContext context) {
    final ProductsManager productsManager = ProductsManager();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Products'),
        actions: <Widget>[
          buildAddButton(),
        ],
      ),
      drawer: const AppDrawer(),
      body: RefreshIndicator(
        onRefresh: () async => print("Refresh products"),
        child: buildUserProductListView(productsManager),
      ),
    );
  }

  Widget buildUserProductListView(ProductsManager productsManager) {
    return ListView.builder(
      itemCount: productsManager.itemsCount,
      itemBuilder: (ctx, i) => Column(
        children: [
          UserProductListTile(
            productsManager.items[i],
          ),
          const Divider(),
        ],
      ),
    );
  }

  Widget buildAddButton() {
    return IconButton(
        icon: const Icon(Icons.add),
        onPressed: () {
          print('Go to add product');
        });
  }
}
