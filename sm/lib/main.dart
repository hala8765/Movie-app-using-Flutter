import 'package:flutter/material.dart';
import 'package:sm/moviemodel.dart';
import 'package:sm/movielist.dart';
import 'package:sm/moviescreen.dart';
void main() {
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
   List<Movie> movies=Movie.movie;
    return MaterialApp(
      home:Scaffold(appBar:AppBar(
      toolbarHeight: 75,
      backgroundColor: Color.fromARGB(255, 244, 146, 8),
      title: Center(child: Text("Explore",style: TextStyle(color: Color.fromARGB(255, 10, 10, 9),fontSize: 40,fontFamily: "Climate Crisis"),)),
      
      ),
        body:SingleChildScrollView(
            child: Column(children: [
              Text("Featured Movies",style: TextStyle(color: Color.fromARGB(255, 55, 55, 54),fontSize: 30)),
              const SizedBox(height:20),
              for(final movie in movies)
              InkWell(
              onTap: () {
              Navigator.push(context,
              MaterialPageRoute(builder:(context) => MovieScreen(movie: movie)
              ),
              );
             },
        
            child:MovieListItem(imageUrl:movie.imagePath, name: movie.name, information:'${movie.year}|${movie.duration}|${movie.category}'
            ),
             
             
         ) ],),
          )
        )
       
      
      
    );
}
}

 