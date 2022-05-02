import 'package:flutter/material.dart';
import 'package:r6_project/common/image_descriptions.dart';
import 'package:r6_project/common/spawn_place.dart';
import 'package:r6_project/side_icons_icons.dart';
import 'package:r6_project/common/line_divider.dart';
import 'package:r6_project/common/images.dart';

class map_Bank extends StatefulWidget {
  const map_Bank({Key? key}) : super(key: key);

  @override
  _bankState createState() => _bankState();
}

class _bankState extends State<map_Bank> {
  bool side = true;

  @override
  Widget build(BuildContext context) {
    void _attacker() {
      setState(() {
        //sets counter to 0 aka an attacker
        side = true;
      });
    }

    void _defender() {
      setState(() {
        //sets counter to 1 aka a defender
        side = false;
      });
    }

    //background
    return Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://img.wallpapersafari.com/desktop/1280/1024/88/62/8se4xI.jpg"),
                fit: BoxFit.cover)),

        //actual items
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
            body: Scrollbar(
              isAlwaysShown: true,
              //lets you scroll
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Center(
                              child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                            child: Text(
                              (side == true)
                                  ? ' Bank: Attacker Side '
                                  : ' Bank: Defender Side',
                              style: const TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )),
                          const lineDivider(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              //Attacker
                              if (side == true) ...[
                                const Spawn(
                                  child: Text(
                                    "Spawn: Parking Front",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 24,
                                        color: Colors.white),
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch the Main Entrance Doors",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //Parking Front 1
                                Images(
                                  child: Image.asset(
                                    'assets/Parking_front_a.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const lineDivider(),
                                const Spawn(
                                  child: Text(
                                    "Spawn: Jewelery Front",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 24,
                                        color: Colors.white),
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch the Windows",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //Jewelery Front 1
                                Images(
                                  child: Image.asset(
                                    'assets/Jewelry_front1_a.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                //Jewelery Front 2
                                Images(
                                  child: Image.asset(
                                    'assets/Jewelry_front2_a.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                //Jewelery Front 3
                                Images(
                                  child: Image.asset(
                                    'assets/Jewelry_front3_a.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch Main Entrance Doors",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //Jewelery Front 4
                                Images(
                                  child: Image.asset(
                                    'assets/Jewelry_front4_a.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const lineDivider(),
                                const Spawn(
                                  child: Text(
                                    "Spawn: Alley Access",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 24,
                                        color: Colors.white),
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch Run out of Balcony",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //Alley Access 1
                                Images(
                                  child: Image.asset(
                                    'assets/Alley_access1_a.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch the Window",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //Alley Access 2
                                Images(
                                  child: Image.asset(
                                    'assets/Alley_access2_a.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch the Door",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //Alley Access 3
                                Images(
                                  child: Image.asset(
                                    'assets/Alley_access3_a.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                //Defender
                              ] else ...[
                                const Spawn(
                                  child: Text(
                                    "Spawn: Parking Front",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 24,
                                        color: Colors.white),
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch the edge of the van",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //Parking Front 1
                                Images(
                                  child: Image.asset(
                                    'assets/Parking_front_d.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const lineDivider(),
                                const Spawn(
                                  child: Text(
                                    "Spawn: Jewelery Front",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 24,
                                        color: Colors.white),
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch the the edge of the building",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //Jewelery Front 1
                                Images(
                                  child: Image.asset(
                                    'assets/Jewelry_front1_d.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch between the booth and the white lamp",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //Jewelery Front 2
                                Images(
                                  child: Image.asset(
                                    'assets/Jewelry_front2_d.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch the the edge of the booth",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //Jewelery Front 3
                                Images(
                                  child: Image.asset(
                                    'assets/Jewelry_front3_d.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch the the right side of the far tree",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //Jewelery Front 4
                                Images(
                                  child: Image.asset(
                                    'assets/Jewelry_front4_d.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch the the edge of the black van",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //Jewelery Front 5
                                Images(
                                  child: Image.asset(
                                    'assets/Jewelry_front5_d.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const lineDivider(),
                                const Spawn(
                                  child: Text(
                                    "Spawn: Alley Access",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 24,
                                        color: Colors.white),
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch the alley",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //Alley Access 1
                                Images(
                                  child: Image.asset(
                                    'assets/Alley_access1_d.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch in between the fence and black car",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //Alley Access 2
                                Images(
                                  child: Image.asset(
                                    'assets/Alley_access2_d.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch the edge of the fence on the left",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch above the right fence",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch behind the car",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //Alley Access 3
                                Images(
                                  child: Image.asset(
                                    'assets/Alley_access3_d.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                              ]
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            floatingActionButton:
                Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              FloatingActionButton(
                backgroundColor: Colors.blue,
                child: const Icon(
                  SideIcons.defender_icon,
                  size: 40,
                ),
                onPressed: () => _defender(),
                heroTag: null,
              ),
              const SizedBox(
                height: 10,
              ),
              FloatingActionButton(
                backgroundColor: Colors.red,
                child: const Icon(
                  SideIcons.attacker_icon,
                  size: 40,
                ),
                onPressed: () => _attacker(),
                heroTag: null,
              )
            ])));
  }
}
