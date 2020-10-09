import 'package:flutter/material.dart';
import 'movieCard.dart';
import 'data.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var search;
  final searchCon = TextEditingController();
  Icon cusIcon = Icon(Icons.search);
  Widget bar = Text("MOVIES");
  List add(l1, l2, l3, l4, l5, l6) {
    List temp = [];
    for (int i = 0; i < l1.length; i++) {
      if (l1[i].toLowerCase().contains(search)) {
        temp.add([l1[i], l2[i], l3[i], l4[i], l5[i], l6[i]]);
      }
    }
    return temp;
  }

  void searchFun() {
    List total = [];
    total += add(Data.name1, Data.url1, Data.desc1, Data.duration1,
        Data.rating1, Data.trailer1);
    total += add(Data.name2, Data.url2, Data.desc2, Data.duration2,
        Data.rating2, Data.trailer2);
    total += add(Data.name3, Data.url3, Data.desc3, Data.duration3,
        Data.rating3, Data.trailer3);
    if (total != []) {
      List result = [[], [], [], [], [], []];
      for (int i = 0; i < total.length; i++) {
        result[0].add(total[i][0]);
        result[1].add(total[i][1]);
        result[2].add(total[i][2]);
        result[3].add(total[i][3]);
        result[4].add(total[i][4]);
        result[5].add(total[i][5]);
      }
      Navigator.pushNamed(
        context,
        '/viewall',
        arguments: {
          'url': result[1],
          'name': result[0],
          'rating': result[4],
          'duration': result[3],
          'desc': result[2],
          'title': "Results for \"$search\"",
          'trailer': result[5],
        },
      );
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: bar,
        elevation: 30,
        actions: [
          IconButton(
            onPressed: () {
              setState(
                () {
                  if (this.cusIcon.icon == Icons.search) {
                    this.cusIcon = Icon(Icons.arrow_forward_outlined);
                    this.bar = TextField(
                      controller: searchCon,
                      decoration: InputDecoration(),
                    );
                  } else {
                    search = searchCon.text;
                    searchFun();
                    this.cusIcon = Icon(Icons.search);
                    this.bar = Text("Movies");
                  }
                },
              );
            },
            icon: cusIcon,
          )
        ],
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
                      "BEST OF ALL TIME",
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
                        print(Data.trailer1);
                        Navigator.pushNamed(context, '/viewall', arguments: {
                          'url': Data.url1,
                          'name': Data.name1,
                          'rating': Data.rating1,
                          'duration': Data.duration1,
                          'desc': Data.desc1,
                          'trailer': Data.trailer1,
                          'title': "BEST OF ALL TIME",
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
                      url: Data.url1[index],
                      name: Data.name1[index],
                      duration: Data.duration1[index],
                      rating: Data.rating1[index],
                      desc: Data.desc1[index],
                      trailer: Data.trailer1[index],
                    );
                  },
                ),
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
                      "BEST OF 2019",
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
                            'trailer': Data.trailer2,
                            'title': "BEST OF 2019",
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
                        url: Data.url2[index],
                        name: Data.name2[index],
                        duration: Data.duration2[index],
                        rating: Data.rating2[index],
                        desc: Data.desc2[index],
                        trailer: Data.trailer2[index],
                      );
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
                      "BEST OF 2020",
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
                            'trailer': Data.trailer3,
                            'title': "BEST OF 2020",
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
                        url: Data.url3[index],
                        name: Data.name3[index],
                        duration: Data.duration3[index],
                        rating: Data.rating3[index],
                        desc: Data.desc3[index],
                        trailer: Data.trailer3[index],
                      );
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
