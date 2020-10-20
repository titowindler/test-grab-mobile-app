import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

class MyActivityPage extends StatefulWidget {
  @override
  _MyActivityPageState createState() => new _MyActivityPageState();
}

class _MyActivityPageState extends State<MyActivityPage> {
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
                          Navigator.of(context).pushNamed('/landing');
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
                padding: EdgeInsets.only(left: 40.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Credits',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0),
                    ),
                    SizedBox(width: 10.0),
                    // Text(
                    //   'Activity',
                    //   style: TextStyle(
                    //       color: Colors.white,
                    //       fontWeight: FontWeight.bold,
                    //       fontSize: 25.0),
                    // ),
                  ],
                )),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Text(
                'Expiry Date. 26 Oct 2020',
                style: TextStyle(color: Colors.white, fontSize: 17.0),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
                height: MediaQuery.of(context).size.height - 185.0,
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
                          height: MediaQuery.of(context).size.height - 300.0,
                          child: ListView(children: [
                            _buildRecentActivityItem('Top-up Using'),
                            _buildRecentActivityItem('In Store'),
                            _buildRecentActivityItem('Cards and Wallets'),
                            _buildRecentActivityItem('Online Banking')
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
                          width: 250.0,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                  width: 1.0),
                              borderRadius: BorderRadius.circular(5.0),
                              color: Color(0xFF1C1428)),
                          child: Center(
                            child: Text('Learn More About Grab Credits',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15.0)),
                          ),
                        )
                      ],
                    )
                  ],
                ))
          ],
        ));
  }

  Widget _buildRecentActivityItem(String actName) {
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
