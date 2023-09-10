import 'dart:ui';

import 'package:flutter/material.dart';

class EmergencyCard extends StatefulWidget {
  final String emergencyName;
  final String emergencyImagePath;
  final VoidCallback onTap;

  EmergencyCard({
    required this.emergencyImagePath,
    required this.emergencyName,
    required this.onTap,
  });

  @override
  _EmergencyCardState createState() => _EmergencyCardState();
}

class _EmergencyCardState extends State<EmergencyCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: GestureDetector(
        onTap: widget.onTap,
        child: MouseRegion(
          onEnter: (_) {
            setState(() {
              isHovered = true;
            });
          },
          onExit: (_) {
            setState(() {
              isHovered = false;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: isHovered ? Colors.grey : Colors.grey[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: isHovered ? 10.0 : 0.0, sigmaY: isHovered ? 10.0 : 0.0),
                    child: Image.asset(
                      widget.emergencyImagePath,
                      height: 150,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  widget.emergencyName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
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



// import 'package:flutter/material.dart';
//
// class EmergencyCard extends StatelessWidget {
//   final String emergencyName;
//   final String emergencyImagePath;
//   final VoidCallback onTap;
//
//   EmergencyCard({
//     required this.emergencyImagePath,
//     required this.emergencyName,
//     required this.onTap
// });
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 25.0),
//       child: GestureDetector(
//         onTap: onTap,
//         child: Container(
//           decoration : BoxDecoration(
//             color: Colors.grey[100],
//             borderRadius: BorderRadius.circular(12),
//           ),
//           child: Column(
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(10),
//                 child: Image.asset(emergencyImagePath,
//                   height: 150,
//                 ),
//               ),
//               SizedBox(height: 25 ,),
//               Text(
//                 emergencyName,
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20,
//                   color: Colors.black
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
