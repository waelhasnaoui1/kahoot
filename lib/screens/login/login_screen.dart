import 'package:flutter/material.dart';
import 'package:kahoot/shared/components.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  defaultFormField(TextInputType.emailAddress,'E-mail'),
                  SizedBox(height: 20),
                  defaultFormField(TextInputType.text, "mot de passe"),
                  SizedBox(height: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Sign-in'),
                    ),
                  ),

                ],
              ),
            ),
        ),
    );
  }
}
