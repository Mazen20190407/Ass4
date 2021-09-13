import 'package:flutter/rendering.dart';

import 'contact_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'contact_card.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  static int count=0;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Tasks'),
        backgroundColor: Colors.black26,
      ),
      floatingActionButton:

      FloatingActionButton(
        backgroundColor: Colors.black38,
        onPressed: (){
          Navigator.pushNamed(context, 'addContact').then((value) {
            setState(() {
            });
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: ContactList.contacts.length,
          itemBuilder: (context,index)=> ContactCard(name: ContactList.contacts[index].name, Time: ContactList.contacts[index].Time, Level: ContactList.contacts[index].Level),
        ),
      ),
    );
  }
}
