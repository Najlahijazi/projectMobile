import 'package:flutter/material.dart';

class NutritionalAdvicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nutritional Advice'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/nutrition.png', height: 500, width: 500,),
            SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}
