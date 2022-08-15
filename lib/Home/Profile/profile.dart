import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final systemColor = SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.grey[900], statusBarColor: Colors.white);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemColor);
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(onPressed: (){}, icon:const Icon(Icons.menu)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      color: Colors.pink),
                  child: Image.asset("assets/customnav/man.png"),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                children: [
                  Text("Subham Yadav",style: GoogleFonts.lato(fontSize: 18.0,color: Colors.black),),
                  Text("Join date 17/10/2020",style: GoogleFonts.lato(fontSize: 15.0,color: Colors.black),),
                  Text("Golden Account",style: GoogleFonts.lato(fontSize: 14.0,color: Colors.grey[700]),),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.person,color: Colors.grey[900],),
            title: Text("Profile " ,
              style: GoogleFonts.lato(fontSize: 16,color: Colors.grey[900],fontWeight: FontWeight.w600),
            ),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.account_circle,color: Colors.grey[900],),
            title: Text("Account" ,
              style: GoogleFonts.lato(fontSize: 16,color: Colors.grey[900],fontWeight: FontWeight.w600),
            ),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart,color: Colors.grey[900],),
            title: Text("Cart" ,
              style: GoogleFonts.lato(fontSize: 16,color: Colors.grey[900],fontWeight: FontWeight.w600),
            ),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.delivery_dining,color: Colors.grey[900],),
            title: Text("My Order" ,
              style: GoogleFonts.lato(fontSize: 16,color: Colors.grey[900],fontWeight: FontWeight.w600),
            ),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.location_on,color: Colors.grey[900],),
            title: Text("Address" ,
              style: GoogleFonts.lato(fontSize: 16,color: Colors.grey[900],fontWeight: FontWeight.w600),
            ),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.help_outlined,color: Colors.grey[900],),
            title: Text("Help" ,
              style: GoogleFonts.lato(fontSize: 16,color: Colors.grey[900],fontWeight: FontWeight.w600),
            ),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.logout,color: Colors.grey[900],),
            title: Text("Logout" ,
              style: GoogleFonts.lato(fontSize: 16,color: Colors.grey[900],fontWeight: FontWeight.w600),
            ),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
