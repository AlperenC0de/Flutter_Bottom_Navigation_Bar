import 'package:flutter/material.dart';
import 'package:flutter_application_3/bottomNavigator_Usage/page1.dart';
import 'package:flutter_application_3/bottomNavigator_Usage/page2.dart';
import 'package:flutter_application_3/bottomNavigator_Usage/page3.dart';

class mainPageTitle extends StatefulWidget {
  const mainPageTitle({super.key});

  @override
  State<mainPageTitle> createState() => _mainPageTitleState();
}

class _mainPageTitleState extends State<mainPageTitle> {
  int choosenIndex=0;
  var pages=[const Page1(), const Page2(), const Page3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Center(child: Text("Bottom Navigation")), backgroundColor: Colors.blue,),
      body: pages[choosenIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.looks_one), label: "One"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_two), label: "Two"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_3), label: "Three"),
        ],
        currentIndex: choosenIndex,
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        onTap:(index){
          setState(() {
            choosenIndex=index;
          });
        },
        ),
    );
  }
}