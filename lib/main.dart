import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery Shop',
      color: Colors.green,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Grocery Shop'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.green,
            ),
          ),
          title: Text(widget.title, textAlign: TextAlign.left),
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          actions: <Widget>[
            Stack(
              children: <Widget>[
                IconButton(icon: Icon(Icons.notifications), color: Colors.green,),
                Positioned(
                  top: 3,
                  right: 7,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:Colors.deepOrange,
                    ),
                    child: Center(
                      child: Text('2', style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800
                      ),),
                    ),
                  ),
                )
              ],
            ),
          ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            title: Text('Home'),
            backgroundColor: Colors.green,
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.apps,),
              title: Text('Catagory'),
              backgroundColor: Colors.green
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text('Cart'),
              backgroundColor: Colors.green
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Account'),
              backgroundColor: Colors.green
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              title: Text('More'),
              backgroundColor: Colors.green
            ),
          ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
