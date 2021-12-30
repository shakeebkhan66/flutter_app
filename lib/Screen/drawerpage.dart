import 'package:flutter/material.dart';
import 'package:flutter_app/Screen/about.dart';
import 'package:flutter_app/Screen/theplanner.dart';

class MainDrawerPage extends StatefulWidget {

  @override
  _MainDrawerPageState createState() => _MainDrawerPageState();
}

class _MainDrawerPageState extends State<MainDrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            accountName: Text(
              "Abdul Manan",
              style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            accountEmail: Text(
              "manirao@gmail.com",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 50,
              child: Text(
                "S",
                style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.green,),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (ctx)=> PlannerPage()));
            },
            title: Text(
              "Home",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          ListTile(
            leading: Icon(Icons.lock, color: Colors.blue),
            title: Text(
              "About",
              style: TextStyle(fontSize: 16.0),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (ctx)=> About()));
            },
          ),
          ListTile(
            leading: Icon(Icons.star, color: Colors.amber,),
            title: Text(
              "Rating",
              style: TextStyle(fontSize: 16.0,),
            ),
            onTap: (){},
          ),
          SizedBox(height: 20.0),
          Divider(
            thickness: 2.0,
            color: Colors.amber,
          ),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.red,),
            title: Text(
              "Logout",
              style: TextStyle(fontSize: 16.0),
            ),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}