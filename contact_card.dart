import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatefulWidget {


  final String name,Time,Level;
  ContactCard({required this.name,required this.Time,required this.Level});

  @override
  _ContactCardState createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  bool valuefirst = false;

  bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
    return Container(

            padding: new EdgeInsets.all(22.0),
            child: Column(
              children: <Widget>[

                CheckboxListTile(

                  title: Text(widget.name),

                  subtitle: Text(widget.Time + '    '+widget.Level),


                  value: this.valuefirst,
                  activeColor: Colors.black26,
                  onChanged: (bool? value) {
                    setState(() {
                      this.valuefirst = value!;

                    });




                },

                ),
              ],
            )


    );
  }
}