import 'package:flutter/material.dart';
import 'movieCard1.dart';

class ViewAll extends StatefulWidget {
  @override
  _ViewAllState createState() => _ViewAllState();
}

class _ViewAllState extends State<ViewAll> {
  Map data;
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.green,
        title: Text(data['title']),
      ),
          body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(data['url'].length, (index) {
          return MovieCard1(
            url: data['url'][index],
            name: data['name'][index],
            desc: "data['desc']",
            rating: "data['rating']",
            duration: "data['duration']",
          );
        }),
      ),
    );
  }
}