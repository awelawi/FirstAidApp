import 'package:flutter/material.dart';

class DoctorCard extends StatefulWidget {
  final String doctorImagePath;
  final String doctorName;
  final String doctorRating;
  final String doctorContact;
  final String doctorLocation;
  final String doctorSpecialization;

  DoctorCard({
    required this.doctorImagePath,
    required this.doctorName,
    required this.doctorRating,
    required this.doctorContact,
    required this.doctorLocation,
    required this.doctorSpecialization,
  });

  @override
  _DoctorCardState createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  bool isTapped = false;

  void handleTap() {
    setState(() {
      isTapped = !isTapped;
    });
  }

  @override
  Widget build(BuildContext context) {
    final cardColor = isTapped ? Colors.green : Colors.grey[100];

    return GestureDetector(
      onTap: handleTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: cardColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Image.asset(widget.doctorImagePath),
                height: 200,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    widget.doctorName,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Specialty: ${widget.doctorSpecialization}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue,
                    ),
                  ),
                  Text(
                    "Location: ${widget.doctorLocation}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Contact: ${widget.doctorContact}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
//
// class DoctorCard extends StatefulWidget{
//
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }
//   String doctorImagePath;
//   String doctorName;
//   String doctorRating;
//   String doctorContact;
//   String doctorLocation;
//   String doctorSpecialization;
//
//   DoctorCard({
//     required this.doctorImagePath,
//     required this.doctorName,
//     required this.doctorRating,
//     required this.doctorContact,
//     required this.doctorLocation,
//     required this.doctorSpecialization
//       }
//     );
//
//   bool isTapped = false;
//
//   void handleTap() {
//     setState(() {
//       isTapped = !isTapped;
//     });
//   }
//   @override
//   Widget build(BuildContext context){
//     final cardColor = isTapped ? Colors.green : Colors.grey[100];
//     return GestureDetector(
//       onTap: handleTap,
//       child: Padding(
//         padding: const EdgeInsets.only(left: 25.0),
//         child: Container(
//           // padding: EdgeInsets.all(20),
//           decoration: BoxDecoration(
//             shape: BoxShape.rectangle,
//             color: Colors.grey[100],
//             borderRadius: BorderRadius.circular(12)
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//             //  Image inserted here
//               Container(
//                 child: Image.asset(doctorImagePath),
//                 height: 200,
//               ),
//
//             //  Doctor details
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                     //container for star icons
//                     Row(
//                       children: [
//                         Icon(Icons.star,
//                           color: Colors.yellow,
//                         ),
//                         Icon(Icons.star,
//                             color: Colors.yellow
//                         ),
//                         Icon(Icons.star,
//                             color: Colors.yellow
//                         ),
//                         Icon(Icons.star,
//                             color: Colors.yellow
//                         ),
//                         Icon(Icons.star,
//                             color: Colors.yellow
//                         ),
//                       ],
//                     ),
//                 //  doctor name
//                   Text("Dr. Ella",
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Text("Specialty: Surgeon",
//                     style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.lightBlue
//                     ),),
//                   Text("Location: USA",style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                   ),),
//                   Text("Contact: +1234567890",style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                   ),)
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//
//     // return Padding(
//     //   padding: const EdgeInsets.only(left: 25.0),
//     //   child: Container(
//     //     padding: EdgeInsets.all(20),
//     //     decoration: BoxDecoration(
//     //       color: Colors.deepPurple[100],
//     //       borderRadius: BorderRadius.circular(12)
//     //     ),
//     //     child: Row(
//     //       children: [
//     //         //picture of doctor
//     //         ClipRRect(
//     //           borderRadius: BorderRadius.circular(10),
//     //           //insert img as child here
//     //           child: Image.asset(doctorImagePath,
//     //             height: 100,
//     //           )
//     //         ),
//     //
//     //        // Column
//     //         Column(
//     //           children: [
//     //           //  rating out of 5
//     //             Icon(Icons.star,
//     //               color: Colors.yellow[500]
//     //             ),
//     //             Text(doctorRating),
//     //             SizedBox(height: 10,),
//     //           //  Name
//     //             Text(doctorName),
//     //             SizedBox(height: 10,),
//     //
//     //             Text(doctorSpecialization),
//     //             SizedBox(height: 10,),
//     //
//     //             Text(doctorContact),
//     //             SizedBox(height: 10,),
//     //
//     //             Text(doctorLocation),
//     //             SizedBox(height: 10,),
//     //           ],
//     //         )
//     //       ],
//     //
//     //     )
//     //   ),
//     // );
//   }
//
//
//
// }