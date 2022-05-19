import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarouselCards extends StatelessWidget {
  final String image;
  CarouselCards({Key key, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
        // child: GestureDetector(
        //   child: Container(
        //     height: 3,
        //     width: 10,
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(8),
        //       color: Colors.blue,
        //     ),
        //     child: Text(
        //       'Book Now',
        //       style: TextStyle(color: Colors.white),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
