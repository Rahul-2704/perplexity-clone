
import 'package:flutter/material.dart';
import 'package:perplexity_clone/widgets/navbar.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Row(
        children: [
          // sidebar
          Navbar(),
          // main section and footer
          Column(
            children: [
              // main section
              // footer
            ],
          )
        ],
      )
    );
  }
}