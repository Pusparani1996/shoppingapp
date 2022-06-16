


import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String img;

  const Homepage({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsets.all(1),
      // padding: const EdgeInsets.all(10),
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          SizedBox(height: 150, width: 160, child: Image.network(img)),
          Text(
            text1,
            style: const TextStyle(color: Colors.black, fontSize: 10),
          ),
          Text(
            text2,
            style: const TextStyle(color: Colors.black, fontSize: 10),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: (){
                    
                  }, 
                  icon: const Icon(Icons.add), 
                  label: const Text("Add"))
               
              ],
            ),
          ),
          Text(
            text3,
            style: const TextStyle(color: Colors.black, fontSize: 10),
          ),
          Text(
            text4,
            style: const TextStyle(color: Colors.black, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
