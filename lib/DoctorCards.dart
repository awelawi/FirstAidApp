import 'package:flutter/material.dart';

class DoctorCard extends StatefulWidget {
  final String doctorImagePath;
  final String doctorName;
  final String doctorRating;
  final String doctorContact;
  final String doctorLocation;
  final String doctorSpecialization;

  DoctorCard({
    required this.doctorImagePath,
    required this.doctorName,
    required this.doctorRating,
    required this.doctorContact,
    required this.doctorLocation,
    required this.doctorSpecialization,
  });

  @override
  _DoctorCardState createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  bool isTapped = false;

  void handleTap() {
    setState(() {
      isTapped = !isTapped;
    });
  }

  @override
  Widget build(BuildContext context) {
    final cardColor = isTapped ? Colors.grey : Colors.grey[100];

    return GestureDetector(
      onTap: handleTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: cardColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Image.asset(widget.doctorImagePath),
                height: 200,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    widget.doctorName,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Specialty: ${widget.doctorSpecialization}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue,
                    ),
                  ),
                  Text(
                    "Location: ${widget.doctorLocation}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Contact: ${widget.doctorContact}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}