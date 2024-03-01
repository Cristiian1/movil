import 'package:flutter/material.dart';
import 'package:psicolbienestar/widgets/formulario_login.dart';
import 'package:psicolbienestar/widgets/logo_container.dart';

class login extends StatefulWidget {
  login({required Key key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: <Color>[
             Color.fromARGB(248, 235, 236, 236),
              Color.fromARGB(199, 4, 120, 222),
            ], begin: Alignment.topCenter),
          ),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 200),
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      IconContainer(
                        url: 'images/logofinal.png',
                      ),
                      // Text(
                      //   'Para fortalecer tu salud mental',
                      //   style: TextStyle(
                      //     fontFamily: 'FredokaOne',
                      //     fontSize: 25.0,
                      //     color: Color.fromARGB(248, 5, 47, 231),
                      //   ),
                      //   textAlign: TextAlign.center,
                      // ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),

                      // formulario
                      LoginForm(
                        key: GlobalKey(),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}




