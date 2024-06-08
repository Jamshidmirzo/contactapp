import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Updateswidgerts {
  static Widget first(final widget) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.grey.shade900, borderRadius: BorderRadius.circular(10)),
      width: double.infinity,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            alignment: Alignment.center,
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.grey.shade700),
            child: Text(
              widget.name[0],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          const Text(
            'Photo and info about contacts',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  static Widget second() {
    return Container(
      padding: EdgeInsets.all(20),
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text(
        "Notes",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }

  static Widget third() {
    return Container(
      padding: EdgeInsets.all(10),
      height: 210,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ZoomTapAnimation(
              child: Text(
            'Send Message',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Colors.blue.shade400),
          )),
          const SizedBox(
            height: 10,
          ),
          ZoomTapAnimation(
              child: Text(
            'Share contact',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Colors.blue.shade400),
          )),
          const SizedBox(
            height: 10,
          ),
          ZoomTapAnimation(
              child: Text(
            'Saved Message',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Colors.blue.shade400),
          )),
          const SizedBox(
            height: 10,
          ),
          ZoomTapAnimation(
            child: Text(
              'Add to CHP Contact',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.blue.shade400),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const ZoomTapAnimation(
            child: Text(
              'Block the Contact',
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 20, color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}
