
import 'package:dangnhapdoimautwo/model/students.dart';
import 'package:dangnhapdoimautwo/screen/login.dart';
import 'package:dangnhapdoimautwo/screen/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(new FormValidation());

class FormValidation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create:(ctx) => Students()
        ),
      ],
      child: new MaterialApp(
        title: "Form validation",
        home: LoginScreen(),
        routes: {
          SecondScreen .routeName:(context) =>  SecondScreen ()
        },
      ),
    );
  }
}

