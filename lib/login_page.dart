import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/home_page.dart';

void main() {
  runApp(
      MaterialApp(
          title: 'Food App',
          debugShowCheckedModeBanner: false,
          color: Colors.green,
          home: LoginPage()
      )
  );
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State <LoginPage>{
  var _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body:
             ListView(
               key: _formkey,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 40.0, bottom: 25.0),
                  child: Center(
                    child: Image(image:
                    AssetImage('images/foodlogo.png'),
                        height: 90,
                        fit: BoxFit.contain
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child:Padding(
                    padding: const EdgeInsets.all(30.0),
                  child: Text(
                    'Sign Up Free Account',
                    style: TextStyle(
                      fontSize: 25.0,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: <Widget>[
                    fieldInput(
                        type: 'UserName', texttype: TextInputType.text),
                    fieldInput(
                        type: 'Email', texttype: TextInputType.emailAddress),
                    fieldInput(
                        type: 'Password',
                        texttype: TextInputType.visiblePassword),
                    fieldInput(type: 'Phone', texttype: TextInputType.number)
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20,20, 20,20),

                  child: RaisedButton(
                    color: Colors.deepPurpleAccent[700],
                    padding: EdgeInsets.fromLTRB(20, 12, 20, 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Text(
                      'Sign UP',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      if(_formkey.currentState.validate()){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) { return HomePage();}
                        ),
                      );
                    }},
                    elevation: 0.0,
                  ),
                )
              ],
            )));
  }

  Widget fieldInput({String type, TextInputType texttype}) => Container(
    margin: EdgeInsets.only(left: 20, right: 20, bottom: 17),
    child: Center(
      child: TextFormField(
        validator: (String value) {
           if (value.isEmpty) {
            return 'Please enter the data';
          }
        },
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            borderSide: const BorderSide(color: Colors.grey, width: 0.0),),
          filled: true,
          fillColor: Colors.grey[300],
          contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          labelText: '$type',
          labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
              color: Colors.grey,
              fontSize: 20.0),
          hintText: '$type',
          hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey[500],
            fontSize: 20.0,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
        keyboardType: texttype,
      ),
    ),
  );
}
