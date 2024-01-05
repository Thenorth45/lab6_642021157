import 'package:flutter/material.dart';
import 'package:lab6_642021157/Hobby.dart';
export 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  List<Hobby> hobbys = [];
  List selecteditem = [];
  bool hobbyvalue = false;

  @override
  void initState() {
    super.initState();
    // Initialize the list of foods
    hobbys = Hobby.gethobby();
  }

  List<Widget> createradiohobbys() {
    List<Widget> myhobby = [];
    for (var hb in hobbys) {
      myhobby.add(CheckboxListTile(
        title: Text(hb.hobby),
        value: hb.value,
        controlAffinity: ListTileControlAffinity.leading,
        onChanged: (value) {
          setState(() {
            hb.value = value!;
            if (value) {
              selecteditem.add(hb.hobby);
            } else {
              selecteditem.remove(hb.hobby);
            }
          });
        },
      ));
    }
    return myhobby;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Lab6",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 108, 211, 68),
          ),
        ),
        elevation: 10,
        backgroundColor: Color.fromARGB(255, 10, 82, 4),
      ),
      body: Column(children: [
        SizedBox(height: 16),
        Text(
          "งานอดิเรก",
          style:
              TextStyle(fontSize: 30, color: Color.fromARGB(255, 233, 120, 44)),
        ),
        SizedBox(height: 16),
        ...createradiohobbys(),
        SizedBox(height: 16),
        Text(selecteditem.toString())
      ]),
    );
  }
}
