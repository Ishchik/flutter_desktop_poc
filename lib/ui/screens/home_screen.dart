import 'package:desktop_poc/ui/screens/components/rouded_container.dart';
import 'package:desktop_poc/ui/screens/components/side_menu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final ScrollController controller = ScrollController();

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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEAF8),
      body: Row(
        children: [
          SideMenu(),
          Expanded(
            child: Column(
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
                                        onPressed: () {},
                                        child: Text('Connect: Hospital staff'),
                                      ),
                                      RawMaterialButton(
                                        onPressed: () {},
                                        child: Text('Connect: Doctor'),
                                      ),
                                      RawMaterialButton(
                                        onPressed: () {},
                                        child: Text('Connect: Nurse'),
                                      ),
                                      RawMaterialButton(
                                        onPressed: () {},
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
          ),
        ],
      ),
    );
  }
}

class DoctorCard extends StatefulWidget {
  DoctorCard({
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
  _DoctorCardState createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  bool isOpen = false;

  String get date => widget.date == null
      ? 'unknown date'
      : '${widget.date.day}/${widget.date.month}/${widget.date.year}';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoundedContainer(
          child: Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          Icon(Icons.people),
                          Text(widget.doctorName),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(widget.speciality),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(date),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Text(widget.location),
                        ],
                      ),
                    ),
                    Expanded(child: Text(widget.communicationType)),
                    RawMaterialButton(
                      onPressed: () {
                        setState(() {
                          isOpen = !isOpen;
                        });
                      },
                      elevation: 2.0,
                      fillColor: isOpen
                          ? Colors.deepPurple[300]
                          : Colors.deepPurple[100],
                      // padding: EdgeInsets.all(15.0),
                      shape: CircleBorder(),
                      child: Icon(
                        isOpen
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                        size: 35.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (isOpen) SizedBox(height: 10),
        if (isOpen)
          RoundedContainer(
            color: Color(0xFFFAFAFA),
            // height: 30,
            width: double.infinity,
            child: widget.child,
          ),
      ],
    );
  }
}
