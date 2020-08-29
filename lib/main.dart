import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CourseApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Card(
                  elevation: 0,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(7),
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerRight,
                          child: Stack(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 5, left: 10),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        RichText(
                                            text: TextSpan(children: [
                                          TextSpan(
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  letterSpacing: 1.5,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w100),
                                              text: 'Choose your'),
                                        ])),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 190.0),
                                              child: CircleAvatar(
                                                radius: 20,
                                                backgroundImage: AssetImage(
                                                    'image/icon5.png'),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 175.0),
                                      child: RichText(
                                          textAlign: TextAlign.start,
                                          text: TextSpan(children: [
                                            TextSpan(
                                                style: TextStyle(
                                                    fontSize: 30,
                                                    letterSpacing: 0.5,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                text: 'Design Course'),
                                          ])),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 70),
                  child: TextField(
                    onTap: () {},
                    decoration: InputDecoration(
                        fillColor: Colors.blueGrey,
                        hintText: "Search for Course",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Category',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    )),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.lightBlue),
                            borderRadius: BorderRadius.circular(17)),
                        onPressed: () {},
                        elevation: 20,
                        color: Colors.lightBlue,
                        child: Text(
                          'Ui/Ux',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.lightBlue),
                            borderRadius: BorderRadius.circular(17)),
                        onPressed: () {},
                        elevation: 20,
                        color: Colors.white,
                        child: Text(
                          'Coding',
                          style: TextStyle(
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => DetailPage()));
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                          side: BorderSide(color: Colors.lightBlue),
                        ),
                        elevation: 20,
                        color: Colors.white,
                        child: Text(
                          'Basic UI',
                          style: TextStyle(
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              fit: StackFit.passthrough,
                              children: <Widget>[
                                Container(
                                  height: 110,
                                  width: 200,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey[50],
                                      borderRadius: BorderRadius.circular(10)),
                                  height: 150.0,
                                  width: 190.0,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 90, top: 30),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          'User Interface Design',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 1,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: <Widget>[
                                            Text('24 lesson'),
                                            Expanded(
                                              flex: 1,
                                              child: IconButton(
                                                icon: Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.blue,
                                                ),
                                                onPressed: () {},
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              "\$25",
                                              style: TextStyle(
                                                  color: Colors.blueAccent),
                                            ),
                                            Container(
                                              width: 40,
                                            ),
                                            Container(
                                              height: 30,
                                              child: Icon(Icons.add),
                                              decoration: BoxDecoration(
                                                  color: Colors.lightBlue,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 40,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('image/icon1.png'),
                                          fit: BoxFit.fitWidth,
                                        ),
                                        color: Colors.blueGrey[50],
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    padding: EdgeInsets.all(4),
                                    height: 75.0,
                                    width: 90.0,
                                  ),
                                )
                              ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              fit: StackFit.passthrough,
                              children: <Widget>[
                                Container(
                                  height: 110,
                                  width: 200,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blueGrey[50],
                                      borderRadius: BorderRadius.circular(10)),
                                  height: 150.0,
                                  width: 190.0,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 90, top: 30),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          'User Interface Design',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 1,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: <Widget>[
                                            Text('24 lesson'),
                                            Expanded(
                                              flex: 1,
                                              child: IconButton(
                                                icon: Icon(
                                                  Icons.star,
                                                  size: 20,
                                                  color: Colors.blue,
                                                ),
                                                onPressed: () {},
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              "\$25",
                                              style: TextStyle(
                                                  color: Colors.blueAccent),
                                            ),
                                            Container(
                                              width: 40,
                                            ),
                                            Container(
                                              height: 30,
                                              child: Icon(Icons.add),
                                              decoration: BoxDecoration(
                                                  color: Colors.lightBlue,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 40,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('image/icon2.png'),
                                          fit: BoxFit.fitWidth,
                                        ),
                                        color: Colors.blueGrey[200],
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    padding: EdgeInsets.all(4),
                                    height: 75.0,
                                    width: 90.0,
                                  ),
                                )
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Popular Course',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    )),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              height: 200,
                            ),
                            Container(
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 40, top: 10),
                                    child: Text(
                                      'App Design \nCourse',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 28.0, top: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Text('24 lesson'),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Expanded(
                                            child: Row(
                                          children: <Widget>[
                                            Text('4.3'),
                                            Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Colors.lightBlue,
                                            )
                                          ],
                                        ))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey[50],
                                  borderRadius: BorderRadius.circular(17)),
                              width: 200,
                              height: 170,
                            ),
                            Positioned(
                              bottom: 0,
                              left: 25,
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('image/icon3.png'),
                                        fit: BoxFit.fill),
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.circular(17)),
                                width: 150,
                                height: 100,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              height: 200,
                            ),
                            Container(
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 40, top: 10),
                                    child: Text(
                                      'Web Design \nCourse',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 28.0, top: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Text('24 lesson'),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Expanded(
                                            child: Row(
                                          children: <Widget>[
                                            Text('4.3'),
                                            Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Colors.lightBlue,
                                            )
                                          ],
                                        ))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey[50],
                                  borderRadius: BorderRadius.circular(17)),
                              width: 200,
                              height: 170,
                            ),
                            Positioned(
                              bottom: 0,
                              left: 25,
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('image/icon4.png'),
                                        fit: BoxFit.fill),
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.circular(17)),
                                width: 150,
                                height: 100,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              height: 200,
                            ),
                            Container(
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 40, top: 10),
                                    child: Text(
                                      'App Design \nCourse',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 28.0, top: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Text('24 lesson'),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Expanded(
                                            child: Row(
                                          children: <Widget>[
                                            Text('4.3'),
                                            Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Colors.lightBlue,
                                            )
                                          ],
                                        ))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey[50],
                                  borderRadius: BorderRadius.circular(17)),
                              width: 200,
                              height: 170,
                            ),
                            Positioned(
                              bottom: 0,
                              left: 25,
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('image/icon3.png'),
                                        fit: BoxFit.fill),
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.circular(17)),
                                width: 150,
                                height: 100,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              height: 200,
                            ),
                            Container(
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 40, top: 10),
                                    child: Text(
                                      'Web Design \nCourse',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 28.0, top: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Text('24 lesson'),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Expanded(
                                            child: Row(
                                          children: <Widget>[
                                            Text('4.3'),
                                            Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Colors.lightBlue,
                                            )
                                          ],
                                        ))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey[50],
                                  borderRadius: BorderRadius.circular(17)),
                              width: 200,
                              height: 170,
                            ),
                            Positioned(
                              bottom: 0,
                              left: 25,
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('image/icon4.png'),
                                        fit: BoxFit.fill),
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.circular(17)),
                                width: 150,
                                height: 100,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('image/icon.png'),
                        fit: BoxFit.cover)),
              ),
              flex: 1,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: 1000,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topRight,
                        child: CircleAvatar(
                          backgroundColor: Colors.lightBlue,
                          child: Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            'Web Design \nCourse',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Text(
                              '\$25,99',
                              style: TextStyle(
                                  color: Colors.lightBlue,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Expanded(
                              child: Row(
                            children: <Widget>[
                              Text(
                                '4.3',
                                style: TextStyle(fontSize: 30),
                              ),
                              Icon(
                                Icons.star,
                                size: 37,
                                color: Colors.lightBlue,
                              )
                            ],
                          ))
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 80,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white54),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      '24',
                                      style: TextStyle(
                                          color: Colors.lightBlue,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text('Classes'),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Container(
                              width: 80,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      '2hour',
                                      style: TextStyle(
                                          color: Colors.lightBlue,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text('Time'),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Container(
                              width: 80,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      '24',
                                      style: TextStyle(
                                          color: Colors.lightBlue,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text('Seat'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30),
                        child: Text(
                            'Lorem Ipsum is simply dummy text of priting and typesetting industry. Lorem Ipsum is a simply, Lorem Ipsum and typestting Industry'),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10)),
                              onPressed: () {},
                              child: Icon(Icons.close),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.only(right: 30.0),
                            child: RaisedButton(
                              color: Colors.lightBlue[700],
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.lightBlue),
                                  borderRadius: BorderRadius.circular(10)),
                              onPressed: () {},
                              child: Text(
                                'Join Course',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
