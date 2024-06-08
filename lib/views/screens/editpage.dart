import 'package:contactapp/controllers/contact_controller.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class EditPage extends StatefulWidget {
  final String name;
  final String number;
  final int id;
  const EditPage(
      {super.key, required this.name, required this.number, required this.id});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  bool isChanged = false;
  late TextEditingController nameController;
  late TextEditingController numberController;
  final formKey = GlobalKey<FormState>();
  final contactcontroller = ContactController();

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.name);
    numberController = TextEditingController(text: widget.number);
    nameController.addListener(change);
    numberController.addListener(change);
  }

  void change() {
    if (widget.name != nameController.text ||
        widget.number != numberController.text) {
      setState(() {
        isChanged = true;
      });
    } else {
      setState(() {
        isChanged = false;
      });
    }
  }

  onDelete() {
    contactcontroller.deleteContact(widget.id);
    Navigator.pop(context);
  }

  @override
  void dispose() {
    nameController.dispose();
    numberController.dispose();
    super.dispose();
  }

  savefunc() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      Navigator.pop(context,
          {'name': nameController.text, 'number': numberController.text});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ZoomTapAnimation(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Cancel',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    Spacer(),
                    isChanged
                        ? ZoomTapAnimation(
                            onTap: () {
                              savefunc();
                            },
                            child: const Text(
                              'Edit',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          )
                        : const SizedBox(
                            height: 1,
                          ),
                  ],
                ),
                Center(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade700),
                        child: Text(
                          widget.name[0],
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 50,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const ZoomTapAnimation(
                        child: Text(
                          "Add photo",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      TextFormField(
                        controller: nameController,
                        decoration: const InputDecoration(
                            labelText: 'Name', border: OutlineInputBorder()),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'Surname', border: OutlineInputBorder()),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'Father name',
                            border: OutlineInputBorder()),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 150,
                        decoration: BoxDecoration(color: Colors.grey.shade900),
                        child: Column(
                          children: [
                            TextFormField(
                              controller: numberController,
                              decoration: const InputDecoration(
                                  prefixIcon: Icon(
                                Icons.remove,
                                color: Colors.red,
                              )),
                            ),
                            Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.green,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  const Text(
                                    'Add telephone',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                            ZoomTapAnimation(
                              onTap: () {
                                onDelete();
                              },
                              child: Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 40,
                                    ),
                                    const Text(
                                      'Delete contactact',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
