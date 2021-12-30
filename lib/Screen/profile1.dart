import 'package:flutter/material.dart';

class ProfilePage1 extends StatefulWidget {

  @override
  _ProfilePage1State createState() => _ProfilePage1State();
}

class _ProfilePage1State extends State<ProfilePage1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.blue,
                Colors.white,
              ],
            ),
          ),
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
                                Colors.white,
                                Colors.white,
                              ]
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Image.asset(
                          //   "img/mani.png",
                          //   height: 50,
                          // ),

                          CircleAvatar(
                              radius: 15.0,
                              backgroundColor: Colors.white,
                             ),
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
                      "manirao@gmail.com",
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    leading: Icon(Icons.email, color: Colors.green,),
                  ),
                  SizedBox(height: 3.0),
                  ListTile(
                    title: Text(
                      "Karam Pur Mailsi Road",
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
                    color: Colors.blue,
                    hoverColor: Colors.white70,
                    child: Text("ChatBox", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),),
                  )
                ],
              )
          ),
    );
  }
}