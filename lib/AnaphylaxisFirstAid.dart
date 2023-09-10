import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnaphylaxisFirstAid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color hexColor = Color(0xFF01213E);
    final number = '995';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
  title: Text('Anaphylaxis First Aid'),
  actions: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        'images/logo-removebg-preview.png', 
        width: 100, 
        height: 100, 
      ),
    ),
  ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(left: 20.0, top: 5.0, right: 20.0), 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Anaphylaxis\n(Anaphylatic Shock)',
                  style: GoogleFonts.nunito(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: hexColor,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(height: 15.0), 
                Text(
                  'Tools Required:',
                  style: GoogleFonts.nunito(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  '1. Ephinephrine Injector',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Things you could do:',
                  style: GoogleFonts.nunito(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '• Press the injector against the person\'s thigh.',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '• Have the person lie face up and be still.',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '• Loosen tight clothing and cover the person with a blanket. Don\'t give the person anything to drink.',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '• If there\s vomiting or bleeding from the mouth, turn the person to the side to prevent choking.',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '• If there are no signs of breathing, coughing or movement, begin CPR. Do uninterrupted chest presses — about 100 every minute — until paramedics arrive.',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '• Get emergency treatment even if symptoms start to improve.',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                 SizedBox(height: 1.0),
              Center(
                child: Image.asset(
                  'images/how-to-do-cpr-1298446-4a04444fabe0467aa9194a9161e5cdb2.png', 
                  width: 500, 
                  height: 300, 
                  fit: BoxFit.contain, 
                ),
              )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
