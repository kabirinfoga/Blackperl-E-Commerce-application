import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Tab/secondtab.dart';
import '../../Tab/thirdTab.dart';
import '../../Tab/toptab.dart';

class MainDir extends StatefulWidget {
  const MainDir({Key? key}) : super(key: key);

  @override
  State<MainDir> createState() => _MainDirState();
}

class _MainDirState extends State<MainDir> {
  final systemColor =  SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.grey[900],
    statusBarColor:const  Color(0xFFCBCBCB),
  );
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemColor);
    return Scaffold(
      backgroundColor: const Color(0xFFCBCBCB),
      body: SingleChildScrollView(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                ),
                child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "Search here...",
                      suffixIcon: Icon(Icons.search_outlined)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18), color: Colors.black),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ListTile(
                      title: const Text(
                        "Balance",
                        style: TextStyle(color: Colors.grey),
                      ),
                      trailing: Text(
                        "VISA",
                        style:
                        GoogleFonts.lato(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        "15370.0",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      trailing: Text(
                        "....4751",
                        style: GoogleFonts.lato(color: Colors.grey, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  topCard("Top Deal", "assets/image/star.png"),
                  topCard("Life Style", "assets/image/book-alt.png"),
                  topCard("Favourite", "assets/image/heart.png"),
                  topCard("Clothes", "assets/image/layers.png"),
                  topCard("My shop", "assets/image/shop.png"),
                  topCard("Drink Plus", "assets/image/hamburger-soda.png"),
                  topCard("Hot Deals", "assets/image/shopping-bag.png"),
                  topCard("Others", "assets/image/hand-holding-heart.png"),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  secondCard("Mens Clothes", "assets/bitmap/polo-shirt.png", "Regular Clothes"),
                  secondCard("Women Clothes", "assets/bitmap/polo.png", "Regular Clothes"),
                  secondCard("Laptop", "assets/bitmap/laptop.png", "Laptop"),
                  secondCard("Desktop", "assets/bitmap/desktop.png", "Computer"),
                  secondCard("Smart Phones", "assets/bitmap/mobiles.png", "Mobiles"),
                  secondCard("Mens Shoes", "assets/bitmap/shoes.png", "Shoes"),
                  secondCard("Other", "assets/bitmap/other.png", "Other"),
                ],
              ),
            ),
            thirdCard("assets/kilo.webp"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                splashCard("Women look", "trendy", "assets/women/1.jpg"),
                splashCard("Fashion", "trendy", "assets/women/2.jpg"),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  upCard("  ", "assets/card/6.jpg", " "),
                  upCard("  ", "assets/card/we.webp", " "),
                  upCard("  ", "assets/card/2.jpg", "  "),
                  upCard("  ", "assets/card/3.jpg", "  "),
                  upCard("  ", "assets/card/4.jpg", "  "),
                  upCard("  ", "assets/card/5.jpg", "  "),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget upCard(String title ,String imgPath,String desc)  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){},
        child: Container(
          height: 150,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imgPath)
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          title,style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 22),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          desc,style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }



  Widget secondCard(String title, String imgPath, String desc)  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: 130,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),
                color: Colors.white
            ),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondTab()),
                );
              },
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(imgPath)
                    )
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(title,style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 16),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(desc,style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 13),),
          ),
        ],
      ),
    );
  }


  Widget topCard(String title ,String imgPath)  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 70,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),
            color: Colors.white
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const TopTab() )
                );
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Image.asset(imgPath),
              ),
            ),
            const SizedBox(height: 10),
            Text(title,style: GoogleFonts.lato(color: Colors.black,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }

  Widget thirdCard(String imgPath) {
    return Padding(
      padding:const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const ThirdTab()));
        },
        child: Container(
          height: 150,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imgPath)
              )
          ),
        ),
      ),
    );
  }
  Widget splashCard(String title, String desc, String imgPath ) {
    return  Padding(padding:const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 200,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Image.asset(imgPath,fit: BoxFit.cover,),
          ),
          Text(title,style: GoogleFonts.lato(color: Colors.brown,fontSize: 18),),
          Text(desc,style: GoogleFonts.lato(color: Colors.grey[900],fontSize: 16),),
        ],
      ),
    );
  }
}
