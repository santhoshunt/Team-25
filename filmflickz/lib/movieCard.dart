import "package:flutter/material.dart";


class MovieCard extends StatelessWidget {
  var url;
  var name;
  MovieCard({this.url, this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 30,
      child: Column(
        children: [
          Image(
            height: 150,
            image: NetworkImage(url),
          ),
          Row(
            children: [
              Text(name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.blue,
              ),),
              FlatButton(
                onPressed: () {},
                child: Text("Details",
                style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}