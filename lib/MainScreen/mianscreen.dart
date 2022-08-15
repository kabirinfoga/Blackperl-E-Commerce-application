import 'package:blackperl/Authentication/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Authentication/signin.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final systemColor = const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black,
    statusBarColor: Colors.black
  );
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemColor);
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          const SizedBox(height: 70.0),
          Center(
            child: Text(
              "Solution of searching products from of 2000",
              style: GoogleFonts.lato(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              "All that you need ,",style: GoogleFonts.lato(fontSize: 35,color: Colors.white,fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "All that you want",style: GoogleFonts.lato(fontSize: 32,color: Colors.white,fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "just here all!",style: GoogleFonts.lato(fontSize: 32,color: Colors.white,fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 40),
          Container(
            height: 150,
            width: double.infinity,
            decoration:const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/women/bg.jpg")
              )
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[500]
              ),
              child: TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp()));
                },
                child: Text("Create an account",style: GoogleFonts.lato(color: Colors.white,fontSize: 16),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
              ),
              child: TextButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const SignIn()));},
                child: Text("Sign in",style: GoogleFonts.lato(color: Colors.black,fontSize: 16),),
              ),
            ),
          ),
          const SizedBox(height: 50),
          Center(
            child: Text(
              "By proceeding. I accept the shop box shopping service",
              style: GoogleFonts.lato(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "and confirm that i have read  Company Privacy Policy",
              style: GoogleFonts.lato(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "link in the app are sponsored",
              style: GoogleFonts.lato(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
