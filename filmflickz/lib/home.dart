import 'package:flutter/material.dart';
import 'movieCard.dart';
import 'data.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Movies"),
        elevation: 30,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best of all Time",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    ),
                    RaisedButton(
                      color: Colors.green[200],
                      onPressed: () {
                        Navigator.pushNamed(context, '/viewall', arguments: {
                          'url': Data.url1,
                          'name': Data.name1,
                          'rating': Data.rating1,
                          'duration': Data.duration1,
                          'desc': Data.desc1,
                          'title': "Best of all time",
                        });
                      },
                      child: Text(
                        "View all",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 220,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Data.url1.length,
                    itemBuilder: (context, index) {
                      return MovieCard(
                          url: Data.url1[index], name: Data.name1[index]);
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best of 2019",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    ),
                    RaisedButton(
                      color: Colors.green[200],
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/viewall',
                          arguments: {
                            'url': Data.url2,
                            'name': Data.name2,
                            'rating': Data.rating2,
                            'duration': Data.duration2,
                            'desc': Data.desc2,
                            'title': "Best of 2019",
                          },
                        );
                      },
                      child: Text(
                        "View all",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 220,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Data.url2.length,
                    itemBuilder: (context, index) {
                      return MovieCard(
                          url: Data.url2[index], name: Data.name2[index]);
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best of 2020",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    ),
                    RaisedButton(
                      color: Colors.green[200],
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/viewall',
                          arguments: {
                            'url': Data.url3,
                            'name': Data.name3,
                            'rating': Data.rating3,
                            'duration': Data.duration3,
                            'desc': Data.desc3,
                            'title': "Best of 2020",
                          },
                        );
                      },
                      child: Text(
                        "View all",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 220,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Data.url3.length,
                    itemBuilder: (context, index) {
                      return MovieCard(
                          url: Data.url3[index], name: Data.name3[index]);
                    }),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
