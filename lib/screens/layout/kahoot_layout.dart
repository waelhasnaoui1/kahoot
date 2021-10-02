import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kahoot/screens/layout/cubit/cubit.dart';
import 'package:kahoot/screens/layout/cubit/states.dart';

class KahootLayout extends StatelessWidget {

  int selecetedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<KahootCubit,KahootStates>(
      listener: (context,state){

      },
      builder: (context,state){
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: KahootCubit.get(context).currentIndex,
            onTap: (index){
              KahootCubit.get(context).changeBotomNav(index);
            },
            selectedItemColor: Colors.amber[800],
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.black),label: 'Accueil'),
              BottomNavigationBarItem(icon: Icon(Icons.find_in_page_rounded,color: Colors.black),label: 'Découvrir'),
              BottomNavigationBarItem(icon: Icon(Icons.videogame_asset,color: Colors.black),label: 'Code Pin'),
              BottomNavigationBarItem(icon: Icon(Icons.create_new_folder_sharp,color: Colors.black),label: 'Créer'),
              BottomNavigationBarItem(icon: Icon(Icons.people_sharp,color: Colors.black),label: 'profile'),

            ],
          ),
          body:KahootCubit.get(context).screens[KahootCubit.get(context).currentIndex] ,
        );
      },
    );
  }
}
