import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learnx/Quotes.dart';
import 'package:learnx/QuotesCard.dart';

import 'Quotes.dart';
Color? backgroundx = Colors.blue;
Color? background1 = Colors.green;
Color? black = Colors.black;
Color? white = Colors.white;

class ExampleHome extends StatelessWidget {
  const ExampleHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "My Profile",
            style: TextStyle(fontSize: 15.0),
            textDirection: TextDirection.rtl,
          ),
          centerTitle: true,
          backgroundColor: backgroundx),
      body: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            shadowColor: backgroundx,
            color: Colors.white,
            child: ListTile(
              dense: true,
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/me.jpg"),
              ),
              title: Text(
                "Onwuka Daniel",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              subtitle: Text(
                  "onwukadaniel@gmail.com\nFederal University of Technology, Akure"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
                child: Text("General"),
              ),
            ],
          ), //TODO General
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            shadowColor: backgroundx,
            elevation: 5.0,
            color: white,
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: ListTile(
                dense: true,
                leading: Icon(Icons.person, color: backgroundx),
                title: Text("Edit Profile", style: TextStyle(color: black)),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            shadowColor: backgroundx,
            elevation: 5.0,
            color: white,
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: ListTile(
                dense: true,
                leading: Icon(Icons.badge, color: backgroundx),
                title: Text("Badges", style: TextStyle(color: black)),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            shadowColor: backgroundx,
            elevation: 5.0,
            color: white,
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: ListTile(
                dense: true,
                leading: Icon(Icons.add, color: backgroundx),
                title: Text("Study Goals", style: TextStyle(color: black)),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            shadowColor: backgroundx,
            elevation: 5.0,
            color: white,
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: ListTile(
                dense: true,
                leading: Icon(Icons.notifications_off, color: backgroundx),
                title: Text("Focus Mode", style: TextStyle(color: black)),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            shadowColor: backgroundx,
            elevation: 5.0,
            color: white,
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: ListTile(
                dense: true,
                leading: Icon(Icons.assistant_direction, color: backgroundx),
                title: Text("School Schedule", style: TextStyle(color: black)),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            shadowColor: backgroundx,
            elevation: 5.0,
            color: white,
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: ListTile(
                dense: true,
                leading: Icon(Icons.people, color: backgroundx),
                title: Text("Invite Friends", style: TextStyle(color: black)),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Center(
          child: Text(
            "+",
          ),
        ),
        backgroundColor: backgroundx,
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "More x",
            style: TextStyle(color: white, fontSize: 18),
          ),
          backgroundColor: background1,
          centerTitle: true),
      body: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.amber,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    height: 50,
                    alignment: Alignment.center,
                    color: Colors.white,
                    child: Text("Example 1"),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    height: 50,
                    alignment: Alignment.center,
                    color: Colors.blueGrey,
                    child: Text("Example 2"),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    height: 50,
                    color: Colors.indigo,
                    alignment: Alignment.center,
                    child: Text("Example 3"),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

double standardSizedBox = 10.0;

class AccountSettings extends StatefulWidget {
  const AccountSettings({Key? key}) : super(key: key);

  @override
  _AccountSettingsState createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  int level = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        centerTitle: true,
        title: Text(
          "Account",
          style: TextStyle(color: white, fontSize: 16.0, letterSpacing: 1),
        ),
        elevation: 0.0,
      ),
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: standardSizedBox),
            Center(
              child: CircleAvatar(
                  backgroundImage: AssetImage("assets/me.jpg"), radius: 50),
            ),
            Divider(height: 50, color: Colors.grey),
            Text("Full name",
                style: TextStyle(
                    color: Colors.grey[200], letterSpacing: 2, fontSize: 16)),
            SizedBox(height: standardSizedBox),
            Text("Onwuka Daniel Ifeanyi",
                style: TextStyle(
                    color: Colors.amber, letterSpacing: 2, fontSize: 18)),
            SizedBox(height: standardSizedBox),
            Text("User name",
                style: TextStyle(
                    color: Colors.grey[200], letterSpacing: 2, fontSize: 16)),
            SizedBox(height: standardSizedBox),
            Text("Azure Hd",
                style: TextStyle(
                    color: Colors.amber, letterSpacing: 2, fontSize: 18)),
            SizedBox(height: standardSizedBox),
            Row(
              children: [
                Icon(Icons.email, color: Colors.grey[200]),
                SizedBox(width: standardSizedBox),
                Text("onwukadaniel@gmail.com",
                    style: TextStyle(
                        color: Colors.amber, letterSpacing: 2, fontSize: 16)),
              ],
            ),
            SizedBox(height: standardSizedBox),
            Row(
              children: [
                Icon(Icons.phone, color: Colors.grey[200]),
                SizedBox(width: standardSizedBox),
                Text("+2347019292046",
                    style: TextStyle(
                        color: Colors.amber, letterSpacing: 2, fontSize: 16)),
              ],
            ),
            SizedBox(height: standardSizedBox),
            Row(
              children: [
                Text("Sex",
                    style: TextStyle(
                        color: Colors.grey[200],
                        letterSpacing: 2,
                        fontSize: 16)),
                SizedBox(width: standardSizedBox),
                Text("Male",
                    style: TextStyle(
                        color: Colors.amber, letterSpacing: 2, fontSize: 18)),
              ],
            ),
            SizedBox(height: standardSizedBox),
            Row(
              children: [
                Text("Level", style: TextStyle(color: Colors.grey[200])),
                SizedBox(width: 20),
                Text("$level", style: TextStyle(color: Colors.grey[200]))
              ],
            ),
            SizedBox(height: standardSizedBox),
            Row(
              children: [
                ElevatedButton.icon(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        level += 100;
                      });
                    },
                    label: Text("Add 100")),
              ],
            ),
            SizedBox(height: standardSizedBox),
          ],
        ),
      ),
    );
  }
}

class TextList extends StatefulWidget {
  const TextList({Key? key}) : super(key: key);

  @override
  _TextListState createState() => _TextListState();
}

class _TextListState extends State<TextList> {
  List<Quote> quote = [
    Quote(
        quote: 'You only got one life, others are taken',
        author: 'Net Ninja',
        date: '20:11:2021'),
    Quote(
        quote:
        'When the purpose of something is not known, abuse is inevitable',
        author: 'Anonymous',
        date: '02:01:2021'),
    Quote(
        quote: 'Remember to love your love your self and your thoughts',
        author: 'Onwuka Daniel',
        date: '12:02:2020')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          leading: Icon(Icons.home), title: Text("Quotes"), centerTitle: true),
      body: Column(
        children: quote.map((e) => QuotesCard(quote: e, delete: (){
          setState(() {
            print("**************************");
            quote.remove(e);
          });
        },)).toList(),
      ),
    );
  }
}
