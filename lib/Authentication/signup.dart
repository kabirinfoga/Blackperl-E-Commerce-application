import 'package:blackperl/Authentication/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Home/Main/home.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final systemColor = const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black,
      statusBarColor: Colors.black
  );

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemColor);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Sign Up",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),
          ),
          const SizedBox(height: 20),
          Padding(
            padding:const EdgeInsets.all(8.0),
            child: Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white
              ),
              child: TextField(
                controller: emailController,
                style:const TextStyle(fontSize: 16) ,
                decoration:const InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(borderSide: BorderSide.none)
                ),
              ),
            ),
          ),
          Padding(
            padding:const EdgeInsets.all(8.0),
            child: Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white
              ),
              child: TextField(
                controller: passwordController,
                style:const TextStyle(fontSize: 16) ,
                decoration:const InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(borderSide: BorderSide.none)
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding:const EdgeInsets.all(8.0),
            child: Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.purple
              ),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
                },
                child:const Text("SignUp",style: TextStyle(fontSize: 18.0),),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Already have an account?",style: TextStyle(fontSize: 16,color: Colors.white),),
              TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SignIn()));
                  },
                  child:const Text("SignIn",style: TextStyle(fontSize: 18),)
              )
            ],
          )
        ],
      ),
    );
  }
}
