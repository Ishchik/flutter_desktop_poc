import 'package:desktop_poc/ui/screens/components/player_widget.dart';
import 'package:desktop_poc/ui/screens/components/rouded_container.dart';
import 'package:desktop_poc/ui/screens/components/side_menu.dart';
import 'package:flutter/material.dart';

import 'components/doctor_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController controller = ScrollController();

  final List<Widget> players = [];

  Widget get _appBar => Container(
        color: Colors.white,
        height: 80,
        child: Row(
          children: [
            SizedBox(
              width: 40,
            ),
            RoundedContainer(
              height: 45,
              width: 180,
              color: Color(0xFFAA99FA),
              contentPadding: EdgeInsets.zero,
              child: Center(
                child: Text(
                  'Make an appointment',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  Widget get _topContent => Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RoundedContainer(
            color: Colors.white,
            width: 500,
            height: 100,
          ),
          SizedBox(width: 25),
          RoundedContainer(
            color: Colors.deepPurple[300],
            width: 300,
            height: 100,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Blood type:',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Alergies:',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Diseases:',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'AB+',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Penicilin, milk, peanuts',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Diabetes',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 12),
          RoundedContainer(
            color: Colors.deepOrange[300],
            width: 300,
            height: 100,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Regular checkups',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'dr Anthony Wagner',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'dr Tom Humpton',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'dermatologist',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'dentist',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );

  Widget get _medicalHistory => Column(
        children: [
          SizedBox(height: 10),
          DoctorCard(
            doctorName: 'dr Anthony Wagner',
            speciality: 'Dermatologist',
            date: DateTime(2020, 11, 19),
            location: 'Grand Medical Centre, 58 OxfordSt, London',
            communicationType: 'Hospital Visit',
            child: Container(
              height: 300,
            ),
          ),
          SizedBox(height: 10),
          DoctorCard(
            doctorName: 'dr Caroline Fields',
            speciality: 'Cardiologist',
            date: DateTime(2020, 11, 18),
            location: 'New York Hospital Medical Center, 5th Ave 452',
            communicationType: 'Medical consultation',
            child: Container(
              height: 300,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          DoctorCard(
            doctorName: 'dr Tom Humpton',
            speciality: 'Dentist',
            date: DateTime(2020, 10, 12),
            location: 'New York Hospital Medical Center, 5th Ave 452',
            communicationType: 'Medical consultation',
            child: Container(
              height: 300,
            ),
          ),
        ],
      );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEAF8),
      body: Row(
        children: [
          SideMenu(),
          Expanded(
            child: Stack(
              children: [
                Column(
                  children: [
                    _appBar,
                    Expanded(
                      child: Scrollbar(
                        controller: controller,
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 30.0,
                              horizontal: 40.0,
                            ),
                            child: Column(
                              children: [
                                _topContent,
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'Medical history',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 23,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 20),
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Text('Sort by type'),
                                                SizedBox(width: 5),
                                                Text('Consultation'),
                                                Icon(Icons.keyboard_arrow_down),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 20),
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Text('Sort by year'),
                                                SizedBox(width: 5),
                                                Text('2020'),
                                                Icon(Icons.keyboard_arrow_down),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          RawMaterialButton(
                                            onPressed: () {
                                              setState(() {
                                                players.add(
                                                  PlayerWidget(
                                                    destination:
                                                        'Hospital staff',
                                                    assetUrl:
                                                        'https://media3.giphy.com/media/UQUvaOURFAjQECetVg/giphy.gif?cid=ecf05e47d3950yrkw6iqnxlnknavn1svekoxm5z2x6c4u8ea&rid=giphy.gif&ct=g',
                                                    onClose: (player) =>
                                                        setState(() {
                                                      players.remove(player);
                                                    }),
                                                  ),
                                                );
                                              });
                                            },
                                            child:
                                                Text('Connect: Hospital staff'),
                                          ),
                                          RawMaterialButton(
                                            onPressed: () {
                                              setState(() {
                                                players.add(
                                                  PlayerWidget(
                                                    destination: 'Doctor',
                                                    assetUrl:
                                                        'https://i.giphy.com/media/VF4qo9bXaudUu2pN0k/giphy.webp',
                                                    onClose: (player) =>
                                                        setState(() {
                                                      players.remove(player);
                                                    }),
                                                  ),
                                                );
                                              });
                                            },
                                            child: Text('Connect: Doctor'),
                                          ),
                                          RawMaterialButton(
                                            onPressed: () {
                                              setState(() {
                                                players.add(
                                                  PlayerWidget(
                                                    destination: 'Nurse',
                                                    assetUrl:
                                                        'https://66.media.tumblr.com/4ad5738e53684f49011c4b485fb4a3a5/tumblr_pt40tqEgKG1xe1vj3o1_540.gif',
                                                    onClose: (player) =>
                                                        setState(() {
                                                      players.remove(player);
                                                    }),
                                                  ),
                                                );
                                              });
                                            },
                                            child: Text('Connect: Nurse'),
                                          ),
                                          RawMaterialButton(
                                            onPressed: () {
                                              setState(() {
                                                players.add(
                                                  PlayerWidget(
                                                    destination: 'Vital signs',
                                                    assetUrl:
                                                        'https://www.obsidiansoft.com/wp-content/uploads/vital.gif',
                                                    onClose: (player) =>
                                                        setState(() {
                                                      players.remove(player);
                                                    }),
                                                  ),
                                                );
                                              });
                                            },
                                            child: Text(
                                                'Connect: Spot Vitals machine'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                _medicalHistory
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Wrap(
                  spacing: 15,
                  runSpacing: 15,
                  children: players,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
