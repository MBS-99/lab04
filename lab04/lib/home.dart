import 'package:flutter/material.dart';
import 'package:lab04/screen1.dart';
import 'package:lab04/screen2.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/originals/f5/af/38/f5af38611cd1bda1f68876a13bb6436e.jpg"),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
                color: Color.fromARGB(255, 121, 170, 202),
              ),
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 150,
              alignment: Alignment.topCenter,
              child: Container(
                width: 250,
                color: Color.fromARGB(255, 76, 159, 198),
                child: Text(
                  "Welcome  to\n Our  Travel\n App",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
            ),
            SizedBox(
              height: 170,
            ),
            ElevatedButton.icon(
              onPressed: (() {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return Screen1();
                  })));
                });
              }),
              icon: Icon(Icons.favorite),
              label: Text(
                "Your Prefrence Page",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton.icon(
                onPressed: (() {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Screen2();
                    }));
                  });
                }),
                icon: Icon(Icons.favorite),
                label: Text(
                  "Fill your information",
                  style: TextStyle(fontSize: 25),
                ))
          ],
        ),
      ),
    );
  }
}
