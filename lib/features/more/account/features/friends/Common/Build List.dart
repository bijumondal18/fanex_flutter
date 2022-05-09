import 'package:fanex_flutter/features/more/account/features/friends/Common/Card%20items.dart';
import 'package:flutter/material.dart';

import '../Models/models.dart';

class BuildList extends StatefulWidget {
  bool IsTwoButton = true;
  final String title1;
  String? title2;
  final int ItemCount;

  BuildList(
      {Key? key,
      required this.IsTwoButton,
      required this.title1,
      this.title2,
      required this.ItemCount})
      : super(key: key);

  @override
  State<BuildList> createState() => _BuildListState();
}

class _BuildListState extends State<BuildList> {
  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overScroll) {
        overScroll.disallowIndicator();
        return false;
      },
      child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: widget.ItemCount,
          itemBuilder: (BuildContext context, int index) {
            return CardItem(
              index: index,
              IsTwoButton: widget.IsTwoButton,
              title1: widget.title1,
              title2: widget.title2,
            );
          }),
    );
  }
}
