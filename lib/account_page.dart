import 'package:flutter/material.dart';

 class Accountpage extends StatelessWidget {
  const Accountpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Search"),
      actions: [
        IconButton(
          onPressed: (){},
         icon: const Icon(Icons.search))
      ],

    );
    
  }
}