import 'package:flutter/material.dart';
import 'package:lessonfour/utils/functions.dart';
import 'package:lessonfour/widget/card_category_item.dart';
import 'package:lessonfour/widget/navigation_drawer.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        drawer: NavigationDrawer(),
        body: GridView.count(
          primary: false,
          padding: setScreenPadding(context, left: 2, right: 2, top: 2),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            InkWell(
              child: CardCategoryItem(
                imageUrl: 'images/computer.png',
                title: 'Electronic',
              ),
              onTap: (){},
            ),
            InkWell(
              child: CardCategoryItem(
                imageUrl: 'images/wallet.png',
                title: 'Job',
              ),
              onTap: () {},
            ),
            InkWell(
              child: CardCategoryItem(
                imageUrl: 'images/food.png',
                title: 'Food',
              ),
              onTap: (){},
            ),
            InkWell(
              child: CardCategoryItem(
                imageUrl: 'images/shirt.png',
                title: 'Clothes',
              ),
              onTap: (){},
            )
          ],
        ));
  }
}
