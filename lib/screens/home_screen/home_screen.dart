import 'package:flutter/material.dart';
import 'package:kahoot/screens/categorie/categorie.dart';
import 'package:kahoot/shared/components.dart';

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
      body: SingleChildScrollView(
        child: SafeArea(

          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Categories",style: TextStyle(
                  fontSize: 20.0
                ),),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    width: double.infinity,
                    height: 150,
                    child: ListView.separated(
                      separatorBuilder: (context,index)=> SizedBox(width: 20,height: 20),
                      scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context,index){
                          return GestureDetector(
                            onTap: (){
                              navigateTo(context, Categorie());
                            },
                            child: Container(
                              color: Colors.red,
                              width: 100,
                              height: 100,
                            ),
                          );
                        }

                    ),
                  ),
                ),

                Text("Testez votre niveau !",style: TextStyle(
                    fontSize: 20.0
                ),),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    width: double.infinity,
                    height: 150,
                    child: ListView.separated(
                        separatorBuilder: (context,index)=> SizedBox(width: 20,height: 20),
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context,index){
                          return GestureDetector(
                            onTap: (){
                              navigateTo(context, Categorie());
                            },
                            child: Container(
                              color: Colors.red,
                              width: 100,
                              height: 100,
                            ),
                          );
                        }

                    ),
                  ),
                ),

                Text("Mes Quiz",style: TextStyle(
                    fontSize: 20.0
                ),),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    width: double.infinity,
                    height: 150,
                    child: ListView.separated(
                        separatorBuilder: (context,index)=> SizedBox(width: 20,height: 20),
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context,index){
                          return GestureDetector(
                            onTap: (){
                              navigateTo(context, Categorie());
                            },
                            child: Container(
                              color: Colors.red,
                              width: 100,
                              height: 100,
                            ),
                          );
                        }

                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
