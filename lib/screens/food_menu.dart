import 'package:flutter/material.dart';
import 'package:panucci_ristorante/cardapio.dart';
import 'package:panucci_ristorante/components/food_item.dart';

class FoodMenu extends StatelessWidget {
  const FoodMenu({super.key});
  final List items = comidas;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: CustomScrollView(
        slivers: <Widget>[
          const SliverToBoxAdapter(child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              "Menu",
              style: TextStyle(
                fontFamily: "Caveat",
                fontSize: 32
              ),
              textAlign: TextAlign.center,
            ),
          )),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return FoodItem(
              imageURI: items[index]["image"],
              itemTitle: items[index]["name"],
              itemPrice: items[index]["price"],
            );
          },
          childCount: items.length,
          ))
        ],
      ),
    );
  }
}
