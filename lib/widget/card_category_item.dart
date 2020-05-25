import 'package:flutter/material.dart';
import 'package:lessonfour/utils/functions.dart';

class CardCategoryItem extends StatelessWidget{

  final String imageUrl;
  final String title;

  CardCategoryItem({this.imageUrl, this.title});

  @override
  Widget build(BuildContext context){
    return Card(
      child: Padding(
        padding: setScreenPadding(context, top: 3),
        child: Column(
          children: <Widget>[
            Image.asset(imageUrl,
              height: MediaQuery.of(context).size.height * 0.16,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
            Text(title)
          ],
        ),
      ),
    );
  }
}
