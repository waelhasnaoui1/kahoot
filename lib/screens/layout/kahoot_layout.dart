import 'package:flutter/material.dart';

class KahootLayout extends StatefulWidget {
  const KahootLayout({Key key}) : super(key: key);

  @override
  _KahootLayoutState createState() => _KahootLayoutState();
}

class _KahootLayoutState extends State<KahootLayout> {
  int selecetedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selecetedIndex,
        onTap: (index){
          setState(() {
            selecetedIndex = index ;
          });
        },
        selectedItemColor: Colors.amber[800],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.black,),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.black,),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.black,),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.black,),label: 'home'),
        ],
      ),
    );
  }
}
