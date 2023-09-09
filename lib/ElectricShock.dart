import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:first_aid_app/button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:first_aid_app/ElectricShockFirstAid.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class ElectricShock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color hexColor = Color(0xFF01213E);
    final number = '995';

     return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
         //   Padding(
            //  padding: EdgeInsets.only(left:1),
              Image.asset(
                'images/logo.png',
                height: 40,
              ),
          //  ),
            Text('Electric Shock Page'),
          ],
        ),
      ),
      body: SingleChildScrollView( 
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(
                left: 20.0, right: 40.0),
                 
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
                SizedBox(
                    height: 15.0), 
                Text(
                  'Description:',
                  style: GoogleFonts.nunito(
                    fontSize: 20,
                    color:
                        Colors.black, 
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  'Our bodies conduct electricity. If any part of your body meets live electricity an electric current flows through the tissues, which causes an electric shock. \nDepending on the length and severity the electric shock, injuries can include\n• Burns to the skin\n• Burns to internal tissues\n• Electrical interference or damage (or both) to the heart, which could cause the heart to stop or beat erratically. \n- Mayo Clinic.',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color:
                        Colors.black, 
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Signs and Symptoms:',
                  style: GoogleFonts.nunito(
                    fontSize: 20,
                    color:
                        Colors.black, 
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Center(
                  child: Image.asset(
                    'images/an-infographic-of-effects-on-the-body-shock.jpg', 
                    width: 500, 
                    height: 300, 
                    fit: BoxFit.contain, 
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 20.0, vertical: 10.0), 
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ElectricShockFirstAid(), 
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
