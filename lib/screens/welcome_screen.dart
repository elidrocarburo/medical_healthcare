import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 15),
            Align(alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: (){
               //Navigator.push(context, MaterialPageRoute(
                 // builder: (context) =>
                //));
              },
              child: Text(
                "SKIP",
                style: TextStyle(
                  color: Color(0xFF7165D6),
                  fontSize: 20,
                ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.all(20), 
              child: Image.asset("images/doctors.png"),
              ),
              SizedBox(height: 50),
              Text("Doctors Appointment",
              style: TextStyle(
                color: Color(0xFF7165D6),
                fontSize: 35,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                wordSpacing: 2
              ),
              ),
              SizedBox(height: 10),
              Text("Appoint Your Doctor",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              ),
          ],
        ),
      ),
    );
  }
}