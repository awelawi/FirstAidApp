import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ElectricShockFirstAid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color hexColor = Color(0xFF01213E);
    final number = '995';

    return Scaffold(
      appBar: AppBar(
        title: Text('Poisoning First Aid'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(left: 20.0, top: 5.0, right: 20.0), 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Electric Shock \n(Electrocution)',
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
                  '1. Dressings / Cling wrap',
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
                  '• Check for danger – make sure you, the injured person and others around you are safe.',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '• Try to switch off or disconnect the power supply. Do not touch the person until you are sure power is turned off. \nBe careful in wet environments, such as bathrooms, as water conducts electricity.',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              
                SizedBox(height: 10.0),
                Text(
                  '• If you cannot switch off the power supply, try to remove the person without touching them directly. \nUse something that is dry and does not conduct electricity (such as a wooden broom handle)',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  )),
                  SizedBox(height: 10.0),
                Text(
                  '• If they have burns: Cool the burn area with cool running water for 20 minutes. \nCover burns with dressings that won’t stick to the skin. If you don’t have dressings available, loosely applied cling wrap can be used. Do not apply cling wrap tightly or wrap around a body part, as this will cause complications if the injured area swells.',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                 SizedBox(height: 10.0),
                Text(
                  '• Follow the DRSABCD method for first aid which includes checking the injured person’s response, airway and breathing. It may be necessary to start cardiopulmonary resuscitation (CPR).',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                 SizedBox(height: 10.0),
              Center(
                child: Image.asset(
                  'images/Electrical-Shock-Survival-915x1024.webp', 
                  width: 300, 
                  height: 350, 
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
