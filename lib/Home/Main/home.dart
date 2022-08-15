import 'package:blackperl/Home/Main/maindir.dart';
import 'package:blackperl/Home/Profile/profile.dart';
import 'package:blackperl/Home/Shop/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Cart/cart.dart';
import '../Search/search.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    MainDir(),
    Shop(),
    Cart(),
    Search(),
    Profile(),
  ];
  final systemColor =  SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.grey[900],
    statusBarColor:const  Color(0xFFCBCBCB),
  );
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemColor);
    return Scaffold(
      backgroundColor: const Color(0xFFCBCBCB),
      body: _widgetOptions.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue[900],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shop),label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.delivery_dining),label: "Order"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
      ),
    );
  }
}
