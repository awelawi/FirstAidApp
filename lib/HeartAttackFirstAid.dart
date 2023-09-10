import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeartAttackFirstAid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color hexColor = Color(0xFF01213E);
    final number = '995';

    return Scaffold(
      appBar:AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
  title: Text('Heart Attack First Aid'),
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
                  'Heart Attack\n(Cardiac Arrest)',
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
                  '1. Automated External Defibrillator (AED)\n2. Aspirin',
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
                  '• Give an aspirin to chew and swallow while waiting for emergency help. Aspirin helps keep your blood from clotting. When taken during a heart attack, it could reduce heart damage. Do not take aspirin if he/she is allergic to it.',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '• Give nitroglycerin if prescribed. If the person is having a heart attack and his/her health care provider has previously prescribed nitroglycerin, take it as directed while waiting for emergency medical help.',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '• Begin CPR if the person is unconscious. If the person is not breathing or you do not find a pulse, begin CPR to keep blood flowing after you call for emergency medical help. Push hard and fast on the center of the person\'s chest in a fairly rapid rhythm — about 100 to 120 compressions a minute.',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '• If an automated external defibrillator (AED) is immediately available and the person is unconscious, follow the device instructions for using it.',
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
