import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'Anaphylaxis.dart';
import 'BurnsAndScalds.dart';
import 'Drowning.dart';
import 'ElectricShock.dart';
import 'HeartAttack.dart';
import 'Poisoning.dart';
import 'DoctorCards.dart';
import 'EmergencyCard.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool showHospitalContainer = false;
  bool showDoctorContainer = true;

  void toggleContainers(String type) {
    setState(() {
      if (type == 'hospital') {
        showHospitalContainer = true;
        showDoctorContainer = false;
      } else if (type == 'doctor') {
        showHospitalContainer = false;
        showDoctorContainer = true;
      }
    });
  }

  late final PageController pageController;

  bool showBtmAppBr = true;
  @override
  void initState() {

    pageController = PageController(
        initialPage: 0,
        viewportFraction: 0.85
    );
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse){
        showBtmAppBr = false;
        setState(() {

        });
      } else {
        showBtmAppBr = true;
        setState(() {
        });
      }
    });
    _scrollController.addListener(_scrollListener);//the listener for up and down.
    super.initState();
  }

  _scrollListener() {
    if (_scrollController.offset >= _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      setState(() {//you can do anything here
      });
    }
    if (_scrollController.offset <= _scrollController.position.minScrollExtent &&
        !_scrollController.position.outOfRange) {
      setState(() {//you can do anything here
      });
    }
  }


  final TextEditingController _searchController = TextEditingController();

  ScrollController _scrollController = ScrollController();



  List<String> _searchResults = [];

  void _performSearch(String query) {
    print('Searching for: $query');

    if (query.isEmpty) {
      setState(() {
        _searchResults.clear();
      });
      return;
    }

    final searchKeywords = [
      'Heart attack',
      'Poisoning',
      'Electric shock',
      'Anaphylaxis',
      'Burns and Scalds',
      'Drowning'
    ];
    final lowercaseQuery = query.toLowerCase();
    final filteredResults = searchKeywords
        .where((keyword) => keyword.toLowerCase().contains(lowercaseQuery))
        .map((result) {
      final words = result.split(' ');
      return words.map((word) {
        return word[0].toUpperCase() + word.substring(1).toLowerCase();
      }).join(' ');
    }).toList();

    setState(() {
      _searchResults = filteredResults;
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Color myColor = Color(0xFFFABD8E0);
    Color carouselColor = Color(0xFFFF01C3C);

    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          child: GNav(
            tabBorderRadius: 100,
            backgroundColor: myColor,
            color: Colors.white,
            activeColor: Colors.black,
            gap: 8,
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
                textStyle: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              GButton(
                icon: Icons.chat,
                text: 'Chat',
                textStyle: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
                textStyle: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFFBEE1E7),
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 40,
                ),
              ),
            ),
            SizedBox(width: 8),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 25.0),
              child: Center(child: Text('Main Page',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
          ],
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        controller: _scrollController,
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Search bar
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFBEE1E7),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      Expanded(
                        child: TextField(
                          controller: _searchController,
                          onChanged: _performSearch,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            hintText: ' What do you need?',
                            hintStyle: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                              ),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _searchResults.map((result) {
                    return ListTile(
                      title: Text(result),
                      onTap: () {
                        switch (result.toLowerCase()) {
                          case 'heart attack':
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HeartAttack(),
                              ),
                            );
                            break;
                          case 'poisoning':
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Poisoning(),
                              ),
                            );
                            break;
                          case 'anaphylaxis':
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Anaphylaxis(),
                              ),
                            );
                            break;
                          case 'drowning':
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Drowning(),
                              ),
                            );
                            break;
                          case 'burns and scalds':
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BurnsAndScalds(),
                              ),
                            );
                            break;
                            /*  case 'cuts and scrapes':
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CutsAndScrape(),
                              ),
                            );*/
                            break;
                          case 'electric shock':
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ElectricShock(),
                              ),
                            );
                            break;
                        }
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ),

          //  Welcome card and intro
          SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 12.0,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: List.generate(4, (index) =>
                //       Container(
                //           margin: const EdgeInsets.all(2.0),
                //           child: Icon(Icons.circle,
                //             size: 12.0,
                //             color: pageNumber == index?
                //             Colors.indigoAccent: Colors.grey.shade300,
                //           )
                //       )),
                // ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                        padding: EdgeInsets.all(25.0),
                        decoration: BoxDecoration(
                            color: carouselColor,
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Row(
                          children: [
                            //animation, how do you feel
                            Expanded(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Text("Hi Ella",
                                          style: GoogleFonts.nunito(
                                            textStyle: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 24,
                                                color: Colors.white
                                            ),
                                          )

                                      ),
                                    ),
                                    SizedBox(height: 12,),
                                    Center(
                                      child: Text("How are you today?",
                                        style: GoogleFonts.nunito(
                                            textStyle: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 18,
                                                color: Colors.white
                                            )
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 12,),
                                    Center(
                                      child: Text("Welcome to 1AID app",
                                          style: GoogleFonts.nunito(
                                              textStyle: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 18,
                                                  color: Colors.white
                                              )
                                          )
                                      ),
                                    ),
                                    SizedBox(height: 12,),
                                    Center(
                                      child: Text("Quickly Assess Your Situation and Receive Tailored FirstAid Guidance",
                                          style: GoogleFonts.nunito(
                                            textStyle: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 18,
                                                color: Colors.white
                                            ),
                                          )

                                      ),
                                    ),
                                    SizedBox(height: 12,),
                                  ]
                              ),
                            ),
                            SizedBox(width: 25,),
                            //container for adding firstaid treatment box later
                            Container(
                              // Image.asset("assets/images/man_holding_red_first_aid_box.jpg"),
                                height: 200,
                                width: 200,
                                child: Image.asset("assets/images/first-aid-kit-isolated-red-background-medical-paramedic-survival-first-aid-kit-bag-cpr_651618-382.jpg")
                            ),
                            //  icon of humans hand'
                          ],
                        )
                    )
                ),
              ],
            ),
          ),

          //  FirstAid Emergencies Cards
          SizedBox(height: 30,),
          Container(
            child: Padding(

              padding: const EdgeInsets.all(25.0),
              child: Text("First Aid Emergencies",
                  style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      )
                  )
              ),
            ),
          ),
          SizedBox(height: 20,),

          Container(
              padding: EdgeInsets.only(right: 25.0),
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  EmergencyCard(
                      emergencyImagePath: 'assets/images/What-is-Anaphylactic-Shock.jpg',
                      emergencyName: 'Anaphylaxis',
                    onTap: () {
                      // Navigate to Page1 when the card is tapped
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Anaphylaxis()));
                    },
                  ),
                  SizedBox(width: 25 ,),
                  SizedBox(width: 25 ,),
                  EmergencyCard(
                      emergencyImagePath: 'assets/images/electric_shock_first_aid.jpg',
                      emergencyName: 'electric shock',
                      onTap: () {
                        print("This has been clicked");
                        // Navigate to Page1 when the card is tapped
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ElectricShock()));
                      }
                  ),
                  SizedBox(width: 25 ,),
                  EmergencyCard(
                      emergencyImagePath: 'assets/images/burns_scalds.jpeg',
                      emergencyName: 'Burns & Scalds',
                      onTap: () {
                        // Navigate to Page1 when the card is tapped
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BurnsAndScalds()));
                      }
                  ),
                  SizedBox(width: 25 ,),
                  EmergencyCard(
                      emergencyImagePath: 'assets/images/heart_attack.jpeg',
                      emergencyName: 'Heart Attack',
                      onTap: () {
                        // Navigate to Page1 when the card is tapped
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HeartAttack()));
                      }
                  ),
                  SizedBox(width: 25 ,),
                  EmergencyCard(
                      emergencyImagePath: 'assets/images/How-Do-You-Know-When-Someone-is-Drowning.jpg',
                      emergencyName: 'Drowning',
                      onTap: () {
                        // Navigate to Page1 when the card is tapped
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Drowning()));
                      }
                  ),
                  SizedBox(width: 25 ,),
                  EmergencyCard(
                      emergencyImagePath: 'assets/images/Woman-poisoning.jpg',
                      emergencyName: 'Poisoning',
                      onTap: () {
                        // Navigate to Page1 when the card is tapped
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Poisoning()));
                      }
                  ),
                  SizedBox(width: 25 ,),
                ],
              )
          ),

          //Services
          SizedBox(height: 20,),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text("Services",
                style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    )
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),

          // Doctor and Hospital Service
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Center(
                        child: InkWell(
                          onTap: () {
                            toggleContainers('doctor');
                          },
                          child: Container(
                            decoration: showDoctorContainer
                                ? BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.black,
                                  width: 2.5,
                                ),
                              ),
                            )
                                : null,
                            child: Text(
                              'Doctors',
                              style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  )
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Center(
                        child: InkWell(
                          onTap: () {
                            toggleContainers('hospital');
                          },
                          child: Container(
                            decoration: showHospitalContainer
                                ? BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.black,
                                  width: 2.5,
                                ),
                              ),
                            )
                                : null,
                            child: Text(
                              'Hospitals',
                              style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  )
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]
                ),
                Column(
                  children: [
                    Visibility(
                      visible: showHospitalContainer,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        height: 200,
                        color: Colors.grey,
                        child: Center(
                          child: Text('Hospital Container'),
                        ),
                      ),
                    ),
                  ],
                ),
                Visibility(
                  visible: showDoctorContainer,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        DoctorCard(
                            doctorImagePath: 'assets/images/female-doctor-using-her-digital-tablet-free-vector.jpg',
                            doctorName: 'Dr. Ella',
                            doctorRating: '5.0',
                            doctorContact: '+1234567890',
                            doctorLocation: 'USA',
                            doctorSpecialization: 'Surgeon'),
                        SizedBox(width: 20,),

                        DoctorCard(
                            doctorImagePath: 'assets/images/female-doctor-using-her-digital-tablet-free-vector.jpg',
                            doctorName: 'Dr. Ella',
                            doctorRating: '5.0',
                            doctorContact: '+1234567890',
                            doctorLocation: 'USA',
                            doctorSpecialization: 'Surgeon'),
                        SizedBox(width: 20,),

                        DoctorCard(
                            doctorImagePath: 'assets/images/female-doctor-using-her-digital-tablet-free-vector.jpg',
                            doctorName: 'Dr. Ella',
                            doctorRating: '5.0',
                            doctorContact: '+1234567890',
                            doctorLocation: 'USA',
                            doctorSpecialization: 'Surgeon'),
                        SizedBox(width: 20,),

                        DoctorCard(
                            doctorImagePath: 'assets/images/female-doctor-using-her-digital-tablet-free-vector.jpg',
                            doctorName: 'Dr. Ella',
                            doctorRating: '5.0',
                            doctorContact: '+1234567890',
                            doctorLocation: 'USA',
                            doctorSpecialization: 'Surgeon')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
