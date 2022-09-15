import 'package:flutter/material.dart';
import '../../models/Product.dart';

class UserProductListTile extends StatelessWidget {
  final Product product;
  const UserProductListTile(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(product.imageUrl),
      ),
      trailing: SizedBox(
        width: 100,
        child: Row(children: <Widget>[
          buildEditButton(context),
          buildDeleteButton(
            context,
          )
        ]),
      ),
    );
  }

  Widget buildDeleteButton(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.delete),
      onPressed: () async {
        print('delte a product');
      },
      color: Theme.of(context).errorColor,
    );
  }

  Widget buildEditButton(BuildContext context) {
    return IconButton(
      onPressed: () {
        print('Go to edit product screeen');
      },
      icon: const Icon(Icons.edit),
      color: Theme.of(context).primaryColor,
    );
  }
}
