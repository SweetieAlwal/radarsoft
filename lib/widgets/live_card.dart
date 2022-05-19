import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radarsoft/screens/event_details.dart';

class LiveCard extends StatelessWidget {
  final bool onEvent;
  final String imagepath;
  const LiveCard({Key key, this.onEvent, this.imagepath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  border: Border(
                right: BorderSide(width: 1.0, color: Colors.black87),
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  !onEvent
                      ? Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Data Driven Thinking',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21),
                                ),
                                Text(
                                  '04-05-06 | April | 2022',
                                  style: TextStyle(color: Colors.black45),
                                ),
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur',
                                  // style: TextStyle(color: Colors.black12),
                                ),
                                RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                EventDetails()));
                                  },
                                  color: Colors.green,
                                  child: Text(
                                    'Join Now',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Container(
                          width: MediaQuery.of(context).size.width / 2.1,
                          height: MediaQuery.of(context).size.height / 5,
                          color: Colors.black45,
                          child: Column(
                            children: [
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur',
                                // style: TextStyle(color: Colors.black12),
                              ),
                            ],
                          ),
                        )
                ],
              )),
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
                  color: Colors.red,
                  child: Text(
                    'LIVE',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                imagepath != null
                    ? Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(imagepath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    : Text(" ")
              ],
            ),
          )
        ],
      ),
    );
  }
}
