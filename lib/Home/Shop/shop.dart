import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  final systemColor = SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.grey[900],
      statusBarColor:const Color(0xFFCBCBCBC)
  );
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemColor);
    return Scaffold(
      backgroundColor:const Color(0xFFCBCBCBC),
      body: SingleChildScrollView(
        child: Column(
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
            ListTile(
              title: Text("Latest Clothes", style: GoogleFonts.lato(fontSize: 16,color: Colors.grey[900])),
              trailing: TextButton(onPressed: (){},child: Text("Show All",style: GoogleFonts.lato(color: Colors.grey[900]),),),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  myClothes(" ", "assets/clothes/1.jpg", " "),
                  myClothes(" ", "assets/clothes/2.jpg", " "),
                  myClothes(" ", "assets/clothes/3.jpg", " "),
                  myClothes(" ", "assets/clothes/4.jpg", " "),
                  myClothes(" ", "assets/clothes/5.jpg", " "),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                splashCard("Men shirt", "trendy", "assets/mens/1.jpg"),
                splashCard("Corbon shirt", "trendy", "assets/mens/2.jpg"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                splashCard("Mens look", "trendy", "assets/mens/3.jpg"),
                splashCard("Perfect shirts", "trendy", "assets/women/3.jpg"),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                splashCard("Women look", "trendy", "assets/women/1.jpg"),
                splashCard("Fashion", "trendy", "assets/women/2.jpg"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  //.............................................................................................................................................................................................................





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


  Widget myClothes(String title ,String imgPath,String desc)  {
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

