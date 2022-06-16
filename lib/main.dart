

import 'package:flutter/material.dart';
import 'package:shoppingapp/account_page.dart';
import 'package:shoppingapp/favorite_page.dart';
import 'package:shoppingapp/homepage.dart';
import 'package:shoppingapp/mycard.dart';
import 'package:shoppingapp/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
// List<Widget>_screens =[
//   Accountpage(), Favoritepage(),Searchpage(),Mycardpage()
// ];
int currentIndex =0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text("Deal of the Week"),
      ),
      body: GridView.count(
        shrinkWrap: true,
        primary: false,
        crossAxisCount: 2,
        childAspectRatio: 2/3,
        //mainAxisSpacing: 10,
        crossAxisSpacing: 0,
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.all(2.0),
            child: Homepage(
              text1: "         Apple \n Best of Himalaya",
              text2: "Rs 160",
              text3: "Standard Delivery",
              text4: "(Tomorrow evening)",
             img: 'https://5.imimg.com/data5/YY/EN/MY-8155364/fresh-apple-500x500.jpg',
        ),
      ),
       Padding(
            padding: EdgeInsets.all(2.0),
            child: Homepage(
            
              text1: "Green Apple",
              text2: "Rs 200",
              text3: "Express Delivery",
              text4: "(Tomorrow morning)", 
              
              img: 'https://4.imimg.com/data4/SP/MI/MY-28145617/green-apple-500x500.jpg',
             
        ),
      ),
       Padding(
            padding: EdgeInsets.all(2.0),
            child: Homepage(
              text1: "Nutella \n Teste of Hazelnuts",
              text2: "Rs 245",
              text3: "Express  Delivery",
              text4: "(Tomorrow morning)", 
              img: 'https://m.media-amazon.com/images/I/717O+6oYVdS._SL1500_.jpg',
            
        ),
      ),
       Padding(
            padding: EdgeInsets.all(2.0),
            child: Homepage(
              text1: "Whole Wheat\n Bread",
              text2: "Rs 30",
            
              text3: "Standard Delivery",
              text4: "(Tomorrow evening)", img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW0fWWKl1PeXrSraKqkzN-x_jLNlJ1MCyY-XYFxJPEjQJTWFsa2UBmUGJXEejb_Nehhls&usqp=CAU',
            
        ),
      ),
        ],
      ),
      bottomNavigationBar:
          BottomNavigationBar(
            selectedItemColor: Theme.of(context).primaryColor,
            unselectedItemColor: Colors.grey,
           // type: BottomNavigationBarType.fixed,
            currentIndex: 0,
            onTap: (value){
              currentIndex = value;
              setState(() {
                
              });
            },

            elevation: 5,
            items: const<BottomNavigationBarItem> [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
           // color: Colors.black,
          
          ),
          label: "",
        
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            //color: Colors.black,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
           // color: Colors.black,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_bag,
           // color: Colors.black,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            //color: Colors.black,
          ),
          label: "",
        ),
      ],
     
      ),
    );
  }
}
