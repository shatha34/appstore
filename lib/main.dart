import 'package:appstore/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( AppStore());
}

class AppStore extends StatelessWidget {
   AppStore({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeView.id,
     routes:{
        HomeView.id : (context) => HomeView(),

     },

    );
  }
}