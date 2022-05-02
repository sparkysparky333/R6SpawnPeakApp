import 'package:flutter/material.dart';
import 'package:r6_project/side_icons_icons.dart';
import 'package:r6_project/common/line_divider.dart';
import 'package:r6_project/common/image_descriptions.dart';
import 'package:r6_project/common/images.dart';
import 'package:r6_project/common/spawn_place.dart';

class map_Border extends StatefulWidget {
  const map_Border({Key? key}) : super(key: key);

  @override
  _borderState createState() => _borderState();
}

class _borderState extends State<map_Border> {
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
                                  ? ' Border: Attacker Side '
                                  : ' Border: Defender Side',
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
                                    "Spawn: East Vehicle Entrance",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 24,
                                        color: Colors.white),
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
                                //East Vehicle Entrance 1
                                Images(
                                  child: Image.asset(
                                    'assets/East_vehicle_entrance_a.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const lineDivider(),
                                const Spawn(
                                  child: Text(
                                    "Spawn: Valley",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 24,
                                        color: Colors.white),
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
                                //Valley 1
                                Images(
                                  child: Image.asset(
                                    'assets/Valley1_a.jpg',
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
                                //Valley 2
                                Images(
                                  child: Image.asset(
                                    'assets/Valley2_a.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch Both Doors",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //Valley 3
                                Images(
                                  child: Image.asset(
                                    'assets/Valley3_a.jpg',
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
                                //Valley 4
                                Images(
                                  child: Image.asset(
                                    'assets/Valley4_a.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch the Soft Wall",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //Valley 5
                                Images(
                                  child: Image.asset(
                                    'assets/Valley5_a.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const lineDivider(),
                                const Spawn(
                                  child: Text(
                                    "Spawn: West Vehicle Entrance",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 24,
                                        color: Colors.white),
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
                                //Alley Access 1
                                Images(
                                  child: Image.asset(
                                    'assets/West_vehicle_entrance1_a.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch the Window and the Door",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //Alley Access 2
                                Images(
                                  child: Image.asset(
                                    'assets/West_vehicle_entrance2_a.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch the Soft Wall",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //Alley Access 3
                                Images(
                                  child: Image.asset(
                                    'assets/West_vehicle_entrance3_a.jpg',
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
                                    "Spawn: East Vehicle Entrance",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 24,
                                        color: Colors.white),
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch Metal Gate",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //Parking Front 1
                                Images(
                                  child: Image.asset(
                                    'assets/East_vehicle_entrance_d.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const lineDivider(),
                                const Spawn(
                                  child: Text(
                                    "Spawn: Valley",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 24,
                                        color: Colors.white),
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch Both Sides of the White Thing",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //Valley 1
                                Images(
                                  child: Image.asset(
                                    'assets/Valley1_d.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch the Edge of the White Thing",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //Valley 2
                                Images(
                                  child: Image.asset(
                                    'assets/Valley2_d.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch the Small Opening",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //Valley 3
                                Images(
                                  child: Image.asset(
                                    'assets/Valley3_d.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch the Right Edge of the White Thing",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //valley 4
                                Images(
                                  child: Image.asset(
                                    'assets/Valley4_d.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch either Side of the Tank",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //Valley 5
                                Images(
                                  child: Image.asset(
                                    'assets/Valley5_d.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch the Right Side of the Tank",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //Valley 6
                                Images(
                                  child: Image.asset(
                                    'assets/Valley6_d.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const lineDivider(),
                                const Spawn(
                                  child: Text(
                                    "Spawn: West Vehicle Entrance",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 24,
                                        color: Colors.white),
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch above the Fence",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //West Vehicle Entrance 1
                                Images(
                                  child: Image.asset(
                                    'assets/West_vehicle_entrance1_d.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch in between the Van and the Wall",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //West Vehicle Entrance 2
                                Images(
                                  child: Image.asset(
                                    'assets/West_vehicle_entrance2_d.jpg',
                                    fit: BoxFit.cover,
                                    // Fixes border issues
                                    width: 350.0,
                                    height: 220.0,
                                  ),
                                ),
                                const Description(
                                  child: Text(
                                    "        Watch left of the Wall",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                //West Vehicle Entrance 3
                                Images(
                                  child: Image.asset(
                                    'assets/West_vehicle_entrance3_d.jpg',
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
