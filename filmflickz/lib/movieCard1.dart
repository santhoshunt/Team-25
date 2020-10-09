import "package:flutter/material.dart";

class MovieCard1 extends StatelessWidget {
  final url;
  final name;
  final duration;
  final rating;
  final desc;
  MovieCard1({
    this.url,
    this.name,
    this.duration,
    this.rating,
    this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 130,
      shadowColor: Colors.lightGreen[500],
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Image.network(
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
              height: 100,
              width: 150,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            flex: 1,
            child: Text(
              name[0].toUpperCase() + name.substring(1),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.lightGreen,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/details',
                  arguments: {
                    'url': url,
                    'name': name,
                    'rating': rating,
                    'duration': duration,
                    'desc': desc,
                  },
                );
              },
              child: Text(
                "Details",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}