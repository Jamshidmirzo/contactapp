import 'package:contactapp/controllers/contact_controller.dart';
import 'package:contactapp/views/screens/editpage.dart';
import 'package:contactapp/views/widgets/updateswidgerts.dart';
import 'package:contactapp/views/widgets/updatewidgets.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Updatecontactsscreen extends StatefulWidget {
  String name;
  String number;
  int id;
  Updatecontactsscreen(
      {super.key, required this.name, required this.number, required this.id});

  @override
  State<Updatecontactsscreen> createState() => _UpdatecontactsscreenState();
}

class _UpdatecontactsscreenState extends State<Updatecontactsscreen> {
  final contactcontroller = ContactController();
  onEdit() async {
    final responce = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return EditPage(name: widget.name, number: widget.number,id: widget.id,);
        },
      ),
    );
    if (responce != null) {
      contactcontroller.updateContact(
          responce['name'], responce['number'], widget.id);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 400,
              color: Colors.grey.shade400,
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios)),
                      const Spacer(),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey.shade600),
                          onPressed: () {
                            onEdit();
                          },
                          child: const Text("Edit"))
                    ],
                  ),
                  Center(
                    child: Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey.shade700),
                      child: Text(
                        widget.name[0],
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 50,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Last use Main number',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    widget.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 50),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Updatewidgets(id: 0),
                      Updatewidgets(id: 1),
                      Updatewidgets(id: 2),
                      Updatewidgets(id: 3),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Updateswidgerts.first(widget),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(10)),
                    width: double.infinity,
                    height: 70,
                    child: Text(
                      'Number: ${widget.number}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Updateswidgerts.second(),
                  const SizedBox(
                    height: 20,
                  ),
                  Updateswidgerts.third()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
