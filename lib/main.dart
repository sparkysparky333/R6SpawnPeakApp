import 'package:flutter/material.dart';
import 'map_Border.dart';
import 'package:url_launcher/url_launcher.dart';
import 'map_Bank.dart';
import 'map_Chalet.dart';

//main
void main() {
  runApp(const MyApp());
}

//home page
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      //title
      home: const MyHomePage(title: 'R6 Spawnpeeks'),
    );
  }
}

//real home page
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //background
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/originals/9e/5c/8f/9e5c8f86f7b98e705fee6457720e1033.png"),
              fit: BoxFit.cover)),

      //actual items
      child: Scaffold(
        //so you can see background
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          //Title
          title: const Text(
            'Rainbow Six Siege Spawn Peeks',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: Scrollbar(
          isAlwaysShown: true,
          //lets you scroll
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Center(
                      child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                    child: const Text(
                      ' Choose a Map ',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Divider(
                      thickness: 5,
                      // thickness of the line
                      indent: 10,
                      // empty space to the leading edge of divider.
                      endIndent: 10,
                      // empty space to the trailing edge of the divider.
                      color: Colors.white,
                      // The color to use when painting the line.
                      height: 20, // The divider's height extent.
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      //Row 1 names
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.fromLTRB(7, 7, 7, 7),
                            child: const Text(
                              "   Bank                            Border ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      //Row 1 pictures

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const map_Bank()),
                              );
                            }, // Image tapped
                            child: Container(
                              padding: const EdgeInsets.all(3), // Border width
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                  ),
                                  color: Colors.black,
                                  shape: BoxShape.rectangle),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/r6-maps-bank.jpg',
                                  fit: BoxFit.cover, // Fixes border issues
                                  width: 170.0,
                                  height: 130.0,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "    ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const map_Border()),
                              );
                            }, // Image tapped
                            child: Container(
                              padding: const EdgeInsets.all(3), // Border width
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                  ),
                                  color: Colors.black,
                                  shape: BoxShape.rectangle),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/r6-maps-border.jpg',
                                  fit: BoxFit.cover, // Fixes border issues
                                  width: 170.0,
                                  height: 130.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(
                          thickness: 5,
                          // thickness of the line
                          indent: 10,
                          // empty space to the leading edge of divider.
                          endIndent: 10,
                          // empty space to the trailing edge of the divider.
                          color: Colors.white,
                          // The color to use when painting the line.
                          height: 20, // The divider's height extent.
                        ),
                      ),

                      //Row 2 names
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.fromLTRB(7, 7, 7, 7),
                            child: const Text(
                              "     Chalet                      Clubhouse ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      //Row 2 pictures
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const map_Chalet()),
                              );
                            }, // Image tapped
                            child: Container(
                              padding: const EdgeInsets.all(3), // Border width
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                  ),
                                  color: Colors.black,
                                  shape: BoxShape.rectangle),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/r6-maps-chalet.jpg',
                                  fit: BoxFit.cover, // Fixes border issues
                                  width: 170.0,
                                  height: 130.0,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "    ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {}, // Image tapped
                            child: Container(
                              padding: const EdgeInsets.all(3), // Border width
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                  ),
                                  color: Colors.black,
                                  shape: BoxShape.rectangle),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/r6-maps-clubhouse.jpeg',
                                  fit: BoxFit.cover, // Fixes border issues
                                  width: 170.0,
                                  height: 130.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(
                          thickness: 5,
                          // thickness of the line
                          indent: 10,
                          // empty space to the leading edge of divider.
                          endIndent: 10,
                          // empty space to the trailing edge of the divider.
                          color: Colors.white,
                          // The color to use when painting the line.
                          height: 20, // The divider's height extent.
                        ),
                      ),
                      //Row 3 names
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.fromLTRB(7, 7, 7, 7),
                            child: const Text(
                              "   Coastline                     Consulate  ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      //Row 3 pictures
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {}, // Image tapped
                            child: Container(
                              padding: const EdgeInsets.all(3), // Border width
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                  ),
                                  color: Colors.black,
                                  shape: BoxShape.rectangle),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/r6-maps-coastline.jpeg',
                                  fit: BoxFit.cover, // Fixes border issues
                                  width: 170.0,
                                  height: 130.0,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "    ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {}, // Image tapped
                            child: Container(
                              padding: const EdgeInsets.all(3), // Border width
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                  ),
                                  color: Colors.black,
                                  shape: BoxShape.rectangle),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/r6-maps-consulate.jpeg',
                                  fit: BoxFit.cover, // Fixes border issues
                                  width: 170.0,
                                  height: 130.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(
                          thickness: 5,
                          // thickness of the line
                          indent: 10,
                          // empty space to the leading edge of divider.
                          endIndent: 10,
                          // empty space to the trailing edge of the divider.
                          color: Colors.white,
                          // The color to use when painting the line.
                          height: 20, // The divider's height extent.
                        ),
                      ),
                      //Row 4 names
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.fromLTRB(7, 7, 7, 7),
                            child: const Text(
                              "      Favela                          Fortress    ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      //Row 4 pictures
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const map_Bank(),
                                  ));
                            }, // Image tapped
                            child: Container(
                              padding: const EdgeInsets.all(3), // Border width
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                  ),
                                  color: Colors.black,
                                  shape: BoxShape.rectangle),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/r6-maps-favela.jpg',
                                  fit: BoxFit.cover, // Fixes border issues
                                  width: 170.0,
                                  height: 130.0,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "    ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {}, // Image tapped
                            child: Container(
                              padding: const EdgeInsets.all(3), // Border width
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                  ),
                                  color: Colors.black,
                                  shape: BoxShape.rectangle),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/r6-maps-fortress.jpg',
                                  fit: BoxFit.cover, // Fixes border issues
                                  width: 170.0,
                                  height: 130.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(
                          thickness: 5,
                          // thickness of the line
                          indent: 10,
                          // empty space to the leading edge of divider.
                          endIndent: 10,
                          // empty space to the trailing edge of the divider.
                          color: Colors.white,
                          // The color to use when painting the line.
                          height: 20, // The divider's height extent.
                        ),
                      ),
                      //Row 5 names
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.fromLTRB(7, 7, 7, 7),
                            child: const Text(
                              "    Hereford                        House        ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      //Row 5 pictures
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const map_Bank()),
                              );
                            }, // Image tapped
                            child: Container(
                              padding: const EdgeInsets.all(3), // Border width
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                  ),
                                  color: Colors.black,
                                  shape: BoxShape.rectangle),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/r6-maps-hereford.jpg',
                                  fit: BoxFit.cover, // Fixes border issues
                                  width: 170.0,
                                  height: 130.0,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "    ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {}, // Image tapped
                            child: Container(
                              padding: const EdgeInsets.all(3), // Border width
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                  ),
                                  color: Colors.black,
                                  shape: BoxShape.rectangle),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/r6-maps-house.jpg',
                                  fit: BoxFit.cover, // Fixes border issues
                                  width: 170.0,
                                  height: 130.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(
                          thickness: 5,
                          // thickness of the line
                          indent: 10,
                          // empty space to the leading edge of divider.
                          endIndent: 10,
                          // empty space to the trailing edge of the divider.
                          color: Colors.white,
                          // The color to use when painting the line.
                          height: 20, // The divider's height extent.
                        ),
                      ),
                      //Row 6 names
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.fromLTRB(7, 7, 7, 7),
                            child: const Text(
                              "    Kafe                            Kanal   ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      //Row 6 pictures
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const map_Bank(),
                                  ));
                            }, // Image tapped
                            child: Container(
                              padding: const EdgeInsets.all(3), // Border width
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                  ),
                                  color: Colors.black,
                                  shape: BoxShape.rectangle),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/r6-maps-kafe.jpg',
                                  fit: BoxFit.cover, // Fixes border issues
                                  width: 170.0,
                                  height: 130.0,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "    ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {}, // Image tapped
                            child: Container(
                              padding: const EdgeInsets.all(3), // Border width
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                  ),
                                  color: Colors.black,
                                  shape: BoxShape.rectangle),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/r6-maps-kanal.jpg',
                                  fit: BoxFit.cover, // Fixes border issues
                                  width: 170.0,
                                  height: 130.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(
                          thickness: 5,
                          // thickness of the line
                          indent: 10,
                          // empty space to the leading edge of divider.
                          endIndent: 10,
                          // empty space to the trailing edge of the divider.
                          color: Colors.white,
                          // The color to use when painting the line.
                          height: 20, // The divider's height extent.
                        ),
                      ),
                      //Row 7 names
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.fromLTRB(7, 7, 7, 7),
                            child: const Text(
                              "       Oregon                        Outback     ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      //Row 7 pictures
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const map_Bank()),
                              );
                            }, // Image tapped
                            child: Container(
                              padding: const EdgeInsets.all(3), // Border width
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                  ),
                                  color: Colors.black,
                                  shape: BoxShape.rectangle),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/r6-maps-oregon.jpg',
                                  fit: BoxFit.cover, // Fixes border issues
                                  width: 170.0,
                                  height: 130.0,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "    ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {}, // Image tapped
                            child: Container(
                              padding: const EdgeInsets.all(3), // Border width
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                  ),
                                  color: Colors.black,
                                  shape: BoxShape.rectangle),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/r6-maps-outback.jpg',
                                  fit: BoxFit.cover, // Fixes border issues
                                  width: 170.0,
                                  height: 130.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(
                          thickness: 5,
                          // thickness of the line
                          indent: 10,
                          // empty space to the leading edge of divider.
                          endIndent: 10,
                          // empty space to the trailing edge of the divider.
                          color: Colors.white,
                          // The color to use when painting the line.
                          height: 20, // The divider's height extent.
                        ),
                      ),
                      //Row 8 names
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.fromLTRB(7, 7, 7, 7),
                            child: const Text(
                              "         Plane                      Skyscraper    ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      //Row 8 pictures
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const map_Bank(),
                                  ));
                            }, // Image tapped
                            child: Container(
                              padding: const EdgeInsets.all(3), // Border width
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                  ),
                                  color: Colors.black,
                                  shape: BoxShape.rectangle),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/r6-maps-plane.jpg',
                                  fit: BoxFit.cover, // Fixes border issues
                                  width: 170.0,
                                  height: 130.0,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "    ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {}, // Image tapped
                            child: Container(
                              padding: const EdgeInsets.all(3), // Border width
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                  ),
                                  color: Colors.black,
                                  shape: BoxShape.rectangle),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/r6-maps-skyscraper.jpg',
                                  fit: BoxFit.cover, // Fixes border issues
                                  width: 170.0,
                                  height: 130.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(
                          thickness: 5,
                          // thickness of the line
                          indent: 10,
                          // empty space to the leading edge of divider.
                          endIndent: 10,
                          // empty space to the trailing edge of the divider.
                          color: Colors.white,
                          // The color to use when painting the line.
                          height: 20, // The divider's height extent.
                        ),
                      ),
                      //Row 9 names
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.fromLTRB(7, 7, 7, 7),
                            child: const Text(
                              "    Theme Park                     Tower         ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      //Row 9 pictures
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const map_Bank(),
                                  ));
                            }, // Image tapped
                            child: Container(
                              padding: const EdgeInsets.all(3), // Border width
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                  ),
                                  color: Colors.black,
                                  shape: BoxShape.rectangle),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/r6-maps-themepark.jpg',
                                  fit: BoxFit.cover, // Fixes border issues
                                  width: 170.0,
                                  height: 130.0,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "    ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {}, // Image tapped
                            child: Container(
                              padding: const EdgeInsets.all(3), // Border width
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                  ),
                                  color: Colors.black,
                                  shape: BoxShape.rectangle),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/r6-maps-tower.jpg',
                                  fit: BoxFit.cover, // Fixes border issues
                                  width: 170.0,
                                  height: 130.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(
                          thickness: 5,
                          // thickness of the line
                          indent: 10,
                          // empty space to the leading edge of divider.
                          endIndent: 10,
                          // empty space to the trailing edge of the divider.
                          color: Colors.white,
                          // The color to use when painting the line.
                          height: 20, // The divider's height extent.
                        ),
                      ),
                      //Row 10 names
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.fromLTRB(7, 7, 7, 7),
                            child: const Text(
                              "  Villa                             Yacht   ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      //Row 10 pictures
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const map_Bank(),
                                  ));
                            }, // Image tapped
                            child: Container(
                              padding: const EdgeInsets.all(3), // Border width
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                  ),
                                  color: Colors.black,
                                  shape: BoxShape.rectangle),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/r6-maps-villa.jpg',
                                  fit: BoxFit.cover, // Fixes border issues
                                  width: 170.0,
                                  height: 130.0,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "    ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {}, // Image tapped
                            child: Container(
                              padding: const EdgeInsets.all(3), // Border width
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0),
                                  ),
                                  color: Colors.black,
                                  shape: BoxShape.rectangle),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/r6-maps-yacht.jpg',
                                  fit: BoxFit.cover, // Fixes border issues
                                  width: 170.0,
                                  height: 130.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          shape: const CircularNotchedRectangle(),
          child: SizedBox(
            height: 50.0,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const More()),
                );
              },
              child: const Text('More',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  )),
            ),
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }

  Widget attackerText(String contents) => Text(
        contents,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.red,
          fontSize: 25,
        ),
      );

  Widget defenderText(String contents) => Text(
        contents,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.blue,
          fontSize: 25,
        ),
      );
}

class More extends StatelessWidget {
  const More({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1607128849509-bdccb1b58d09?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTh8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: TextButton(
            child: const Text(
              'Back',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                width: 500.0,
                height: 150.0,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(40)),
                  ),
                  onPressed: null,
                  child: const Text(
                    "Donate",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  ),
                ),
              ),

              SizedBox(
                width: 500.0,
                height: 150.0,
                child: InkWell(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.transparent),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.all(40)),
                      ),
                      onPressed: null,
                      child: const Text(
                        "Join Our Discord",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),
                    ),
                    onTap: () => launch('https://discord.gg/wVmtVEY7')),
              ),

              SizedBox(
                width: 500.0,
                height: 150.0,
                child: Container(
                  color: Colors.transparent,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.transparent),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.all(40)),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => _ShoutOuts(context),
                      );
                    },
                    child: const Text(
                      "Shoutout",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                width: 500.0,
                height: 150.0,
                child: Container(
                  color: Colors.transparent,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.transparent),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.all(40)),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => _AboutUs(context),
                      );
                    },
                    child: const Text(
                      "About Us",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                  ),
                ),
              ),
              //Image.asset('assets/images/r6logo.png'),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _AboutUs(BuildContext context) {
  return AlertDialog(
    title: const Text('About Us'),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Text(
            "  My name is Brandon Cho. This was a passion project created by me to not only practice Dart and Flutter but to create a tool to remember spawn peaks in r6. I have always found it quite annoying to die to some random never-before-seen spawn peek, so I created this app to be aware of spawnpeaks and to maybe preform some too.                            Thank you for installing! "),
      ],
    ),
    actions: <Widget>[
      FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: const Text('Close'),
      ),
    ],
  );
}

Widget _ShoutOuts(BuildContext context) {
  return AlertDialog(
    title: const Text('Shout Outs'),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const <Widget>[
        Text("Kae"),
      ],
    ),
    actions: <Widget>[
      FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: const Text('Close'),
      ),
    ],
  );
}
