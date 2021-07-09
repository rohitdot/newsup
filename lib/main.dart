import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(10),
          child: Column(
            // main column
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                // First row for header and search
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "The Mumbai Times",
                        style:
                            GoogleFonts.lato(color: Colors.black, fontSize: 30),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.search,
                        size: 20,
                        color: Colors.black,
                      )
                    ],
                  ),
                ],
              ),
              Row(
                // second row for headline and tab
                children: [
                  Column(
                    children: [
                      Text(
                        "US Politics",
                        style:
                            GoogleFonts.lato(color: Colors.black, fontSize: 25),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Show all",
                        style:
                            GoogleFonts.lato(color: Colors.black, fontSize: 10),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                // list view of news
                children: [
                  ListView(
                    children: [
                      ListTile(
                        title: Text("Egypt is on edge as security"),
                        leading: CircleAvatar(
                            backgroundImage: AssetImage("images/ai.jpg")),
                      ),
                      ListTile(
                        title: Text("Egypt is on edge as security"),
                        leading: CircleAvatar(
                            backgroundImage: AssetImage("images/ai.jpg")),
                      ),
                      ListTile(
                        title: Text("Egypt is on edge as security"),
                        leading: CircleAvatar(
                            backgroundImage: AssetImage("images/ai.jpg")),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
