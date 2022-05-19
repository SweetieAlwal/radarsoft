import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:radarsoft/widgets/expandable.dart';
import 'package:radarsoft/widgets/live_card.dart';
import 'package:share/share.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({Key key}) : super(key: key);

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Event Details"),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.notifications),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                icon: Icon(Icons.qr_code),
                onPressed: () async {
                  String barcodeScantop =
                      await FlutterBarcodeScanner.scanBarcode(
                          "#ff6666", "cancel", false, ScanMode.DEFAULT);
                },
              ),
            )
          ],
        ),
        body: ListView(
          children: [
            LiveCard(
              onEvent: true,
            ),
            _invite(),
            expandabletext(),
            mainbody(),
            checkin()
          ],
        ));
  }

  Widget _invite() {
    return Container(
        height: 50,
        margin: const EdgeInsets.only(
          left: 10,
          right: 20,
        ),
        padding: const EdgeInsets.only(top: 0.0),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Lorem ipsum',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            '04-05-06 | April | 2022',
                            style: TextStyle(color: Colors.black45),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.green,
                          ),
                          child: GestureDetector(
                            child: Center(
                                child: Icon(Icons.share, color: Colors.white)),
                            onTap: () {
                              Share.share('This is radar soft!',
                                  subject: 'Welcome to Radar Soft');
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
        ));
  }

  Widget expandabletext() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: ExpandableText(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
          // style: TextStyle(
          //   fontSize: 20,
          // ),
        ),
      ),
    );
  }

  Widget mainbody() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 58.0, right: 28),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green, width: 1.0),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    navigate(Icons.access_alarms_outlined, 'Agenda'),
                    Text(
                      '|',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.green),
                    ),
                    navigate(Icons.people, 'Attendees'),
                    Text(
                      '|',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.green),
                    ),
                    navigate(Icons.bar_chart, 'Sponsors'),
                  ],
                ),
                Row(
                  children: [
                    navigate(Icons.person, 'Speakers'),
                    Text(
                      '|',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.green),
                    ),
                    navigate(Icons.add_shopping_cart, 'Brands'),
                    Text(
                      '|',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.green),
                    ),
                    navigate(Icons.video_settings, 'Videos'),
                  ],
                ),
                Row(
                  children: [
                    navigate(Icons.add_location_alt, 'Location'),
                    Text(
                      '|',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.green),
                    ),
                    navigate(Icons.picture_as_pdf_rounded, 'Brochures'),
                    Text(
                      '|',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.green),
                    ),
                    navigate(Icons.arrow_drop_down_circle_outlined, 'More'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget navigate(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          IconButton(
            icon: Icon(
              icon,
              color: Colors.grey,
              size: 40,
            ),
            onPressed: () async {},
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }

  Widget checkin() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        child: RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          onPressed: () {},
          color: Colors.green,
          child: Text(
            'Check in',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
