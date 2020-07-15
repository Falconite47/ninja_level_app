import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Full(),
    ));

//? Statefull Widget | Has dynamic data that can change overtime
class Full extends StatefulWidget {
  @override
  _FullState createState() => _FullState();
}

class _FullState extends State<Full> {

  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        title: Text("Ninja ID Card"),
      ),
      
    
      body: Padding(
        padding: EdgeInsets.fromLTRB(25, 40, 25, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/thumb.jpg"),
                radius: 37.0,
              ),
            ),

            Divider(
              height: 60,
              color: Colors.grey[800],
            ),

            // Name
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 12,
              ),
            ),

            SizedBox(height: 5.0),

            // Chun-Li
            Text(
              "Chun-Li",
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30.0),

            // Current Level
            Text(
              "CURRENT LEVEL",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 12,
              ),
            ),

            SizedBox(height: 15),

            // Level | Dynamic
            Row(
              children: <Widget>[

                Text(
                  "$level",
                  style: TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                  SizedBox(width: 10),

                Row(
                children: <Widget>[
                     SizedBox(
                  width: 50,
                  height: 50,
                  
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 19,
                    ),
                    color: Colors.grey[800],
                    onPressed: () {
                      setState(() {
                        level += 1;
                      });
                    }, 
                  ),
                ),
                ],
              ),

                SizedBox(width:10),

                SizedBox(
                  width: 50,
                  height: 50,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text("-", style: TextStyle(fontSize: 35, color: Colors.white,),),
                    color: Colors.grey[800],
                    onPressed: () {
                      setState(() {
                        level -= 1;
                      });
                    }, 
                  ),
                ),
              ],
              
            ),

            SizedBox(height: 30.0),

            // Icon + Email
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),

                SizedBox(width: 10),

                Text(
                  "ShunLi@gmail.com",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 16,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//? Stateless Widget | Has static data that doesn't change overtime, self inputed.
// class NinjaCard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[900],

//       appBar: AppBar(
//         elevation: 0,
//         centerTitle: true,
//         backgroundColor: Colors.grey[850],
//         title: Text("Ninja ID Card"),
//       ),

//       body: Padding(
//         padding: EdgeInsets.fromLTRB(25, 40, 25, 0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: < Widget > [

//                 Center(
//                   child: CircleAvatar(
//                     backgroundImage: AssetImage("assets/thumb.jpg"),
//                     radius: 37.0,
//                   ),
//                 ),

//                 Divider(
//                   height: 60,
//                   color: Colors.grey[800],
//                 ),

//                 // Name
//                 Text(
//                   "NAME",
//                   style: TextStyle(
//                     color: Colors.grey,
//                     letterSpacing: 2.0,
//                     fontSize: 12,
//                   ),
//                 ),

//                 SizedBox(height: 5.0),

//                 // Chun-Li
//                 Text(
//                   "Chun-Li",
//                   style: TextStyle(
//                     color: Colors.amberAccent,
//                     letterSpacing: 2.0,
//                     fontSize: 28.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),

//                 SizedBox(height: 30.0),

//                 // Current Level
//                 Text(
//                   "CURRENT LEVEL",
//                   style: TextStyle(
//                     color: Colors.grey,
//                     letterSpacing: 2.0,
//                     fontSize: 12,
//                   ),
//                 ),

//                 SizedBox(height: 5.0),

//                 // 8
//                 Text(
//                   "8",
//                   style: TextStyle(
//                     color: Colors.amberAccent,
//                     letterSpacing: 2.0,
//                     fontSize: 28.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),

//                 SizedBox(height: 30.0),

//                // Icon + Email
//                 Row(
//                   children: <Widget>[

//                     Icon(
//                       Icons.email,
//                       color: Colors.grey[400],
//                     ),

//                     SizedBox(width: 10),

//                     Text(
//                       "ShunLi@gmail.com",
//                       style: TextStyle(
//                         color: Colors.grey[400],
//                         fontSize: 16,
//                         letterSpacing: 1,
//                       ),
//                     ),

//                   ],
//                 ),

//           ],
//         ),
//       ),

//     );

//   }

// }
