import 'package:flutter/material.dart';
import 'package:flutter_app/Screen/addteam.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'drawerpage.dart';
import 'profile1.dart';
import 'profile2.dart';
import 'profile3.dart';
import 'profile4.dart';
import 'informationpage.dart';

class PlannerPage extends StatefulWidget {
  @override
  _PlannerPageState createState() => _PlannerPageState();
}

class _PlannerPageState extends State<PlannerPage> {

  final LinearGradient _gradient = LinearGradient(
      colors: <Color>[
        Colors.white,
        Colors.blue,
      ]
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(120.0),
              child: AppBar(
                backgroundColor: Colors.blue[400],
                title: Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Text(
                    "THE PLANNER",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.white54,
                            offset: Offset(0, 2),
                            blurRadius: 15,
                          )
                        ]
                    ),
                  ),
                ),
                bottom: TabBar(
                  unselectedLabelColor: Colors.white,
                  labelColor: Colors.black,
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  // indicator: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(50),
                  //   color: Colors.amberAccent
                  // ),
                  tabs: [
                    Tab(
                      text: "D-Board",
                    ),
                    Tab(
                      text: "Halls",
                    ),
                    Tab(
                      text: "Web",
                    ),
                    Tab(
                      text: "Profile",
                    )
                  ],
                ),
              ),
            ),
            drawer: MainDrawerPage(),
            body: TabBarView(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                            Expanded(
                                child:FlatButton(
                                  onPressed: () { },
                                  child:Text(
                                    "Wallet",
                                    style: TextStyle(
                                      fontSize: 15.0
                                    ),
                                  ),

                                ),
                            ),
                              Expanded(
                                child: CircleAvatar(
                                  radius: 20.0,
                                  backgroundColor: Colors.black,
                                ),                            ),
                              Expanded(
                                child:FlatButton(
                                  onPressed: () { },
                                  child:Text(
                                    "Verify",
                                    style: TextStyle(
                                        fontSize: 15.0
                                    ),
                                  ),

                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.all(18.0),
                              child: TextFormField(
                                autofocus: false,
                                onChanged: (value)=> value,
                                decoration: InputDecoration(
                                  hintText: "Name",
                                  icon: Icon(
                                    Icons.account_circle,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(18.0),
                              child: TextFormField(
                                autofocus: false,
                                onChanged: (value)=> value,
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  icon: Icon(
                                    Icons.email,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(18.0),
                              child: TextFormField(
                                autofocus: false,
                                onChanged: (value)=> value,
                                decoration: InputDecoration(
                                  hintText: "Phone",
                                  icon: Icon(
                                    Icons.phone,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(18.0),
                              child: TextFormField(
                                autofocus: false,
                                onChanged: (value)=> value,
                                decoration: InputDecoration(
                                  hintText: "CNIC",
                                  icon: Icon(
                                    FontAwesomeIcons.idCard,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child:GestureDetector(
                                    onTap: () { },

                                    child:Padding(
                                      padding: EdgeInsets.fromLTRB(40.0, 0.0, 30.0, 10.0),
                                      child: Container(
                                        height: 90.0,
                                        width: 20.0,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(13),
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: EdgeInsets.all(15.0),
                                            child: Column(
                                              children: [
                                                Icon(
                                                  Icons.work,
                                                  color: Colors.white,
                                                  size: 30.0,
                                                ),
                                                SizedBox(
                                                  height: 10.0,
                                                ),
                                                Text(
                                                  "My Work",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize: 15.0,
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),



                                  ),
                                ),
                                Expanded(
                                  child:GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                        MaterialPageRoute(builder: (context)=> AddTeam()));
                                    },

                                    child:Padding(
                                      padding: EdgeInsets.fromLTRB(40.0, 0.0, 30.0, 10.0),
                                      child: Container(
                                        height: 90.0,
                                        width: 20.0,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(13),
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: EdgeInsets.all(15.0),
                                            child: Column(
                                              children: [
                                                Icon(
                                                  FontAwesomeIcons.users,
                                                  color: Colors.white,
                                                  size: 30.0,
                                                ),
                                                SizedBox(
                                                  height: 10.0,
                                                ),
                                                Text(
                                                  "Add Team",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize: 15.0,
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),



                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child:GestureDetector(
                                    onTap: () { },

                                    child:Padding(
                                      padding: EdgeInsets.fromLTRB(40.0, 0.0, 30.0, 10.0),
                                      child: Container(
                                        height: 90.0,
                                        width: 20.0,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(13),
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: EdgeInsets.all(15.0),
                                            child: Column(
                                              children: [
                                                Icon(
                                                  FontAwesomeIcons.users,
                                                  color: Colors.white,
                                                  size: 30.0,
                                                ),
                                                SizedBox(
                                                  height: 10.0,
                                                ),
                                                Text(
                                                  "Team List",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize: 15.0,
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),



                                  ),
                                ),
                                Expanded(
                                  child:GestureDetector(
                                    onTap: () { },

                                    child:Padding(
                                      padding: EdgeInsets.fromLTRB(40.0, 0.0, 30.0, 10.0),
                                      child: Container(
                                        height: 90.0,
                                        width: 20.0,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(13),
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: EdgeInsets.all(15.0),
                                            child: Column(
                                              children: [
                                                Icon(
                                                  FontAwesomeIcons.facebookMessenger,
                                                  color: Colors.white,
                                                  size: 30.0,
                                                ),
                                                SizedBox(
                                                  height: 10.0,
                                                ),
                                                Text(
                                                  "Chat",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize: 15.0,
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),



                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        SizedBox(height: 14.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14.0),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Search By City",
                                hintStyle: TextStyle(color: Colors.white, fontSize: 16.0),
                                prefixIcon: Icon(Icons.search, color: Colors.white,),
                                fillColor: Colors.blueGrey,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14.0),
                                  borderSide: BorderSide.none,
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: 14.0),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> InformationPage()));
                              },
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                    // child: Image.asset("img/bbq.png", height: 140,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 110, left: 16),
                                    child: Text(
                                      "Shangrila BBQ",
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 20, letterSpacing: 3.0, backgroundColor: Colors.deepPurple),

                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 8.0),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> InformationPage()));
                              },
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                    // child: Image.asset("img/sindbad.png", height: 140,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 110, left: 16),
                                    child: Text(
                                      "Sindbad Hotel",
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 20, letterSpacing: 3.0, backgroundColor: Colors.deepPurple),

                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 8.0),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> InformationPage()));
                              },
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                    // child: Image.asset("img/shahtaj.png", height: 140,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 110, left: 16),
                                    child: Text(
                                      "Shahtaj Banquet",
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 20, letterSpacing: 3.0, backgroundColor: Colors.deepPurple),

                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 8.0),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> InformationPage()));
                              },
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                    // child: Image.asset("img/sindbad.png", height: 140,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 110, left: 16),
                                    child: Text(
                                      "Shangrila Cuisine",
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 20, letterSpacing: 3.0, backgroundColor: Colors.deepPurple),

                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 8.0),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> InformationPage()));
                              },
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                    // child: Image.asset("img/rama.png", height: 140,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 110, left: 16),
                                    child: Text(
                                      "Al Arafat",
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 20, letterSpacing: 3.0, backgroundColor: Colors.deepPurple),

                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: <Widget>[
                            // Image(image: AssetImage("img/barcode.png")),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.check_box, color: Colors.white,
                          ),
                          SizedBox(width: 8.0),
                          Container(
                            padding: EdgeInsets.only(right: 15.0),
                            alignment: Alignment.topRight,
                            child: Text(
                              "Keep me signed in",
                              style: TextStyle(color: Colors.green, fontSize: 14.0),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Container(
                            padding: EdgeInsets.only(right: 0.0),
                            alignment: Alignment.topRight,
                            child: Text(
                              "Need help to get started?",
                              style: TextStyle(color: Colors.white, fontSize: 14.0),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 5, top: 30),
                        child: Text(
                          "To Use this Application on your PC",
                          style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 5, top: 10.0),
                        child: Text(
                          "1- Open This Application on your Mobile",
                          style: TextStyle(color: Colors.amber, fontSize: 16.0),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 5, top: 5),
                        child: Text(
                          "2- Tap Menu or Settings",
                          style: TextStyle(color: Colors.amber, fontSize: 16.0),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 5, top: 5),
                        child: Text(
                          "3- Point Your Phone To This Screen to Capture\nthe Code",
                          style: TextStyle(color: Colors.amber, fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: 17.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Search By City",
                              hintStyle: TextStyle(color: Colors.white, fontSize: 16.0),
                              prefixIcon: Icon(Icons.search, color: Colors.white,),
                              fillColor: Colors.blueGrey,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14.0),
                                borderSide: BorderSide.none,
                              )
                          ),
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 14),
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context)=> ProfilePage1()));
                                },
                                child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                                    decoration: BoxDecoration(

                                      color: Colors.amber,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.amberAccent,
                                          spreadRadius: 1,
                                          blurRadius: 10,
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(14.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        // Image.asset("img/mani.png", height: 50,),
                                        Text(
                                          "Abdul Manan",
                                          style: TextStyle(color: Colors.black87, fontSize: 18.0, fontWeight: FontWeight.bold),
                                        ),
                                        Icon(Icons.chat, color: Colors.green,),
                                      ],
                                    )
                                ),
                              ),
                            ),
                            SizedBox(height: 6.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 14),
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfilePage2()));
                                },
                                child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                                    decoration: BoxDecoration(
                                      color: Colors.amber,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.amberAccent,
                                          spreadRadius: 1,
                                          blurRadius: 10,
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(14.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        // Image.asset(
                                        //   "img/shakeeb.png",
                                        //   height: 50,
                                        // ),

                                        Text(
                                          "Shakeeb Khan",
                                          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18.0),
                                        ),
                                        Icon(Icons.chat, color: Colors.green,),
                                      ],
                                    )
                                ),
                              ),
                            ),
                            SizedBox(height: 6.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 14),
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfilePage3()));
                                },
                                child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                                    decoration: BoxDecoration(
                                      color: Colors.amber,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.amberAccent,
                                          spreadRadius: 1,
                                          blurRadius: 10,
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(14.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        // Image.asset("img/shehzad.png", height: 50,),
                                        Text(
                                          "Shehzad Aslam",
                                          style: TextStyle(color: Colors.black87, fontSize: 18.0, fontWeight: FontWeight.bold),
                                        ),
                                        Icon(Icons.chat, color: Colors.green,),
                                      ],
                                    )
                                ),
                              ),
                            ),
                            SizedBox(height: 6.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 14),
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfilePage4()));
                                },
                                child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                                    decoration: BoxDecoration(

                                      color: Colors.amber,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.amberAccent,
                                          spreadRadius: 1,
                                          blurRadius: 10,
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(14.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        // Image.asset("img/mani.png", height: 50,),
                                        Text(
                                          "Abdul Manan",
                                          style: TextStyle(color: Colors.black87, fontSize: 18.0, fontWeight: FontWeight.bold),
                                        ),
                                        Icon(Icons.chat, color: Colors.green,),
                                      ],
                                    )
                                ),
                              ),
                            ),
                            SizedBox(height: 6.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 14),
                              child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.amberAccent,
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Image.asset(
                                      //   "img/shakeeb.png",
                                      //   height: 50,
                                      // ),

                                      Text(
                                        "Shakeeb Khan",
                                        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18.0),
                                      ),
                                      Icon(Icons.chat, color: Colors.green,),
                                    ],
                                  )
                              ),
                            ),
                            SizedBox(height: 6.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 14),
                              child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.amberAccent,
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Image.asset("img/shehzad.png", height: 50,),
                                      Text(
                                        "Shehzad Aslam",
                                        style: TextStyle(color: Colors.black87, fontSize: 18.0, fontWeight: FontWeight.bold),
                                      ),
                                      Icon(Icons.chat, color: Colors.green,),
                                    ],
                                  )
                              ),
                            ),
                            SizedBox(height: 6.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 14),
                              child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                                  decoration: BoxDecoration(

                                    color: Colors.amber,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.amberAccent,
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Image.asset("img/mani.png", height: 50,),
                                      Text(
                                        "Abdul Manan",
                                        style: TextStyle(color: Colors.black87, fontSize: 18.0, fontWeight: FontWeight.bold),
                                      ),
                                      Icon(Icons.chat, color: Colors.green,),
                                    ],
                                  )
                              ),
                            ),
                            SizedBox(height: 6.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 14),
                              child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.amberAccent,
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Image.asset(
                                      //   "img/shakeeb.png",
                                      //   height: 50,
                                      // ),

                                      Text(
                                        "Shakeeb Khan",
                                        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18.0),
                                      ),
                                      Icon(Icons.chat, color: Colors.green,),
                                    ],
                                  )
                              ),
                            ),
                            SizedBox(height: 6.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 14),
                              child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.amberAccent,
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Image.asset("img/shehzad.png", height: 50,),
                                      Text(
                                        "Shehzad Aslam",
                                        style: TextStyle(color: Colors.black87, fontSize: 18.0, fontWeight: FontWeight.bold),
                                      ),
                                      Icon(Icons.chat, color: Colors.green,),
                                    ],
                                  )
                              ),
                            ),
                            SizedBox(height: 6.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 14),
                              child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                                  decoration: BoxDecoration(

                                    color: Colors.amber,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.amberAccent,
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Image.asset("img/mani.png", height: 50,),
                                      Text(
                                        "Abdul Manan",
                                        style: TextStyle(color: Colors.black87, fontSize: 18.0, fontWeight: FontWeight.bold),
                                      ),
                                      Icon(Icons.chat, color: Colors.green,),
                                    ],
                                  )
                              ),
                            ),
                            SizedBox(height: 6.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 14),
                              child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.amberAccent,
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Image.asset(
                                      //   "img/shakeeb.png",
                                      //   height: 50,
                                      // ),

                                      Text(
                                        "Shakeeb Khan",
                                        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18.0),
                                      ),
                                      Icon(Icons.chat, color: Colors.green,),
                                    ],
                                  )
                              ),
                            ),
                            SizedBox(height: 6.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 14),
                              child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.amberAccent,
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Image.asset("img/shehzad.png", height: 50,),
                                      Text(
                                        "Shehzad Aslam",
                                        style: TextStyle(color: Colors.black87, fontSize: 18.0, fontWeight: FontWeight.bold),
                                      ),
                                      Icon(Icons.chat, color: Colors.green,),
                                    ],
                                  )
                              ),
                            ),
                            SizedBox(height: 6.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 14),
                              child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                                  decoration: BoxDecoration(

                                    color: Colors.amber,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.amberAccent,
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Image.asset("img/mani.png", height: 50,),
                                      Text(
                                        "Abdul Manan",
                                        style: TextStyle(color: Colors.black87, fontSize: 18.0, fontWeight: FontWeight.bold),
                                      ),
                                      Icon(Icons.chat, color: Colors.green,),
                                    ],
                                  )
                              ),
                            ),
                            SizedBox(height: 6.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 14),
                              child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.amberAccent,
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Image.asset(
                                      //   "img/shakeeb.png",
                                      //   height: 50,
                                      // ),

                                      Text(
                                        "Shakeeb Khan",
                                        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 18.0),
                                      ),
                                      Icon(Icons.chat, color: Colors.green,),
                                    ],
                                  )
                              ),
                            ),
                            SizedBox(height: 6.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 14),
                              child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.amberAccent,
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Image.asset("img/shehzad.png", height: 50,),
                                      Text(
                                        "Shehzad Aslam",
                                        style: TextStyle(color: Colors.black87, fontSize: 18.0, fontWeight: FontWeight.bold),
                                      ),
                                      Icon(Icons.chat, color: Colors.green,),
                                    ],
                                  )
                              ),
                            ),
                            SizedBox(height: 6.0),
                          ]
                      ),
                    ],
                  ),
                ]
            )
        ),
      ),
    );
  }

}