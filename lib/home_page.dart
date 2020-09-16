import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class HomePage extends StatelessWidget {
  barcircle({String abc, String xyz}) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.white,
          child: Image(
            image: AssetImage('images/$abc.png'),
            width: 40,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          '$xyz',
            style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  buttons({String text, int colour}) {
    return RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      color: Color(colour),
      child: Text(
        '$text',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      textColor: Colors.white,
      onPressed: () {},
    );
  }

  rate({double star}) {
    return SmoothStarRating(
        allowHalfRating: true,
        starCount: 5,
        rating: star,
        size: 20.0,
        isReadOnly: false,
        color: Colors.yellow,
        borderColor: Colors.grey,
        spacing: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 3.5,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.deepPurpleAccent,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 280, top: 5),
                        child: Image(
                          image: AssetImage('images/foodlogo.png'),
                          height: 60,
                          width: 100,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Container(
                                child: barcircle(abc: 'drink', xyz: 'DRINK'),
                              ),
                            ),
                            SizedBox(
                              width: 28,
                            ),
                            barcircle(abc: 'pizza', xyz: 'PIZZA'),
                            SizedBox(
                              width: 28,
                            ),
                            barcircle(abc: 'burger', xyz: 'BURGER'),
                            SizedBox(
                              width: 28,
                            ),
                            barcircle(abc: 'sandwich', xyz: 'SANDWICH'),
                            SizedBox(
                              width: 28,
                            ),
                            barcircle(abc: 'icecream', xyz: 'ICE-CREAM')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          child: buttons(text: 'CAKE', colour: 0xFFF484B1),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      buttons(text: 'PIE', colour: 0xFFAB47BC),
                      SizedBox(
                        width: 10,
                      ),
                      buttons(text: 'ICE CREAM', colour: 0xFF7986CB),
                      SizedBox(
                        width: 10,
                      ),
                      buttons(text: 'CANNOLI', colour: 0xFF40C4FF)
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 190),
                  child: Text(
                    'Most Popular',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: MediaQuery.of(context).size.height / 2.3,
                  child: Card(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 10.0, top: 5),
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundImage:
                                      AssetImage('images/apoorv.jpg'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Olea Powers',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    margin: const EdgeInsets.only(
                                         top: 5),
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.red,

                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '160    ',
                                    style:
                                    TextStyle(
                                        fontWeight: FontWeight.bold,

                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Image(
                              image: AssetImage('images/yummy.jpg'),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              right: 220,
                            ),
                            child: Text(
                              'Pizza Margherita',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.0
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 1,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              right: 250,
                            ),
                            child: rate(star: 4),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: MediaQuery.of(context).size.height / 2.3,
                  child: Card(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 10.0, top: 5),
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundImage:
                                      AssetImage('images/apoorv.jpg'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Olea Powers',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    margin: const EdgeInsets.only(
                                    top: 5),
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '160    ',
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Image(
                              image: AssetImage('images/yummy.jpg'),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              right: 220,
                            ),
                            child: Text(
                              'Pizza Margherita',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.0
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 1,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              right: 250,
                            ),
                            child: rate(star: 4),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}