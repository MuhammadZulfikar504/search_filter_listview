import 'package:flutter/material.dart';
import '../item/items.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  const ItemPage({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: Text(item.title),
        ),
        body: Image.network(
          item.urlImage,
          width: double.infinity,
          height: 300,
          fit: BoxFit.cover,
        ),
      );
}
