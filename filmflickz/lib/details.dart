import "package:flutter/material.dart";

class Details extends StatelessWidget {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    print(data['name']);
    return Scaffold(
      appBar: AppBar(
        title: Text('Detailed view'),
      ),
      body: Card(
        elevation: 60,
        child: Container(
          child: Column(children: [
            Image(
              fit: BoxFit.contain,
              image: NetworkImage(data['url']),
            ),
            Text(data['name']),
            Row(
              children: [
                Card(
                    elevation: 30,
                    child: Column(
                      children: [
                        Icon(Icons.star),
                        Text("${data['rating']}/10"),
                      ],
                    )),
                Card(
                    elevation: 30,
                    child: Column(
                      children: [
                        Icon(Icons.access_alarm),
                        Text("${data['duration']}"),
                      ],
                    )),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
