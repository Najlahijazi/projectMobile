import 'package:flutter/material.dart';
import 'BillPage.dart';

class DetailsPage extends StatelessWidget {
  final String heroTag;
  final String foodName;
  final String foodPrice;

  DetailsPage({required this.heroTag, required this.foodName, required this.foodPrice});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.green,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Details'),
        backgroundColor: Color(0xFF5AC035),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          Hero(
            tag: 'food_hero_tag', 
            child: Container(
              height: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(heroTag),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  foodName,
                  style: TextStyle(
                    fontFamily: 'Futur',
                    fontSize: 28.0,
                    color: Color(0xFF5B8842),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    Text(
                      '4.9',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.grey,
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Icon(Icons.star, color: Colors.green, size: 20.0),
                    Icon(Icons.star, color: Colors.green, size: 20.0),
                    Icon(Icons.star, color: Colors.green, size: 20.0),
                    Icon(Icons.star, color: Colors.green, size: 20.0),
                    Icon(Icons.star, color: Colors.green, size: 20.0),
                  ],
                ),
                SizedBox(height: 25.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '\$$foodPrice',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                    Container(
                      width: 150.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xFFEDFEE5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.remove_circle_outline, color: Color(0xFF5CB238)),
                            onPressed: () {},
                          ),
                          Text(
                            '3',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 24.0,
                              color: Color(0xFF5CB238),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.add_circle, color: Color(0xFF5AC035)),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Text(
                  'About the food',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 18.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  child: Text(
                    'This light home-cooked food is low salt and low oil with balanced nutrition, selected from high-quality ingredients. This delicious food may be your best healthy choice.',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),

                IconButton(
                  icon: Icon(
                    Icons.shopping_cart, // You can customize the icon
                    size: 50.0,
                    color: Color(0xFF5AC035),
                  ),
                  onPressed: () {
    
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BillPage(
                          foodName: foodName,
                          foodPrice: foodPrice,
                         
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
