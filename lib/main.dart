import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController txtDice = TextEditingController();

  List l1 = [
    "assets/Images/dice 1.png",
    "assets/Images/dice 2.png",
    "assets/Images/dice 3.png",
    "assets/Images/dice 4.png",
    "assets/Images/dice 5.png",
    "assets/Images/dice 6.png"
  ];
  int i=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Dice App"),
          centerTitle: true,
          backgroundColor: Colors.tealAccent,
        ),
        body: Center(
          child: Column(
            children: [
              TextField(
                controller: txtDice,
                decoration: InputDecoration(
                  hintText: "Enter the no. of dice you want",
                  border: InputBorder(
                    BorderRadius.circular(4),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Container(
                child: Image.asset(l1[i],height: 100,width: 100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
