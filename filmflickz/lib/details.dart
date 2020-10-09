import "package:flutter/material.dart";

class Details extends StatelessWidget {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    print(data);
    return Scaffold(
      appBar: AppBar(
        title: Text('Detailed view'),
      ),
      body: SingleChildScrollView(
        child: Card(
          elevation: 60,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 10),
                Image(
                  fit: BoxFit.contain,
                  image: NetworkImage(data['url']),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 5, 10, 5),
                  child: Text(
                    data['name'],
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                        borderOnForeground: true,
                        margin: EdgeInsets.all(20),
                        elevation: 30,
                        child: Column(
                          children: [
                            Icon(
                              Icons.star,
                              size: 30,
                              color: Colors.amber,
                            ),
                            Text(
                              "Rating",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "${data['rating']}/10",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )),
                    Card(
                      borderOnForeground: true,
                      margin: EdgeInsets.all(20),
                      elevation: 30,
                      child: Column(
                        children: [
                          Icon(
                            Icons.access_alarm,
                            size: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(3, 1, 3, 1),
                            child: Text(
                              "Duration",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            "${data['duration']}",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height :10),
                Text(
                  data['desc'],
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(height :10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}