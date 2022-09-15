import 'package:flutter/material.dart';
import 'package:lab04/home.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  bool checkBoxVal01 = false;
  bool checkBoxVal02 = false;
  bool checkBoxVal03 = false;
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
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Center(
                child: ElevatedButton.icon(
                  onPressed: (() {
                    setState(() {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: ((context) {
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
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Where you want to travel ?",
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
              Column(
                children: [
                  Container(
                    color: Color.fromARGB(255, 76, 159, 198),
                    child: CheckboxListTile(
                        secondary: Icon(Icons.location_city),
                        subtitle: Text("Eg: Petra, Dead Sea, Irbid"),
                        title: Text(
                          "Jordan",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        value: checkBoxVal01,
                        onChanged: ((val) {
                          setState(() {
                            checkBoxVal01 = val!;
                          });
                        })),
                  ),
                  Container(
                    color: Color.fromARGB(255, 76, 159, 198),
                    child: CheckboxListTile(
                        secondary: Icon(Icons.location_city),
                        subtitle: Text("Eg: Bierut, Tarablus, Baalbek"),
                        title: Text(
                          "Lebanon",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        value: checkBoxVal02,
                        onChanged: ((val) {
                          setState(() {
                            checkBoxVal02 = val!;
                          });
                        })),
                  ),
                  Container(
                    color: Color.fromARGB(255, 76, 159, 198),
                    child: CheckboxListTile(
                        secondary: Icon(Icons.location_city),
                        subtitle: Text("Eg: Cairo, Jiza, Jouna"),
                        title: Text(
                          "Egybt",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        value: checkBoxVal03,
                        onChanged: ((val) {
                          setState(() {
                            checkBoxVal03 = val!;
                          });
                        })),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
