import 'package:haelo_app/signin_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Haelo App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
          textTheme: TextTheme(
              display1: TextStyle(
                  color: Colors.black12,
                fontWeight: FontWeight.bold
          ),
            button: TextStyle(
              color: Colors.black,
            ),
            headline: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
      ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black
            ),
          ),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}


class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>
        [Expanded(
            flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/logo.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "WELCOME TO HAELO",
                        style: Theme.of(context)
                            .textTheme
                            .display1,
                      ),
                    ],
                  )
                ),
                FittedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context){
                            return SignInScreen();
                            },
                            ));
    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 25),
                      padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black26,
                      ),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "LOGIN/SIGNUP",
                            style: Theme.of(context).textTheme.button.copyWith(
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
