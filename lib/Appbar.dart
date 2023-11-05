// import 'package:flutter/material.dart';
//
//
//
// class MyAppBar extends StatelessWidget {
//
//   final double barHeight = 66.0;
//
//   const MyAppBar();
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Container(child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Icon(Icons.abc,
//                color: Colors.black,),
//           ),),
//
//           Container(child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               'My Digital Currency',
//               style: TextStyle(
//                   color: Colors.black,
//                   fontFamily: 'Poppins',
//                   fontSize: 20.0
//               ),
//             ),
//
//           ),),
//
//           Container(child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Icon(
//               Icons.abc_outlined, color: Colors.black,),
//           ),),
//
//         ],
//       ),
//     );
//   }
// }
//
//
//
//
//
//
//
//




//
import 'package:flutter/material.dart';
class appbar extends StatelessWidget {
  const appbar({super.key});
  final double barHeight=66.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 100,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black,),
          Padding(
            padding: EdgeInsets.fromLTRB(120, 5, 70, 5),
            child: Text('ladyla', textScaleFactor: 1, style: TextStyle(
                color: Colors.black,
                fontSize: 20, fontWeight: FontWeight.bold
            ),),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications_outlined, color: Colors.black,),
          ),
          Padding(
            padding: EdgeInsets.all(1.0),
            child: Icon(Icons.more_horiz, color: Colors.black,),
          )
        ],
      ),
    );
  }

}
