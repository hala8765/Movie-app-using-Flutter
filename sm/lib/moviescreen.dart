import 'package:flutter/material.dart';
import 'package:sm/moviemodel.dart';

 
  
  class MovieScreen extends StatelessWidget {
  final Movie movie;

  const MovieScreen({Key? key,required this.movie}) :super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Container(height:double.infinity,color: Color.fromARGB(0, 24, 24, 26),
          ),
          Image.network(movie.imagePath,width: double.infinity,
          height:MediaQuery.of(context).size.height*0.5,
          fit:BoxFit.cover,
          ),
          Positioned.fill(child: DecoratedBox(decoration:BoxDecoration(gradient: LinearGradient(
          colors: [Colors.transparent,Colors.black.withOpacity(0.7),],
          begin:Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.3,0.95]
        ),
        ),
        ),
          ),
          
        ]
      )
    );
  }
  

}