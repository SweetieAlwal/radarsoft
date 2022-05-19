import 'dart:convert';
import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:radarsoft/model/gathr.dart';
import 'package:radarsoft/widgets/carousel_cards.dart';
import 'package:radarsoft/widgets/live_card.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String imgpath = " ";
  int _currentIndex = 0;
  List cardList = [];
  List upcoming_events = [];
  String bottomimage = "";

  @override
  void initState() {
    super.initState();
    getApi();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
          key: _scaffoldKey,
          endDrawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Text('Drawer Header'),
                ),
                ListTile(
                  title: const Text('Item 1'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Item 2'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          body: ListView(
            shrinkWrap: true,
            children: [
              Container(
                height: MediaQuery.of(context).size.width / 1.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Home',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 25,
                        ),
                        IconButton(
                          onPressed: () =>
                              _scaffoldKey.currentState.openEndDrawer(),
                          icon: Icon(
                            Icons.drag_handle_outlined,
                            color: Colors.white,
                            size: 25,
                          ),
                        )
                      ],
                    ),
                    LiveCard(
                      onEvent: false,
                      imagepath: bottomimage,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                      child: Text(
                        "Upcoming Events",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 120.0,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 20),
// autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  pauseAutoPlayOnTouch: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
                items: cardList.map((card) {
                  return Builder(builder: (BuildContext context) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.30,
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: card,
                      ),
                    );
                  });
                }).toList(),
              ),
              Card(
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2.1,
                      height: MediaQuery.of(context).size.height / 5,
                      color: Colors.black45,
                      child: Column(
                        children: [
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            onPressed: () {},
                            color: Colors.green,
                            child: Text(
                              'Speaker and Guest Lounge',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                            border: Border(
                          right: BorderSide(width: 1.0, color: Colors.black87),
                        )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Women in Data Science',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 21),
                                    ),
                                    Text(
                                      'Attended on',
                                      // style: TextStyle(color: Colors.black12),
                                    ),
                                    Text(
                                      '04-05-06 | April | 2022',
                                      style: TextStyle(color: Colors.black45),
                                    ),
                                    RaisedButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      onPressed: () {},
                                      color: Colors.deepOrange,
                                      child: Text(
                                        'View Take-Aways',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
              Card(
                color: Colors.grey,
                child: Container(
                  height: 80,
                  width: 80,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(bottomimage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit'),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }

  // Widget customAppbar() {
  //   return SliverAppBar(
  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  //     backgroundColor: Colors.green,
  //     expandedHeight: AppBar().preferredSize.height,
  //     title: Text("Home"),
  //     floating: false,
  //     pinned: true,
  //   );
  //
  //   //   Container(
  //   //   child: Row(
  //   //     children: [Icon(Icons.notifications)],
  //   //   ),
  //   // );
  // }

  Future<Gathr> getApi() async {
    var body = jsonEncode({"userId": 1});
    var url = "https://organizergathrr.radarsofttech.in/api/getallevent";
    var response = await http.post(url, body: body, headers: {
      "Accept": "application/json",
      "content-type": "application/json",
    });
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      print("data $data");
      var modeldata = Gathr.fromJson(data);
      upcoming_events = modeldata.upcomigevents;
      for (var i = 0; i < upcoming_events.length; i++) {
        imgpath = modeldata.upcomigevents[i].eventBannerImg1;
        bottomimage = modeldata.upcomigevents[i].eventBannerImg2;
        print("IMAGEPATH $imgpath");
        print("BOTTOM IMAGEPATH $bottomimage");
        cardList = [
          CarouselCards(
            image: imgpath,
          ),
          CarouselCards(
            image: imgpath,
          )
        ];
      }
    }
  }

  Future<bool> _onBackPressed() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Do you really want to exit the Radar?"),
              actions: <Widget>[
                FlatButton(
                  child: Text("No"),
                  onPressed: () => Navigator.pop(context),
                ),
                FlatButton(
                    child: Text("Yes"),
                    onPressed: () {
                      if (Platform.isAndroid) {
                        SystemNavigator.pop();
                        // Android-specific code
                      } else if (Platform.isIOS) {
                        // iOS-specific code
                        exit(0);
                      }
                    })
              ],
            ));
  }
}
