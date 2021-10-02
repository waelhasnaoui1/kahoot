import 'package:flutter/material.dart';
import 'package:kahoot/screens/categorie/categorie.dart';
import 'package:kahoot/shared/components.dart';

class CreateQuizScreen extends StatelessWidget {
  const CreateQuizScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton.extended(
        icon: Icon(Icons.add),
          backgroundColor: Colors.green,
          onPressed: (){

          },
          label: const Text('ajouter une question'),
      ) ,
      body:SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height*0.3,
                  color: Colors.grey,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.photo
                        ),
                        SizedBox(height: 8.0),
                        Text('Appuie pour ajouter une image de couverture'),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text('Titre',
                  style: TextStyle(
                      fontSize: 20.0
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(

                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),

                          border: OutlineInputBorder(),
                          hintText: 'Entrez le code',

                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    IconButton(onPressed: (){}, icon: Icon(Icons.settings)),

                  ],
                ),
                SizedBox(height: 8),
                Text('Questions',
                  style: TextStyle(
                      fontSize: 20.0
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height*0.5,
                    child: ListView.separated(
                        separatorBuilder: (context,index)=> SizedBox(width: 20,height: 20),
                        scrollDirection: Axis.vertical,
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
      ) ,
    );
  }
}
