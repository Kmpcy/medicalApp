import 'package:final_project/firebase_serviec/storage_img.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:final_project/constans/appcolor.dart';

class MyDropdown extends StatefulWidget {
  List<String> listItems = [];
  String selecteditem;
  MyDropdown({required this.selecteditem, required this.listItems, super.key});

  @override
  _MyDropdownState createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: widget.selecteditem,
      icon: Icon(Icons.arrow_downward), // Arrow-down icon
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: AppColor.greenColor),
      onChanged:  (newValue)  {
        setState(()     {widget.selecteditem = newValue!;
          
        });
      },
      items: widget.listItems.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
