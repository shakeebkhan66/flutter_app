import 'package:flutter/material.dart';

class InformationPage extends StatefulWidget {
  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {

  String value = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.asset("img/bbq.png",fit: BoxFit.fill,),
                ),
                SizedBox(height: 20.0),

                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Ratings",
                        style: TextStyle(color: Colors.amber, fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(width: 15.0,),
                    Icon(Icons.star, color: Colors.green,),
                    SizedBox(width: 9.0,),
                    Icon(Icons.star, color: Colors.green,),
                    SizedBox(width: 9.0,),
                    Icon(Icons.star, color: Colors.green,),
                    SizedBox(width: 9.0,),
                    Icon(Icons.star, color: Colors.green,),
                    SizedBox(width: 9.0,),
                    Icon(Icons.star, color: Colors.green,),
                  ],
                ),
                SizedBox(height: 15.0),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text(
                    "Address:",
                    style: TextStyle(color: Colors.amber, fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text(
                    "Old Bahawalpur Rd, opposite KFC, Shadman\nColony Gillani Colony, Multan, Punjab 60000",
                    style: TextStyle(color: Colors.white, fontSize: 16,),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text(
                    "Service Options:",
                    style: TextStyle(color: Colors.amber, fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text(
                      "Dine-in · Kerbside pickup · No-contact delivery",
                      style: TextStyle(color: Colors.white, fontSize: 16,)
                  ),
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 5.0),
                        child: Text(
                          "Hours:",
                          style: TextStyle(color: Colors.amber, fontSize: 20, fontWeight: FontWeight.w900),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Open",
                          style: TextStyle(color: Colors.green, fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Closes",
                          style: TextStyle(color: Colors.redAccent, fontSize: 20.0),
                        ),
                      ),
                      DropdownButton(
                        dropdownColor: Colors.amber,
                        iconEnabledColor: Colors.orangeAccent,
                        items: [
                          DropdownMenuItem<String>(
                            value: "12-11:30pm",
                            child: Text("Mon    :  12-11:30pm"),
                          ),
                          DropdownMenuItem<String>(
                            value: "12-11:30pm",
                            child: Text("Tue    :  12-11:30pm"),
                          ),
                          DropdownMenuItem<String>(
                            value: "12-11:30pm",
                            child: Text("Wed    :  12-11:30pm"),
                          ),
                          DropdownMenuItem<String>(
                            value: "12-11:30pm",
                            child: Text("Thu    :  12-11:30pm"),
                          ),
                          DropdownMenuItem<String>(
                            value: "12am-12pm",
                            child: Text("Fri    :  12am-12pm"),
                          ),
                          DropdownMenuItem<String>(
                            value: "12am-12pm",
                            child: Text("Sat    :  12am-12pm"),
                          ),
                          DropdownMenuItem<String>(
                            value: "12am-12pm",
                            child: Text("Sun    :  12am-12pm"),
                          ),
                        ],
                        onChanged: (_value) =>{
                          print(_value.toString()),
                          setState((){
                            value = _value.toString();
                          })
                        },
                        hint: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("Timing", style: TextStyle(color: Colors.orangeAccent, fontSize: 20.0, fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.only(right: 8.0),
                  child: Text(
                    "$value",
                    style: TextStyle(color: Colors.white, fontSize: 20.0, letterSpacing: 2),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(
                        "Phone No:",
                        style: TextStyle(color: Colors.amber, fontSize: 20, fontWeight: FontWeight.w900),
                      ),
                    ),
                    SizedBox(width: 35.0),
                    Container(
                      child: Text(
                        "(061) 4540618",
                        style: TextStyle(color: Colors.white, fontSize: 18,),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.0,),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text(
                    "Health and Safety:",
                    style: TextStyle(color: Colors.amber, fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
                SizedBox(height: 9.0),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text(
                    "1- Reservations required\n2- Mask required.\n3- Temperature check required.\n4- Staff wear masks.\n5- Staff get temperature checks.\n6- Staff required to disinfect surfaces between visits",
                    style: TextStyle(color: Colors.white, fontSize: 16, letterSpacing: 1),
                  ),
                ),
                SizedBox(height: 15.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(top: 10),
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.amber,
                            Colors.orangeAccent,
                          ]
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Text(
                      "Booked Hall",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}