import 'package:flutter/material.dart';

class ListItem {
  int value;
  String name;
  ListItem(this.value, this.name);
}

class DropdownDemo extends StatefulWidget {
  @override
  _DropdownDemoState createState() => _DropdownDemoState();
}

class _DropdownDemoState extends State<DropdownDemo> {
  List<ListItem> _dropdownItems = [
    ListItem(1, "FILKOM"),
    ListItem(2, "FMIPA"),
    ListItem(3, "FTP"),
    ListItem(4, "FEB"),
  ];

  late List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  late ListItem _itemSelected;

  @override
  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
    _itemSelected = _dropdownItems[0]; // Set nilai awal ke "FILKOM"
  }

  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List<ListItem> listItems) {
    List<DropdownMenuItem<ListItem>> items = [];
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo DropDown"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all(),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  value: _itemSelected,
                  items: _dropdownMenuItems,
                  onChanged: (value) {
                    setState(() {
                      _itemSelected = value!;
                    });
                  },
                ),
              ),
            ),
          ),
          Text("Terpilih : ${_itemSelected.name}"),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DropdownDemo(),
  ));
}
