import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final systemColor =  SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.grey[900],
    statusBarColor:const  Color(0xFFCBCBCB),
  );
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemColor);
    return const Scaffold(
      body: Center(
        child: Text("You don't have purchesed any products"),
      ),
    );
  }
}
