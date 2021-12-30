import 'package:flutter/material.dart';
import 'package:flutter_app/Screen/drawerpage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class AddTeam extends StatefulWidget {
  const AddTeam({Key? key}) : super(key: key);

  @override
  _AddTeamState createState() => _AddTeamState();
}

class _AddTeamState extends State<AddTeam> {
  List<String> cash = ['JazzCash', 'Bank Account', 'EasyPessa'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: MainDrawerPage(),
      appBar:  PreferredSize(
      preferredSize: Size.fromHeight(70.0),
    child:AppBar(
      backgroundColor: Colors.blue[400],
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Add Team",
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
          ),
        ),
      ),
      ),
      body: Container(
        child: Column(
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
                  hintText: "CNIC",
                  icon: Icon(
                    FontAwesomeIcons.idCard,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
      Center(
        child: Container(
          width: 300,
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
           child: DropdownButton<String>(
            onChanged: (value) {
            },

            // Hide the default underline
            underline: Container(),
            hint: Center(
                child: Text(
                  'Add Payment Method',
                  style: TextStyle(color: Colors.blue),
                )),
            icon: Icon(
              Icons.arrow_downward,
              color: Colors.blue,
            ),
            isExpanded: true,

            items: cash
                .map((e) => DropdownMenuItem(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  e,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              value: e,
            ))
                .toList(),

            // Customize the selected item
            selectedItemBuilder: (BuildContext context) => cash
                .map((e) => Center(
              child: Text(
                e,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.amber,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ))
                .toList(),
          ),
        ),
      ),
        SizedBox(
          height: 25.0,
        ),
            Center(
              child: Container(
                height: 50.0,
                width: 150.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  onPressed: () {},
                  color: Colors.blue,
                  child: Text(
                    "Add Member",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
