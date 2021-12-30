import 'package:flutter/material.dart';
import 'package:flutter_app/auth/hall_manager_login.dart';
import 'package:flutter_app/auth/login.dart';
import 'package:flutter_app/auth/user_login.dart';
import 'package:flutter_app/colors/colors.dart';

class OpenWelcomeScreen extends StatelessWidget {
  const OpenWelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
          child: ListView(
            children: [
              SizedBox(height: 25),
              Center(
                child: Text(
                    "The Planner",
                    textScaleFactor: 1.0,
                    style: TextStyle(color: AppColors.eigengrauColor, fontSize: 30, fontWeight: FontWeight.w800, letterSpacing: 1.0)),

              ),
              SizedBox(height: 10),
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 350,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/party.jpg"),
                      ),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(500), bottomRight: Radius.circular(700))
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                    "Select User Type",
                    textScaleFactor: 1.3,
                    style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600)),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 65),
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.eigengrauColor
                  ),
                  child: ListTile(
                    title: Text(
                      "Organizer",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                      textScaleFactor: 1.0,
                    ),
                    leading: Icon(Icons.face,color: Colors.white,),
                  ),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> UserLogin()));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 65),
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber,
                  ),
                  child: ListTile(
                    title: Text(
                      "User",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                      textScaleFactor: 1.0,
                    ),
                    leading: Icon(Icons.face,color: Colors.black,),
                  ),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HallManagerLogin()));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 65),
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.coralColor,
                  ),
                  child: ListTile(
                    title: Text(
                      "Hall Manager",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                      textScaleFactor: 1.0,
                    ),
                    leading: Icon(Icons.face,color: Colors.black,),
                  ),
                ),
              ),

            ],
          )
      ),
    );
  }
}