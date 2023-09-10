import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrowningFirstAid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color hexColor = Color(0xFF01213E);
    final number = '995';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
  title: Text('Drowning First Aid'),
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
                  'Drowning',
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
                  'None',
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
                  '• If you are not a trained lifeguard, ask someone to call 911. If you\re alone, proceed to the next step.',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '• Remove the person from the water. Place your ear near their mouth and nose to feel for air and check if their chest is rising. If there\s no breathing, check their pulse for 10 seconds.',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Otherwise, start CPR',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  ' • For adults, place their back on a firm surface and perform chest compressions at least 2 inches deep at a rate of 100-120 per minute.',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '• For children, start with rescue breaths and then perform chest compressions at a rate of 100 per minute.',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),SizedBox(height: 10.0),
                Text(
                  'If the person is still not breathing, continue the cycle of 30 chest compressions and 2 rescue breaths until they start breathing or help arrives.',
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
