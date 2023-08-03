class Movie{
  final String name;
  final String imagePath;
  final String category;
  final int year;
  final Duration duration;

  const Movie(
    {
    required this.name,
    required this.imagePath,
    required this.category,
    required this.duration,
    required this.year
});

static const List<Movie> movie=[
  Movie(
    name:'Stranger Things',
    imagePath:'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/e2fd9882892035.5d2c3c960586e.jpg' ,
    category:'Thriller',
    duration: Duration(hours: 1),
    year:2020,
  ),
  Movie(
     name:'Wednesday',
    imagePath:'https://mir-s3-cdn-cf.behance.net/projects/404/683d21157788729.Y3JvcCwxNjM4LDEyODEsMCwzODU.png' ,
    category:'Story',
    duration: Duration(hours: 2,minutes: 30),
    year:2010,

  ),
   Movie(
     name:'Jurrassic World',
    imagePath:'https://images.hindustantimes.com/rf/image_size_640x362/HT/p1/2014/10/16/Incoming/Pictures/1276058_Wallpaper2.jpg' ,
    category:'Story',
    duration: Duration(hours: 3,minutes: 30),
    year:2010,

  )
];

}