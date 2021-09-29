import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kahoot/screens/bibliotheque/bibliotheque_screen.dart';
import 'package:kahoot/screens/code_pin/code_pin.dart';
import 'package:kahoot/screens/decouvrir/decouvrir_screen.dart';
import 'package:kahoot/screens/home_screen/home_screen.dart';
import 'package:kahoot/screens/layout/cubit/states.dart';
import 'package:kahoot/screens/home_screen/home_screen.dart';
class KahootCubit extends Cubit<KahootStates>{
  KahootCubit() : super(KahootInitialState());

  static KahootCubit get(context) => BlocProvider.of(context);
  int currentIndex =0 ;
  List<Widget> screens = [HomeScreen(),DecouvrirScreen(),CodePin(),BibliothequeScreen()];
  void changeBotomNav(int index){
    currentIndex = index ;
    emit(ChangeBottomNavState());
  }
}