import 'package:flutter/material.dart';
import 'constants.dart';

void main()
=> runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('Images/Scrum_layout.png'),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 250),
                Padding(
                  padding: const EdgeInsets.only(left:15.0,top: 15),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.only(left: 8,right: 8),
                  child:TextField(
                      keyboardType:
                      TextInputType.emailAddress,
                      textAlign: TextAlign.start,
                      decoration:kInputDecoration.copyWith(hintText: "Email")
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child:TextField(
                      keyboardType:
                      TextInputType.visiblePassword,
                      textAlign: TextAlign.start,
                      obscureText: true,
                      decoration: kInputDecoration.copyWith(hintText: "Password")
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    MaterialButton(
                      onPressed: () {},
                      focusColor: Colors.transparent,
                      child:Text("Forgot Password?",
                          style: TextStyle(
                            fontSize:15,
                            fontWeight: FontWeight.bold,
                            color:Colors.blue,
                          ),
                          textAlign: TextAlign.end),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Center(
                  child: MaterialButton(
                    onPressed: () {},
                    color:Colors.lightBlueAccent.shade700,
                    child:Text(
                      'Sign In',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500
                      ),
                      textAlign:TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}