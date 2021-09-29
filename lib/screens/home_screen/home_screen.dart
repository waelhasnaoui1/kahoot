import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:CircleAvatar(
          radius: 25.0,
          child: Image.network('https://image.freepik.com/free-photo/skeptical-woman-has-unsure-questioned-expression-points-fingers-sideways_273609-40770.jpg'),

        ) ,

        backgroundColor: Colors.white70,
        elevation: 20,
        centerTitle: true,
        title: Text('Kahoot !',
        style: TextStyle(
          color: Colors.indigo
        ),
        ),
      ),
      body: SafeArea(

        child: Column(
          children: [

            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 150,
              child: ListView.separated(
                separatorBuilder: (context,index)=> SizedBox(width: 20,height: 20),
                scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context,index){
                    return Container(
                      color: Colors.red,
                      width: 100,
                      height: 100,
                    );
                  }

              ),

            ),
            Container(
              width: 100,
                height: 100,
                child: Image.network('https://image.freepik.com/free-photo/skeptical-woman-has-unsure-questioned-expression-points-fingers-sideways_273609-40770.jpg')),
          ],
        ),
      ),
    );
  }
}
