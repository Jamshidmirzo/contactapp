import 'package:contactapp/models/contact.dart';
import 'package:contactapp/services/local_database/contacts_database.dart';

class ContactController {
  final contactdatabase = ContactsDatabase();
  List<Contact> _list = [];
  Future<List<Contact>> get list async {
    _list = await contactdatabase.getContact();
    return [..._list];
  }

  void createDatabase() async {
    contactdatabase.CreateDatabsase();
  }

  Future<void> addContact(String name, String number) {
    return contactdatabase.addContact(name, number);
  }

  Future<void> updateContact(String name, String number, int id) {
    return contactdatabase.updateContact(name, number, id);
  }

  Future<void> deleteContact(int id) {
    return contactdatabase.deleteContact(id);
  }
}
