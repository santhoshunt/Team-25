import "package:flutter/material.dart";

class MovieCard extends StatelessWidget {
  final url;
  final name;
  final duration;
  final rating;
  final desc;

  MovieCard({this.url, this.name, this.duration, this.rating, this.desc});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 130,
      shadowColor: Colors.lightGreen[500],
      child: Column(
        children: [
          Image(
            height: 150,
            width: 230,
            image: NetworkImage(url),
            fit: BoxFit.contain,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(3.0),
                child: Text(
                  name[0].toUpperCase() + name.substring(1),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    shadows: [
                      Shadow(
                        offset: Offset(2, 2),
                        blurRadius: 2,
                        color: Colors.lightGreen[100],
                      ),
                    ],
                    color: Colors.lightGreen,
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/details', arguments: {
                    'url': url,
                    'name': name,
                    'rating': 10,
                    'duration': 120,
                    'desc': 'This is the movie description',
                  });
                },
                child: Text(
                  "Details",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
