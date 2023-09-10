import 'package:flutter/material.dart';

class EmergencyCard extends StatelessWidget {
  final String emergencyName;
  final String emergencyImagePath;

  EmergencyCard({
    required this.emergencyImagePath,
    required this.emergencyName
});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        decoration : BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextButton(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(emergencyImagePath,
                  height: 150,
                ),
              ),
              SizedBox(height: 25 ,),
              Text(
                emergencyName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black
                ),
              )
            ],
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFF5F5F5)),
              overlayColor: MaterialStateProperty.resolveWith<Color>( (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.black;
                }
                return Colors.grey;
              }),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>( RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: BorderSide(color: Colors.white)))),
          onPressed: () {},
          // child: Text('TextButton with custom overlay colors'),
        ),
      ),
    );
  }
}
