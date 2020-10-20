import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

class MyLandingPage extends StatefulWidget {
  @override
  _MyLandingPageState createState() => new _MyLandingPageState();
}

class _MyLandingPageState extends State<MyLandingPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.green,
        body: ListView(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 15.0, left: 10.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.of(context).pushNamed('/login');
                        },
                      ),
                      Container(
                        width: 125.0,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              // IconButton(
                              //   icon: Icon(Icons.filter_list),
                              //   color: Colors.white,
                              //   onPressed: () {},
                              // )
                            ]),
                      )
                    ])),
            Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    Container(
                        height: 25,
                        decoration: BoxDecoration(
                            color: Colors.green[900],
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8))),
                        child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  // Image.asset(
                                  //   'assets/grab-logo-white.png',
                                  //   scale: 3,
                                  // ),
                                  Text('Balance: PHP 2,100',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold))
                                ]))),
                    Container(
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.green[800],
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8))),
                      child: Container(
                          padding: EdgeInsets.only(top: 7),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Icon(Icons.credit_card, color: Colors.white),
                                  SizedBox(height: 10),
                                  Text('Pay',
                                      style: TextStyle(color: Colors.white))
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Icon(Icons.payments, color: Colors.white),
                                  SizedBox(height: 10),
                                  Text('Request',
                                      style: TextStyle(color: Colors.white))
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Icon(Icons.add_circle, color: Colors.white),
                                  SizedBox(height: 10),
                                  Text('Top Up',
                                      style: TextStyle(color: Colors.white))
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Icon(Icons.card_giftcard,
                                      color: Colors.white),
                                  SizedBox(height: 10),
                                  Text('Rewards',
                                      style: TextStyle(color: Colors.white))
                                ],
                              )
                            ],
                          )),
                    ),
                  ],
                )),
            Padding(
                padding: EdgeInsets.only(left: 40.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Recent',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0),
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      'Activity',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0),
                    ),
                  ],
                )),
            SizedBox(height: 20.0),
            Container(
                height: MediaQuery.of(context).size.height - 271.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(75.0)),
                ),
                child: ListView(
                  primary: false,
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 0.0),
                      child: Container(
                          height: MediaQuery.of(context).size.height - 380.0,
                          child: ListView(children: [
                            _buildRecentActivityItem('Top Up', 'PHP 1500'),
                            _buildRecentActivityItem('Ride', 'PHP 500'),
                            _buildRecentActivityItem('Ride', 'PHP 300'),
                            _buildRecentActivityItem('Top Up', 'PHP 1000')
                          ])),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        // Container(
                        //   height: 65.0,
                        //   width: 60.0,
                        //   decoration: BoxDecoration(
                        //       border: Border.all(
                        //           color: Colors.grey,
                        //           style: BorderStyle.solid,
                        //           width: 1.0),
                        //       borderRadius: BorderRadius.circular(5.0)),
                        //   child: Center(
                        //       child: Icon(Icons.search, color: Colors.black)),
                        // ),
                        Container(
                            height: 65.0,
                            width: 120.0,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey,
                                    style: BorderStyle.solid,
                                    width: 1.0),
                                borderRadius: BorderRadius.circular(5.0),
                                color: Color(0xFF1C1428)),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('/activity');
                              },
                              child: Center(
                                child: Text('See More',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15.0)),
                              ),
                            ))
                      ],
                    )
                  ],
                ))
          ],
        ));
  }

  Widget _buildRecentActivityItem(String actName, String price) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: InkWell(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  child: Row(children: [
                SizedBox(width: 10.0),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    actName,
                    style:
                        TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    price,
                    style: TextStyle(fontSize: 15.0, color: Colors.grey),
                  ),
                ])
              ])),
              IconButton(
                icon: Icon(Icons.arrow_right),
                color: Colors.black,
                onPressed: () {},
              )
            ],
          )),
    );
  }
}
