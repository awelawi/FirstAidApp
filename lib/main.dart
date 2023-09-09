import 'package:flutter/material.dart';
import 'package:first_aid_app/HeartAttack.dart';
import 'package:first_aid_app/Poisoning.dart';
import 'package:first_aid_app/ElectricShock.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '1AID',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 246, 242, 242),
        ),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  final TextEditingController _searchController = TextEditingController();
  List<String> _searchResults = [];

  void _performSearch(String query) {
    print('Searching for: $query');

    if (query.isEmpty) {
      setState(() {
        _searchResults.clear();
      });
      return;
    }

    final searchKeywords = ['Heart attack', 'Poisoning', 'Electric shock'];
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
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'images/logo.png',
                  height: 40,
                ),
              ),
            ),
            SizedBox(width: 8),
            Text('First Screen'),
          ],
        ),
      ),
      body: Padding(
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
    );
  }
}