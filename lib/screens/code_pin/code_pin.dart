import 'package:flutter/material.dart';

class CodePin extends StatelessWidget {
  const CodePin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [

            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [
                  0.1,
                  0.4,
                  0.6,
                  0.9,
                ],
                colors: [
                  Colors.blue,
                  Colors.deepPurpleAccent,
                  Colors.indigo,
                  Colors.teal,
                ],
              ),
              ),
            ),

            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Title here !",style: TextStyle(fontSize: 60.0),),
                  SizedBox(height: 20.0),
                  Container(

                    width: MediaQuery.of(context).size.width*0.8,
                    height: MediaQuery.of(context).size.height*0.3,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(

                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
                              suffix: Icon(Icons.vpn_key),
                              border: OutlineInputBorder(),
                              hintText: 'Entrez le code',

                            ),
                          ),
                          TextButton(

                              onPressed: (){

                              },
                              child: Text('Valider'))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
