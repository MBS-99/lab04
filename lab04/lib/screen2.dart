// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:lab04/home.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  List<String> dropDownList = [
    "1 Person",
    "2 Person",
    "2-5 Person",
    "6-8 Person"
  ];
  String selectedElement = "2-5 Person";
  String radioGroupVal = "";
  bool checkBoxVal1 = false;
  bool checkBoxVal2 = false;
  bool checkBoxVal3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/originals/f5/af/38/f5af38611cd1bda1f68876a13bb6436e.jpg"),
              fit: BoxFit.cover),
        ),
        child: ListView(
          children: [
            Text(
              "Please Enter Your Information",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                backgroundColor: Color.fromARGB(255, 76, 159, 198),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "How many person ?",
              textAlign: TextAlign.center,
              style: TextStyle(
                backgroundColor: Color.fromARGB(255, 76, 159, 198),
                fontSize: 25,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Color.fromARGB(255, 76, 159, 198),
              child: Center(
                child: DropdownButton(
                    value: selectedElement,
                    items: dropDownList
                        .map((e) =>
                            DropdownMenuItem(value: e, child: Text("$e")))
                        .toList(),
                    onChanged: ((val) {
                      setState(() {
                        selectedElement = val.toString();
                      });
                    })),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Select your class!",
              textAlign: TextAlign.center,
              style: TextStyle(
                backgroundColor: Color.fromARGB(255, 76, 159, 198),
                fontSize: 25,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                  color: Color.fromARGB(255, 76, 159, 198),
                  child: RadioListTile(
                      subtitle: Text("HOT!! ONLY 200\$ PER PERSON"),
                      title: Text(
                        "Business",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      value: "business",
                      groupValue: radioGroupVal,
                      onChanged: ((val) {
                        setState(() {
                          radioGroupVal = val.toString();
                        });
                      })),
                ),
                Container(
                  color: Color.fromARGB(255, 76, 159, 198),
                  child: RadioListTile(
                      subtitle: Text("HOT!! 150\$ PER PERSON"),
                      title: Text(
                        "Economy",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      value: "eco",
                      groupValue: radioGroupVal,
                      onChanged: ((val) {
                        setState(() {
                          radioGroupVal = val.toString();
                        });
                      })),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Select whatever you have during the trip!",
              textAlign: TextAlign.center,
              style: TextStyle(
                backgroundColor: Color.fromARGB(255, 76, 159, 198),
                fontSize: 25,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                  color: Color.fromARGB(255, 76, 159, 198),
                  child: CheckboxListTile(
                      secondary: Icon(Icons.pets),
                      subtitle: Text("Eg: Cats, Dogs, Rabbits"),
                      title: Text(
                        "Pets",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      value: checkBoxVal1,
                      onChanged: ((val) {
                        setState(() {
                          checkBoxVal1 = val!;
                        });
                      })),
                ),
                Container(
                  color: Color.fromARGB(255, 76, 159, 198),
                  child: CheckboxListTile(
                      secondary: Icon(Icons.medical_services_outlined),
                      subtitle: Text("Eg: Panadol, Aspirine, Tramadol"),
                      title: Text(
                        "Medicine",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      value: checkBoxVal2,
                      onChanged: ((val) {
                        setState(() {
                          checkBoxVal2 = val!;
                        });
                      })),
                ),
                Container(
                  color: Color.fromARGB(255, 76, 159, 198),
                  child: CheckboxListTile(
                      secondary: Icon(Icons.medical_services_outlined),
                      subtitle: Text("Eg: Knife, Gun, etc.."),
                      title: Text(
                        "Weapons",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      value: checkBoxVal3,
                      onChanged: ((val) {
                        setState(() {
                          checkBoxVal3 = val!;
                        });
                      })),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: (() {
                setState(() {
                  Navigator.pop(context, MaterialPageRoute(builder: ((context) {
                    return Home();
                  })));
                });
              }),
              icon: Icon(Icons.favorite),
              label: Text(
                "Home Page",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
