import 'package:flutter/material.dart';
import 'package:part1/NutritionalAdvicePage.dart';
import 'Details_page.dart';

class Food {
  String foodname;
  double foodprice;
  String path;
  Food(this.foodname, this.foodprice, this.path);
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to our Store'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => NutritionalAdvicePage(),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Good',
                  style: TextStyle(
                    fontFamily: 'Futur',
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5B8842),
                    fontSize: 50.0,
                  ),
                ),
                Text(
                  'Morning',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5B8842),
                    fontSize: 50.0,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Popular Food',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.0),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailsPage(
                        heroTag: items[index].path,
                        foodName: items[index].foodname,
                        foodPrice: items[index].foodprice.toString(),
                      ),
                    ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Image.asset(
                          items[index].path,
                          width: 90,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 10),
                        Text(
                          items[index].foodname,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

List<Food> items = [
  Food('vegan breakfast', 20, 'images/plate1.png'),
  Food('protein salad', 21, 'images/plate2.png'),
  Food('chicken curry', 23, 'images/plate4.png'),
  Food('fish filet', 24, 'images/plate5.png'),
  Food('steak with vegetables', 26, 'images/plate6.png'),
];
