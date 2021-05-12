import 'package:desktop_poc/ui/screens/call_screen_small/call_screen_small.dart';
import 'package:desktop_poc/ui/screens/components/rouded_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'components/menu_item.dart';

class HomeScreenSmall extends StatefulWidget {
  @override
  _HomeScreenSmallState createState() => _HomeScreenSmallState();
}

class _HomeScreenSmallState extends State<HomeScreenSmall> {
  void push(String asset, String destination) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => CallScreenSmall(
              imageUrl: asset,
              destination: destination,
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEAF8),
      floatingActionButton: SpeedDial(
        icon: Icons.call,
        activeIcon: Icons.remove,
        buttonSize: 56.0,
        visible: true,

        /// If true user is forced to close dial manually
        /// by tapping main button and overlay is not rendered.
        closeManually: false,

        /// If true overlay will render no matter what.
        renderOverlay: true,
        curve: Curves.bounceIn,

        tooltip: 'Speed Dial',
        heroTag: 'speed-dial-hero-tag',
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 8.0,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
            child: Icon(Icons.stacked_line_chart),
            label: 'Vital signs',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => push(
              'https://www.obsidiansoft.com/wp-content/uploads/vital.gif',
              'Vital Signs',
            ),
          ),
          SpeedDialChild(
            child: Icon(Icons.person_add_alt_1_outlined),
            label: 'Nurse',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => push(
              'https://66.media.tumblr.com/4ad5738e53684f49011c4b485fb4a3a5/tumblr_pt40tqEgKG1xe1vj3o1_540.gif',
              'Nurse',
            ),
          ),
          SpeedDialChild(
            child: Icon(Icons.person_add),
            label: 'Doctor',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => push(
              'https://i.giphy.com/media/VF4qo9bXaudUu2pN0k/giphy.webp',
              'Doctor',
            ),
          ),
          SpeedDialChild(
            child: Icon(Icons.group_outlined),
            label: 'Hospital staff',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => push(
              'https://media3.giphy.com/media/UQUvaOURFAjQECetVg/giphy.gif?cid=ecf05e47d3950yrkw6iqnxlnknavn1svekoxm5z2x6c4u8ea&rid=giphy.gif&ct=g',
              'Hospital staff',
            ),
          ),
        ],
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Icon(
          Icons.add_box,
          color: Colors.purple,
          size: 56,
        ),
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.menu_rounded,
                color: Colors.purple,
              ),
            );
          },
        ),
      ),
      drawer: Container(
        width: 100,
        color: Colors.white,
        child: ListView(
          children: [
            const SizedBox(height: 30),
            MenuItem(
              enabled: false,
              icon: Icons.map,
            ),
            const SizedBox(height: 30),
            MenuItem(
              enabled: false,
              icon: Icons.folder_open,
            ),
            const SizedBox(height: 30),
            MenuItem(
              enabled: true,
              icon: Icons.stacked_line_chart,
            ),
            const SizedBox(height: 30),
            MenuItem(
              enabled: false,
              icon: Icons.medical_services,
            ),
            const SizedBox(height: 30),
            MenuItem(
              enabled: false,
              icon: Icons.calendar_today_outlined,
            ),
            const SizedBox(height: 30),
            MenuItem(
              enabled: false,
              icon: Icons.money,
            ),
            const SizedBox(height: 30),
            MenuItem(
              enabled: false,
              icon: Icons.email,
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          RoundedContainer(
            height: 140,
            child: Row(
              children: [
                CircleAvatar(
                  maxRadius: 40,
                  child: Icon(
                    Icons.person,
                    size: 60,
                  ),
                ),
                const SizedBox(width: 15),
                Text(
                  'Maria Waters',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          RoundedContainer(
            color: Colors.deepPurple[300],
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
          const SizedBox(height: 16),
          RoundedContainer(
            color: Colors.deepOrange[300],
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
          const SizedBox(height: 16),
          Text(
            'Medical History',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Text('Sort by type'),
              SizedBox(width: 5),
              Text('Consultation'),
              Icon(Icons.keyboard_arrow_down),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text('Sort by year'),
              SizedBox(width: 5),
              Text('2020'),
              Icon(Icons.keyboard_arrow_down),
            ],
          ),
          const SizedBox(height: 16),
          _DoctorCard(
            doctorName: 'dr Anthony Wagner',
            speciality: 'Dermatologist',
            date: DateTime(2020, 11, 19),
            location: 'Grand Medical Centre, 58 OxfordSt, London',
            communicationType: 'Hospital Visit',
            child: Container(
              height: 200,
            ),
          ),
          const SizedBox(height: 16),
          _DoctorCard(
            doctorName: 'dr Anthony Wagner',
            speciality: 'Dermatologist',
            date: DateTime(2020, 11, 19),
            location: 'Grand Medical Centre, 58 OxfordSt, London',
            communicationType: 'Hospital Visit',
            child: Container(
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}

class _DoctorCard extends StatefulWidget {
  _DoctorCard({
    this.child,
    this.doctorName = 'dr John Smith',
    this.speciality = 'Unknown',
    this.date,
    this.location = 'Unknown location',
    this.communicationType = 'Unknown',
  });

  final Widget child;
  final String doctorName;
  final String speciality;
  final DateTime date;
  final String location;
  final String communicationType;

  @override
  __DoctorCardState createState() => __DoctorCardState();
}

class __DoctorCardState extends State<_DoctorCard> {
  bool isOpen = false;

  String get date => widget.date == null
      ? 'unknown date'
      : '${widget.date.day}/${widget.date.month}/${widget.date.year}';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        RoundedContainer(
          height: 125,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.people),
                        const SizedBox(width: 8),
                        Text(widget.doctorName),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 32),
                        Text(widget.speciality),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.calendar_today),
                        const SizedBox(width: 8),
                        Text(date),
                      ],
                    ),
                  ],
                ),
              ),
              RawMaterialButton(
                onPressed: () {
                  setState(() {
                    isOpen = !isOpen;
                  });
                },
                elevation: 2.0,
                fillColor:
                    isOpen ? Colors.deepPurple[300] : Colors.deepPurple[100],
                shape: CircleBorder(),
                child: Icon(
                  isOpen ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                  size: 35.0,
                ),
              ),
            ],
          ),
        ),
        if (isOpen) SizedBox(height: 10),
        if (isOpen)
          RoundedContainer(
            color: Color(0xFFFAFAFA),
            child: widget.child,
          ),
      ],
    );
  }
}
