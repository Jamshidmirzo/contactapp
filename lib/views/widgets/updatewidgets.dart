import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Updatewidgets extends StatelessWidget {
  int id;

  Updatewidgets({super.key, required this.id});
  List all = [
    Icons.message,
    Icons.call,
    CupertinoIcons.video_camera_solid,
    Icons.email
  ];
  List texts = ['Message', 'Call', 'Video', 'Email'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: 95,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey.shade500,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Icon(all[id]),
          Text(texts[id]),
        ],
      ),
    );
  }
}
