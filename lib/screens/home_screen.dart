import 'package:flutter/material.dart';
import 'package:movie_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peliculas'),
        elevation: 0,
        actions: [
          IconButton(onPressed: (){},
           icon: Icon( Icons.search_outlined) )
        ],
      ),
      body: SingleChildScrollView(
        child: Column( 
        children: [
          CardSwiper(),
          MovieSlider(),
          
        ],
      ))
    );
  }
}

