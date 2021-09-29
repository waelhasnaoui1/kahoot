import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
import 'package:kahoot/screens/layout/cubit/cubit.dart';
import 'package:kahoot/screens/layout/cubit/states.dart';
import 'package:kahoot/screens/layout/kahoot_layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp(

    startWidget: KahootLayout(),
  ));
}

// Stateless
// Stateful

// class MyApp

class MyApp extends StatelessWidget
{

  final Widget startWidget;

  MyApp({
    //this.isDark,
    this.startWidget,
  });

  @override
  Widget build(BuildContext context)
  {
    return MultiBlocProvider(
      providers: [

        BlocProvider(
          create: (BuildContext context) =>KahootCubit(),
        ),
      ],
      child: BlocConsumer<KahootCubit, KahootStates>(
        listener: (context, state) {},
        builder: (context, state) {

          return MaterialApp(

            themeMode: ThemeMode.light,
            //themeMode: AppCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
            home: KahootLayout(),
          );
        },
      ),
    );
  }
}


