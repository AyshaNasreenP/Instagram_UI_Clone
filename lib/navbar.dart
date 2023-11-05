import 'package:flutter/material.dart';
import 'home.dart';

class Botnavi extends StatefulWidget {
  const Botnavi({super.key});

  @override
  State<Botnavi> createState() => _BotnaviState();
}

class _BotnaviState extends State<Botnavi> {

  int _index = 0 ;

  final pages = [
    home(),
    home(),
    home(),
    home(),
    home(),
  ];

  void tap(index)
  {
    setState(() {
      _index= index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        items:  [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined,color: Colors.black,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined,color: Colors.black,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.video_collection,color: Colors.black,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.image,color: Colors.black,),label: ""),
        ],
        currentIndex: _index,
        onTap: tap,

      ),

    );
  }
}



