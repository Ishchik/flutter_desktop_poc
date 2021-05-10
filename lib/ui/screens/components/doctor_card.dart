import 'package:flutter/material.dart';

import 'rouded_container.dart';

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
