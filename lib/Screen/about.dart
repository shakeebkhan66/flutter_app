
import 'package:flutter/material.dart';
import 'package:flutter_app/Screen/theplanner.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> redirectTo() async {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) {
            return PlannerPage();
          }));
      return true;
    }
    return WillPopScope(
      onWillPop: redirectTo,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xfff8f8f8),
          title: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xff746bc9),
              size: 35,
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (ctx) => PlannerPage()));
            },
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 27),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About",
                style: TextStyle(
                  fontSize: 40,
                  color: Color(0xff746bc9),
                ),
              ),
              Image(
                image: AssetImage("images/party.jpg"),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 280,
                width: 360,
                child: Wrap(
                  children: [
                    Text(
                      "The Planner App, by using this app you can get our services to arrange parties, functions or so many things",
                      style: TextStyle(fontSize: 22, color: Colors.black87),
                    ),
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}