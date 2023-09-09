import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:first_aid_app/button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:first_aid_app/HeartAttackFirstAid.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class HeartAttack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color hexColor = Color(0xFF01213E);
    final number = '995';

    return Scaffold(
      appBar: AppBar(
        title: Text('Heart Attack Page'),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(
              left: 20.0, right: 40.0), // Adjust the padding as needed
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Heart Attack\n(Cardiac Arrest)',
                style: GoogleFonts.nunito(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: hexColor,
                  fontStyle: FontStyle.normal,
                ),
              ),
              SizedBox(
                  height: 15.0), // Add some space between title and description
              Text(
                'Description:',
                style: GoogleFonts.nunito(
                  fontSize: 20,
                  color:
                      Colors.black, // Change the text color for the description
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                '"A heart attack occurs when the flow of blood to the heart is severely reduced or blocked. The blockage is usually due to a buildup of fat, cholesterol, and other substances in the heart (coronary) arteries" \n- Mayo Clinic.',
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Signs and Symptoms:',
                style: GoogleFonts.nunito(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Center(
                child: Image.asset(
                  'images/heartattack.jpg',
                  width: 500,
                  height: 300,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              style: buttonPrimary,
              onPressed: () async {
                launch('tel://$number');
              },
              child: Text(
                'Call 911',
                style: GoogleFonts.nunito(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(width: 15.0),
            ElevatedButton(
              style: buttonPrimary,
              onPressed: () {
                (
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HeartAttackFirstAid(),
                    ),
                  ),
                );
              },
              child: Text(
                'Learn how to \n give first aid',
                style: GoogleFonts.nunito(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
