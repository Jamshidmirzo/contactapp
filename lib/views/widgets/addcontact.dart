import 'package:flutter/material.dart';

class Addcontact extends StatelessWidget {
  Addcontact({super.key});

  final namecontroller = TextEditingController();
  final numbercontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    donecontact() {
      if (formkey.currentState!.validate()) {
        formkey.currentState!.save();
        Navigator.pop(context,
            {'name': namecontroller.text, 'number': numbercontroller.text});
      }
    }

    return AlertDialog(
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Cancel❌"),
        ),
        ElevatedButton(
          onPressed: () {
            donecontact();
          },
          child: const Text("Add✅"),
        ),
      ],
      title: Text('Add Contact'),
      content: Form(
        key: formkey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: namecontroller,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Ismini kirg`izing';
                }
                return null;
              },
              decoration: InputDecoration(labelText: 'Add contact'),
            ),
            TextFormField(
              controller: numbercontroller,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'raqam kirg`izing';
                }
                return null;
              },
              decoration: InputDecoration(labelText: 'Add number'),
            )
          ],
        ),
      ),
    );
    ;
  }
}
