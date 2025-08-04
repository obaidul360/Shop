import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text("HomePages")),backgroundColor: Colors.blueGrey,),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Text("HomePage")
                ],
              ),
            ),
    );
  }
}
