import 'package:contactapp/views/screens/updatecontactsscreen.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Contacts extends StatefulWidget {
  final contact;
  Contacts({super.key, required this.contact});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  onNextpage() async {
    final responce = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return Updatecontactsscreen(
            name: widget.contact.name,
            number: widget.contact.number,
            id: widget.contact.id,
          );
        },
      ),
    );
    if (responce != null) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () {
        onNextpage();
      },
      child: ListTile(
        title: Text(
          widget.contact.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: const Text("Main number"),
        trailing: const Icon(
          Icons.info_outline,
          color: Colors.blue,
        ),
      ),
    );
    ;
  }
}
