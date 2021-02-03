import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:mytask1/components/recipes_view.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 30,
            child: Text(
              'Recipe for delicious food',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
          ),
          RepicesMediumView(
            onPressed: () {
              log("onPress card");
            },
          ),
          SizedBox(
            height: 30,
          ),
          RepicesSimpleView(onPressed: () {
            log("onPress card");
          }),
        ],
      ),
    );
  }
}
