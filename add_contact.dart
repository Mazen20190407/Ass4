import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'contact.dart';
import 'contact_list.dart';

class AddContactScreen extends StatelessWidget {
  AddContactScreen({Key? key}) : super(key: key);

  TextEditingController TimeController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController LevelController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        backgroundColor: Colors.black38,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Name',
                fillColor: Colors.black26,
                filled: true,

              ),
            ),
            TextField(
              controller: TimeController,
              decoration: InputDecoration(
                hintText: 'Date',
                fillColor: Colors.black38,
                filled: true,
              ),
            ),
            TextField(
              controller: LevelController,
              decoration: InputDecoration(
                hintText: 'Level',
                fillColor: Colors.black38,
                filled: true,
              ),
            ),
            MaterialButton(
              child: Container(
                width: 300.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color:Colors.black38,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Center(child: Text('Add Contact')),
              ),
              onPressed: (){
                ContactList.contacts.add(Contact(
                    nameController.value.text,
                    TimeController.value.text,
                    LevelController.value.text
                )

                );
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
