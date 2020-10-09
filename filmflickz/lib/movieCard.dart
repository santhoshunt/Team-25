import "package:flutter/material.dart";
import 'details.dart';

class MovieCard extends StatelessWidget {
  var url;
  var name;
  MovieCard({this.url, this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[700],
      elevation: 40,
      shadowColor: Colors.grey[400],
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
                padding: const EdgeInsets.all(3.0),
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.blue,
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/details',arguments: {
                    'url':url,
                    'name':name,
                    'rating':10,
                    'duration':120,
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