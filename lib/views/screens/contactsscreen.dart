import 'package:contactapp/controllers/contact_controller.dart';
import 'package:contactapp/views/widgets/addcontact.dart';
import 'package:contactapp/views/widgets/contacts.dart';
import 'package:contactapp/views/widgets/mycard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Contactsscreen extends StatefulWidget {
  const Contactsscreen({super.key});

  @override
  State<Contactsscreen> createState() => _ContactsscreenState();
}

class _ContactsscreenState extends State<Contactsscreen> {
  @override
  void initState() {
    contactcontroller.createDatabase();
    super.initState();
  }

  final contactcontroller = ContactController();

  addContact() async {
    final responce = await showDialog(
      context: context,
      builder: (context) {
        return Addcontact();
      },
    );
    if (responce != null) {
      contactcontroller.addContact(responce['name'], responce['number']);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ZoomTapAnimation(
            child: IconButton(
              onPressed: () {
                addContact();
              },
              icon: const Icon(Icons.add),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Contacts',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                labelText: 'Search',
                suffixIcon: const Icon(CupertinoIcons.mic),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Mycard(),
            const SizedBox(
              height: 20,
            ),
            FutureBuilder(
                future: contactcontroller.list,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        snapshot.error.toString(),
                      ),
                    );
                  }
                  if (snapshot.data!.isEmpty || snapshot.data == null) {
                    return const Center(
                      child: Text('Contactlar yoq!'),
                    );
                  }
                  return Expanded(
                    child: ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        final contact = snapshot.data![index];
                        return Contacts(contact: contact);
                      },
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
