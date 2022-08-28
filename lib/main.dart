import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int imageNumber = 1;
  Color defaultColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 219, 216, 216),
        ),
        body: Container(
          child: Container(
            color: defaultColor,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("images/$imageNumber.png"),
                  SizedBox(height: 30,),
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        defaultColor = Colors.indigo;
                      });
                    },
                    icon: Icon(Icons.circle, color: Colors.indigo),
                    label: Text("Change to indigo color"),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        defaultColor = Color.fromARGB(255, 206, 169, 233);
                      });
                    },
                    icon: Icon(
                      Icons.circle,
                      color: Color.fromARGB(255, 206, 169, 233),
                    ),
                    label: Text("Change to light purple color"),
                  ),
                  MaterialButton(
                    child: Text("Change the picture"),
                    color: Colors.purple[300],
                    onPressed: () {
                      setState(() {
                        imageNumber = 2;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
