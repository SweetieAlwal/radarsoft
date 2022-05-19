import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends SliverPersistentHeaderDelegate
{


  CustomAppbar();



  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Container(
      child: Row(
        children: [
          Icon(
            Icons.notifications
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => throw UnimplementedError();

  @override
  // TODO: implement minExtent
  double get minExtent => throw UnimplementedError();

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    throw UnimplementedError();
  }}