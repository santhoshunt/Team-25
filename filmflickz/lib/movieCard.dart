import "package:flutter/material.dart";

class MovieCard extends StatelessWidget {
  final url;
  final name;
  final duration;
  final rating;
  final desc;
  final trailer;

  MovieCard(
      {this.url,
      this.name,
      this.duration,
      this.rating,
      this.desc,
      this.trailer});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 130,
      shadowColor: Colors.lightGreen[500],
      child: Column(
        children: [
          Image.network(
            url,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.green,
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes
                      : null,
                ),
              );
            },
            height: 150,
            width: 230,
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
                    'rating': rating,
                    'duration': duration,
                    'desc': desc,
                    'trailer': trailer,
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
