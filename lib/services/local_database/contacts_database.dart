import 'package:contactapp/models/contact.dart';
import 'package:contactapp/services/local_database/local_database.dart';

class ContactsDatabase {
  final localdatabase = LocalDatabase();
  void CreateDatabsase() async {
    final db = await localdatabase.database;
  }

  Future<void> addContact(String name, String number) async {
    final db = await localdatabase.database;
    await db.insert('Contacts', {'name': name, 'number': number});
  }

  Future<List<Contact>> getContact() async {
    final db = await localdatabase.database;
    final rows = await db.query('Contacts');
    List<Contact> contacts = [];

    for (var row in rows) {
      contacts.add(
        Contact(
            number: row['number'] as String,
            name: row['name'] as String,
            id: row['id'] as int),
      );
    }

    return contacts;
  }

  Future<int> updateContact(String name, String number, int id) async {
    final db = await localdatabase.database;
    final rows = await db.update(
        'Contacts',
        {
          'name': name,
          'number': number,
        },
        where: 'id=$id');
    return rows;
  }

  deleteContact(int id) async {
    final db = await localdatabase.database;
    db.delete('Contacts', where: 'id=$id');
  }
}
