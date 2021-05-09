import 'package:desktop_poc/ui/screens/components/rouded_container.dart';
import 'package:desktop_poc/ui/screens/components/side_menu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final ScrollController controller = ScrollController();

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
                Container(
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
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30.0,
                    horizontal: 40.0,
                  ),
                  child: Expanded(
                    child: Scrollbar(
                      controller: controller,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            _topContent,
                            SizedBox(
                              height: 30,
                            ),
                            DoctorCard(),
                            SizedBox(
                              height: 10,
                            ),
                            DoctorCard(),
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

  Widget get _topContent {
    return Row(
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
  }
}

class DoctorCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.people),
          Text('dr Name Surname'),
          Text('Consultation'),
          Text('Datetime'),
          Text('Location'),
          Text('Communication type'),
          Text('Circle Button'),
        ],
      ),
    );
  }
}
