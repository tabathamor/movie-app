import 'package:flutter/material.dart';

import 'package:movie_app/screens/screens.dart';

void main() => runApp(MyApp());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      initialRoute: 'home',
      routes: {
        'home':( _ ) => HomeScreen(),
        'details': ( _ ) => DetailsScreen( )
      },
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          color: Colors.indigo, 
        )
      ),
     
    );
  }
}