import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Menuutama extends StatefulWidget {
  @override
  _MenuutamaState createState() => _MenuutamaState();
}

class _MenuutamaState extends State<Menuutama> {
  var linkCarousel = [
    'assets/t1.jpg',
    'assets/t2.jpg',
    'assets/t3.jpg',
  ];

  var animedeskripsi = [
    'EPISODE 1',
    'EPISODE 2',
    'EPISODE 3',
    'EPISODE 4',
    'EPISODE 5',
  ];

  var indonesiamovie = [
    'assets/i1.jpg',
    'assets/i2.jpg',
    'assets/i3.jpg',
    'assets/i4.jpg',
    'assets/i5.jpg',
    'assets/i6.jpg',
  ];

  var europamovie = [
    'assets/e1.jpg',
    'assets/e2.jpg',
    'assets/e3.jpg',
    'assets/e4.jpg',
    'assets/e5.jpg',
    'assets/e6.jpg',
  ];

  var animemovie = [
    'assets/a1.jpg',
    'assets/a2.jpg',
    'assets/a3.jpg',
    'assets/a4.jpg',
    'assets/a5.jpg',
  ];

  var indmovie = [
    'assets/i1.jpg',
    'assets/i2.jpg',
    'assets/i3.jpg',
    'assets/i4.jpg',
    'assets/i5.jpg',
    'assets/i6.jpg',
  ];

  var jujutsu = [
    'assets/j1.png',
    'assets/j2.png',
    'assets/j3.png',
    'assets/j4.png',
    'assets/j5.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          height: 50,
          child: Image(
            image: AssetImage('assets/kananasli.png'),
          ),
        ),
      ),
      drawer: Drawer(
          child: Container(
        color: Colors.black,
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                title: Text(
                  'Notifikasi',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.movie,
                  color: Colors.white,
                ),
                title: Text(
                  'Film Eroupa',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.movie,
                  color: Colors.white,
                ),
                title: Text(
                  'Film Indonesia',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.movie,
                  color: Colors.white,
                ),
                title: Text(
                  'Anime',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      )),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider.builder(
                itemCount: linkCarousel.length,
                itemBuilder: (BuildContext context, int itemIndex) {
                  return Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.red,
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(linkCarousel[itemIndex]),
                    ),
                  );
                },
                options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: true,
                  viewportFraction: 0.9,
                  aspectRatio: 2.0,
                  initialPage: 2,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'EUROPA MOVIE',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 150,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: europamovie.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(europamovie[index]),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 30),
              Text(
                'INDONESIA MOVIE',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 150,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: indmovie.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(indmovie[index]),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 30),
              Text(
                'ANIME',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 150,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: animemovie.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 150,
                      width: 100,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(animemovie[index]),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 30),
              Text(
                'JUJUTSU ANIME',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 200,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: jujutsu.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 150,
                          width: 200,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(jujutsu[index]),
                            ),
                          ),
                        ),
                        Text(
                          '${animedeskripsi[index]}',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
