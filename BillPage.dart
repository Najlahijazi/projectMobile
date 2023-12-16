import 'package:flutter/material.dart';

class BillPage extends StatelessWidget {
  final String foodName;
  final String foodPrice;

  BillPage({required this.foodName, required this.foodPrice});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bill Page'),
        backgroundColor: Color(0xFF5AC035),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            Text(
              'Bill Summary',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.0),
            ListTile(
              title: Text('Food Name:'),
              subtitle: Text(foodName),
            ),
            ListTile(
              title: Text('Food Price:'),
              subtitle: Text('\$$foodPrice'),
            ),
         
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
            
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF5AC035),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Center(
                  child: Text(
                    'Pay Now',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 17.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
