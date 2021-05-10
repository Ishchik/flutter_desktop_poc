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
                                      Text(
                                        'Medical history',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 23,
                                        ),
                                      ),
                                      SizedBox(width: 20),
                                      Text('Sort by type'),
                                      SizedBox(width: 5),
                                      Text('Consultation'),
                                      SizedBox(width: 20),
                                      Text('Sort by year'),
                                      SizedBox(width: 5),
                                      Text('2020'),
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
                                        child: Text('Connect:'),
                                      ),
                                      RawMaterialButton(
                                        onPressed: () {},
                                        child: Text('Connect:'),
                                      ),
                                      RawMaterialButton(
                                        onPressed: () {},
                                        child: Text('Connect:'),
                                      ),
                                      RawMaterialButton(
                                        onPressed: () {},
                                        child: Text('Connect:'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            DoctorCard(
                              child: Container(
                                height: 300,
                              ),
                            ),
                            SizedBox(height: 10),
                            DoctorCard(
                              child: Container(
                                height: 300,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            DoctorCard(
                              child: Container(
                                height: 300,
                              ),
                            ),
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
  DoctorCard({this.child});
  final Widget child;

  @override
  _DoctorCardState createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoundedContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.people),
              Text('dr Name Surname'),
              Text('Consultation'),
              Text('Datetime'),
              Text('Location'),
              Text('Communication type'),
              RawMaterialButton(
                onPressed: () {
                  setState(() {
                    isOpen = !isOpen;
                  });
                },
                elevation: 2.0,
                fillColor:
                    isOpen ? Colors.deepPurple[300] : Colors.deepPurple[100],
                // padding: EdgeInsets.all(15.0),
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
            // height: 30,
            width: double.infinity,
            child: widget.child,
          ),
      ],
    );
  }
}
