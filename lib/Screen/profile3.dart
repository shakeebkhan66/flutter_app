import 'package:flutter/material.dart';

class ProfilePage3 extends StatefulWidget {

  @override
  _ProfilePage3State createState() => _ProfilePage3State();
}

class _ProfilePage3State extends State<ProfilePage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 40.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      gradient: LinearGradient(
                          colors: [
                            Colors.orangeAccent,
                            Colors.amberAccent,
                          ]
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "img/shehzad.png",
                        height: 50,
                      ),

                      Text(
                        "Shehzad Aslam",
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 24.0),
                      ),
                      CircleAvatar(
                          radius: 15.0,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.settings, color: Colors.green, size: 30,)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5.0),
              ListTile(
                title: Text(
                  "+923147896819",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                leading: Icon(Icons.phone_android, color: Colors.green,),
              ),
              SizedBox(height: 3.0),
              ListTile(
                title: Text(
                  "shehzad@gmail.com",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                leading: Icon(Icons.email, color: Colors.green,),
              ),
              SizedBox(height: 3.0),
              ListTile(
                title: Text(
                  "Multan Sher Shah Road",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                leading: Icon(Icons.location_on, color: Colors.green,),
              ),
              SizedBox(height: 10),
              Divider(
                height: 15.0,
                thickness: 3.0,
                color: Colors.amberAccent,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.green,
                ),
                title: Text("Available", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15.0),),
              ),
              SizedBox(height: 6.0),
              ListTile(
                leading: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.yellow,
                ),
                title: Text("Working", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15.0),),
              ),
              SizedBox(height: 6.0),
              ListTile(
                leading: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.red,
                ),
                title: Text("Not Available", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15.0),),
              ),
              SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Ratings",
                      style: TextStyle(color: Colors.amberAccent, fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(Icons.star, color: Colors.green,),
                  Icon(Icons.star, color: Colors.green,),
                  Icon(Icons.star, color: Colors.green,),
                  Icon(Icons.star, color: Colors.green,),
                  Icon(Icons.star, color: Colors.green,),
                ],
              ),
              SizedBox(height: 50),
              MaterialButton(
                minWidth: 200.0,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                onPressed: (){},
                color: Colors.orangeAccent,
                hoverColor: Colors.white70,
                child: Text("ChatBox", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),),
              )
            ],
          )
      ),
    );
  }
}