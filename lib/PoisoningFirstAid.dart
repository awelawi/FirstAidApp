import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PoisoningFirstAid extends StatelessWidget {
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
                  'Food Poisoning',
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
                  '• Avoid solid foods until vomiting ends. Then eat light, bland foods, such as saltine crackers, bananas, rice, or bread.',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '• Sipping liquids may help avoid vomiting.',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '• Don’t take anti-nausea or anti-diarrhea medication without asking your doctor. They may make some kinds of diarrhea worse. Your doctor may give you anti-nausea medication if you are at risk of being dehydrated.',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '• Drink clear fluids, starting with small sips and gradually drinking more.',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  )),
                  SizedBox(height: 10.0),
                Text(
                  '• If vomiting and diarrhea last more than 24 hours, drink an oral rehydration solution \n(available in drugstores and pharmacies).',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                 SizedBox(height: 1.0),
              Center(
                child: Image.asset(
                  'images/Food-Poisoning.png', 
                  width: 500, 
                  height: 250,
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
