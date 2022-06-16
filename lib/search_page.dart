import 'package:flutter/material.dart';

 class Searchpage extends StatelessWidget {
  const Searchpage({Key? key}) : super(key: key);

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

