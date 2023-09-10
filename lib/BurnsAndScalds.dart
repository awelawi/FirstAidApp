import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:first_aid_app/button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:first_aid_app/BurnsAndScaldsFirstAid.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class BurnsAndScalds extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    Color hexColor = Color(0xFF01213E);
    final number = '995';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
  title: Text('Burns and Scalds'),
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
            padding: EdgeInsets.only(left: 20.0, right: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Burns And Scalds',
                  style: GoogleFonts.nunito(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: hexColor,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(height: 15.0),
                Text(
                  'Description:',
                  style: GoogleFonts.nunito(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  '“A burn is caused by dry heat – by an iron or fire, for example. A scald is caused by something wet, such as hot water or steam. \nBurns can be very painful and may cause:',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text('\n1. Red or peeling \n2. Blisters\n3. Swelling \n4. White or charred skin\n',
                style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
                SizedBox(height: 1.0),
                Text(
                  '“The amount of pain you feel isn\t always related to how serious the burn is. Even a very serious burn may be relatively painless." \n-NHS Inform',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                  )),
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
                    'images/burnsandscalds.jpg',
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BurnsAndScaldsFirstAid(),
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
